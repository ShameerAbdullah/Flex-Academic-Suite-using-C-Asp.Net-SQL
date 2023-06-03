using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class CoursesPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCourses();
        }
    }

    protected void BindCourses()
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();
        string query = "SELECT C.CourseName, T.Name AS TeacherName FROM Courses1 C INNER JOIN Teachers T ON C.TeacherID = T.TeacherID";
        SqlCommand cmd = new SqlCommand(query, connectionString);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rptCourses.DataSource = dt;
        rptCourses.DataBind();
        connectionString.Close();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchKeyword = txtSearch.Text.Trim();
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();
        string query = "SELECT C.CourseName, T.Name AS TeacherName FROM Courses1 C INNER JOIN Teachers T ON C.TeacherID = T.TeacherID WHERE C.CourseName LIKE @SearchKeyword OR T.Name LIKE @SearchKeyword";
        SqlCommand cmd = new SqlCommand(query, connectionString);
        cmd.Parameters.AddWithValue("@SearchKeyword", "%" + searchKeyword + "%");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rptCourses.DataSource = dt;
        rptCourses.DataBind();
        connectionString.Close();
    }

    protected void rptCourses_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "ViewCourse")
        {
            string courseName = e.CommandArgument.ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT CourseName, TeacherID FROM Courses1 WHERE CourseName = @CourseName";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CourseName", courseName);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string selectedCourseName = reader["CourseName"].ToString();
                    int teacherID = Convert.ToInt32(reader["TeacherID"]);

                    // Perform further logic based on the selected course details
                    // For example, you can redirect to a course details page with the selectedCourseName and teacherID as parameters
                    Response.Redirect("CourseDetails.aspx?CourseName=" + selectedCourseName + "&TeacherID=" + teacherID);
                }

                reader.Close();
            }
        }
    }

}
