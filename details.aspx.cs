using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnAttendanceReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT * FROM attendeance;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

    protected void btnEvaluationReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT * FROM evaluations;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

    protected void btnGradeReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT * FROM grades;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

    protected void btnCountGradeReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT grade, COUNT(*) AS Count FROM grades GROUP BY grade;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

    protected void btnFeedbackReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True"; // Replace with your SQL Server connection string

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT Comments FROM Feedback;";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }
}
