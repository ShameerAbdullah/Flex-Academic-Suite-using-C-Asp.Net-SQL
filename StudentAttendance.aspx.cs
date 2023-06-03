using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FetchStudentAttendance();
        }
    }
    protected void FetchStudentAttendance()
    {
        string date = "2023-12-12"; // Provide the actual roll number here
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT roll_number, attendance FROM attendance WHERE DATE = @DATE";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@DATE", date);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    // Populate the first row data in the labels
                    string rollNumber = reader["roll_number"].ToString();
                    string attendance = reader["attendance"].ToString();
                    rollNumber1Label.Text = rollNumber;
                    date1Label.Text = date;
                    presence1Label.Text = attendance;
                }
                else
                {
                    // Roll number not found, clear the labels
                    date1Label.Text = "Not found";
                    rollNumber1Label.Text = string.Empty;
                    presence1Label.Text = string.Empty;
                }
            }
        }
    }
}