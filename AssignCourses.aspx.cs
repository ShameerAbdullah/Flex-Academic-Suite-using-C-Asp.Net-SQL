using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class AssignCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCourseList();
        }
    }

    protected void BindCourseList()
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";
        string query = "SELECT CourseID, CourseName, CreditHours, Section, Instructor, Coordinator FROM CourseEnrollment";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            gvCourses.DataSource = dataTable;
            gvCourses.DataBind();
        }
    }

    protected void btnAssignCourses_Click(object sender, EventArgs e)
    {
        List<string> selectedCourses = new List<string>();

        foreach (GridViewRow row in gvCourses.Rows)
        {
            CheckBox chkCourse = (CheckBox)row.FindControl("chkCourse");
            if (chkCourse.Checked)
            {
                string courseID = gvCourses.DataKeys[row.RowIndex].Value.ToString();
                selectedCourses.Add(courseID);
            }
        }

        // Assign courses to teachers and save in CourseAllocation table
        AssignCoursesToTeachers(selectedCourses);

        // Optionally, you can redirect the user to another page after the courses are assigned
        Response.Redirect("AssignedCourses.aspx");
    }

    protected void AssignCoursesToTeachers(List<string> courseIDs)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            foreach (string courseID in courseIDs)
            {
                // Fetch available teachers who can be assigned the course
                string teacherQuery = "SELECT TeacherID, TeacherName FROM Teachers WHERE AssignedCourses < 3";
                SqlCommand teacherCommand = new SqlCommand(teacherQuery, connection);
                SqlDataAdapter teacherAdapter = new SqlDataAdapter(teacherCommand);
                DataTable teacherTable = new DataTable();
                teacherAdapter.Fill(teacherTable);

                if (teacherTable.Rows.Count > 0)
                {
                    // Randomly select a teacher from the available list
                    Random random = new Random();
                    int teacherIndex = random.Next(teacherTable.Rows.Count);
                    DataRow teacherRow = teacherTable.Rows[teacherIndex];
                    int teacherID = Convert.ToInt32(teacherRow["TeacherID"]);
                    string teacherName = teacherRow["TeacherName"].ToString();

                    // Update the teacher's assigned courses count
                    string updateTeacherQuery = "UPDATE Teachers SET AssignedCourses = AssignedCourses + 1 WHERE TeacherID = @TeacherID";
                    SqlCommand updateTeacherCommand = new SqlCommand(updateTeacherQuery, connection);
                    updateTeacherCommand.Parameters.AddWithValue("@TeacherID", teacherID);
                    updateTeacherCommand.ExecuteNonQuery();

                    // Insert the course allocation record in CourseAllocation table
                    string insertQuery = "INSERT INTO CourseAllocation (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator) " +
                                         "SELECT CourseID, CourseName, CreditHours, Section, @TeacherName, NULL FROM CourseEnrollment WHERE CourseID = @CourseID";
                    SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
                    insertCommand.Parameters.AddWithValue("@TeacherName", teacherName);
                    insertCommand.Parameters.AddWithValue("@CourseID", courseID);
                    insertCommand.ExecuteNonQuery();

                    // Update the
                    string updateCourseEnrollmentQuery = "UPDATE CourseEnrollment SET Instructor = @TeacherName WHERE CourseID = @CourseID";
                    SqlCommand updateCourseEnrollmentCommand = new SqlCommand(updateCourseEnrollmentQuery, connection);
                    updateCourseEnrollmentCommand.Parameters.AddWithValue("@TeacherName", teacherName);
                    updateCourseEnrollmentCommand.Parameters.AddWithValue("@CourseID", courseID);
                    updateCourseEnrollmentCommand.ExecuteNonQuery();

                    // Select a coordinator for the course
                    SelectCoordinatorForCourse(connection, courseID);
                }
            }
        }
    }

    protected void SelectCoordinatorForCourse(SqlConnection connection, string courseID)
    {
        // Fetch available coordinators who can be assigned to the course
        string coordinatorQuery = "SELECT TeacherID, TeacherName FROM Teachers WHERE CoordinatorCourses < 1";
        SqlCommand coordinatorCommand = new SqlCommand(coordinatorQuery, connection);
        SqlDataAdapter coordinatorAdapter = new SqlDataAdapter(coordinatorCommand);
        DataTable coordinatorTable = new DataTable();
        coordinatorAdapter.Fill(coordinatorTable);

        if (coordinatorTable.Rows.Count > 0)
        {
            // Randomly select a coordinator from the available list
            Random random = new Random();
            int coordinatorIndex = random.Next(coordinatorTable.Rows.Count);
            DataRow coordinatorRow = coordinatorTable.Rows[coordinatorIndex];
            int coordinatorID = Convert.ToInt32(coordinatorRow["TeacherID"]);
            string coordinatorName = coordinatorRow["TeacherName"].ToString();

            // Update the coordinator's assigned courses count
            string updateCoordinatorQuery = "UPDATE Teachers SET CoordinatorCourses = CoordinatorCourses + 1 WHERE TeacherID = @CoordinatorID";
            SqlCommand updateCoordinatorCommand = new SqlCommand(updateCoordinatorQuery, connection);
            updateCoordinatorCommand.Parameters.AddWithValue("@CoordinatorID", coordinatorID);
            updateCoordinatorCommand.ExecuteNonQuery();

            // Update the Coordinator column in CourseEnrollment table
            string updateCourseEnrollmentQuery = "UPDATE CourseEnrollment SET Coordinator = @CoordinatorName WHERE CourseID = @CourseID";
            SqlCommand updateCourseEnrollmentCommand = new SqlCommand(updateCourseEnrollmentQuery, connection);
            updateCourseEnrollmentCommand.Parameters.AddWithValue("@CoordinatorName", coordinatorName);
            updateCourseEnrollmentCommand.Parameters.AddWithValue("@CourseID", courseID);
            updateCourseEnrollmentCommand.ExecuteNonQuery();
        }
    }

}
