using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class AdminDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnOfferedCourseReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT Semester, CourseID, CourseName, CreditHours FROM Courses;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable DataTable = new DataTable();
            adapter.Fill(DataTable);

            GridView1.DataSource = DataTable;
            GridView1.DataBind();
        }
    }

    protected void btnStudentSectionReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT Section, StudentID, StudentName FROM Students;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable DataTable = new DataTable();
            adapter.Fill(DataTable);

            GridView1.DataSource = DataTable;
            GridView1.DataBind();
        }
    }

    protected void btnCourseAllocationReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT CourseID, CourseName, CreditHours, Section, Instructor, Coordinator FROM CourseEnrollment;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable DataTable = new DataTable();
            adapter.Fill(DataTable);

            GridView1.DataSource = DataTable;
            GridView1.DataBind();
        }
    }
}
