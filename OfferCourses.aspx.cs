using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class OfferCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSemesters();
            LoadCourseList();
        }
    }

    protected void LoadSemesters()
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT Semester FROM Courses", connection);
            SqlDataReader reader = cmd.ExecuteReader();

            ddlSemester.DataSource = reader;
            ddlSemester.DataTextField = "Semester";
            ddlSemester.DataValueField = "Semester";
            ddlSemester.DataBind();

            reader.Close();
        }
    }

    protected void ddlSemester_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedSemester = Convert.ToInt32(ddlSemester.SelectedValue);
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT CourseID, CourseName, Semester, CreditHours FROM Courses WHERE Semester = @Semester", connection);
            cmd.Parameters.AddWithValue("@Semester", selectedSemester);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dtCourses = new DataTable();
            adapter.Fill(dtCourses);

            gvCourses.DataSource = dtCourses;
            gvCourses.DataBind();
        }
    }

    protected void LoadCourseList()
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT CourseID, CourseName, Semester, CreditHours FROM Courses", connection);
            SqlDataReader reader = cmd.ExecuteReader();

            gvCourses.DataSource = reader;
            gvCourses.DataBind();

            reader.Close();
        }
    }

    protected void btnAddCourse_Click(object sender, EventArgs e)
    {
        string courseID = txtCourseID.Text;
        string courseName = txtCourseName.Text;
        int semester = Convert.ToInt32(txtSemesterNumber.Text);
        int creditHours = Convert.ToInt32(CreditHour.Text);

        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours) VALUES (@CourseID, @CourseName, @Semester, @CreditHours)", connection);
            cmd.Parameters.AddWithValue("@CourseID", courseID);
            cmd.Parameters.AddWithValue("@CourseName", courseName);
            cmd.Parameters.AddWithValue("@Semester", semester);
            cmd.Parameters.AddWithValue("@CreditHours", creditHours);

            cmd.ExecuteNonQuery();
        }

        LoadCourseList();
    }

    protected void btnSaveCourse_Click(object sender, EventArgs e)
    {
        string script = "alert('Courses have been offered to students.');";
        ClientScript.RegisterStartupScript(this.GetType(), "OfferedCoursesPopup", script, true);
    }

    private void SaveCourse(string courseID, string courseName, int semester, int creditHours)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours) VALUES (@CourseID, @CourseName, @Semester, @CreditHours)", connection);
            cmd.Parameters.AddWithValue("@CourseID", courseID);
            cmd.Parameters.AddWithValue("@CourseName", courseName);
            cmd.Parameters.AddWithValue("@Semester", semester);
            cmd.Parameters.AddWithValue("@CreditHours", creditHours);

            cmd.ExecuteNonQuery();
        }
    }

    protected void gvCourses_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lnkRemove = (LinkButton)e.Row.FindControl("lnkRemove");
            lnkRemove.OnClientClick = "return confirm('Are you sure you want to remove this course?');";
        }
    }

    protected void gvCourses_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "RemoveCourse")
        {
            int courseID = Convert.ToInt32(e.CommandArgument);
            RemoveCourse(courseID);
            LoadCourseList();
        }
    }

    protected void RemoveCourse(int courseID)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"))
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Courses WHERE CourseID = @CourseID", connection);
            cmd.Parameters.AddWithValue("@CourseID", courseID);

            cmd.ExecuteNonQuery();
        }
    }
}



