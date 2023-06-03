using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class MakeSections : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSemesters();
        }
    }


    protected void LoadSemesters()
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT Semester FROM Students", connection);
            SqlDataReader reader = cmd.ExecuteReader();

            ddlSemester.DataSource = reader;
            ddlSemester.DataTextField = "Semester";
            ddlSemester.DataValueField = "Semester";
            ddlSemester.DataBind();

            reader.Close();
        }
    }

    protected void btnReturnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }


    protected void LoadStudentList()
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT StudentID, StudentName, Semester, Section FROM Students", connection);
            SqlDataReader reader = cmd.ExecuteReader();

            gvCourses.DataSource = reader;
            gvCourses.DataBind();

            reader.Close();
        }
    }

    protected void ddlSemester_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedSemester = Convert.ToInt32(ddlSemester.SelectedValue);
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT StudentID, StudentName, Semester, Section FROM Students WHERE Semester = @Semester", connection);
            cmd.Parameters.AddWithValue("@Semester", selectedSemester);

            SqlDataReader reader = cmd.ExecuteReader();

            gvCourses.DataSource = reader;
            gvCourses.DataBind();

            reader.Close();
        }
    }

    protected void btnAssignSections_Click(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();

            // Retrieve the student list for the selected semester
            SqlCommand cmd = new SqlCommand("SELECT StudentID FROM Students WHERE Semester = @Semester", connection);
            cmd.Parameters.AddWithValue("@Semester", ddlSemester.SelectedValue);

            SqlDataReader reader = cmd.ExecuteReader();
            DataTable studentTable = new DataTable();
            studentTable.Load(reader);

            reader.Close();

            // Calculate the number of students and sections needed
            int studentCount = studentTable.Rows.Count;
            int sectionCount = (int)Math.Ceiling((double)studentCount / 50);

            // Assign students to sections
            int sectionNumber = 1;
            foreach (DataRow row in studentTable.Rows)
            {
                int studentID = Convert.ToInt32(row["StudentID"]);

                cmd = new SqlCommand("UPDATE Students SET Section = @Section WHERE StudentID = @StudentID", connection);
                cmd.Parameters.AddWithValue("@Section", GetSectionName(sectionNumber));
                cmd.Parameters.AddWithValue("@StudentID", studentID);
                cmd.ExecuteNonQuery();

                // Increment section number
                sectionNumber++;
                // Check if the maximum number of students per section has been reached
                if (sectionNumber > sectionCount)
                    sectionNumber = sectionCount;
            }

            // Refresh the student list to display the assigned sections
            LoadStudentList();
        }

    }

    protected string GetSectionName(int sectionNumber)
    {
        // Convert section number to corresponding section name (A, B, C, etc.)
        char sectionName = (char)('A' + sectionNumber - 1);
        return sectionName.ToString();
    }
}
