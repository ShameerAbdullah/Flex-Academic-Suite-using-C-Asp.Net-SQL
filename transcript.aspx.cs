using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FetchStudentTranscript();
        }
    }

    protected void FetchStudentTranscript()
    {
        string semester = "1"; // Provide the actual semester here
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT roll_number, gpa FROM transcript WHERE semester = @semester";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@semester", semester);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    // Populate the first row data in the labels
                    string roll_number = reader["roll_number"].ToString();
                    string gpa = reader["gpa"].ToString();
                    rollNumber1Label.Text = roll_number;
                    semester1Label.Text = semester;
                    gpa1Label.Text = gpa;
                }
                else
                {
                    // Roll number not found, clear the labels
                    semester1Label.Text = "Not found";
                    rollNumber1Label.Text = string.Empty;
                    gpa1Label.Text = string.Empty;
                }
            }
        }
    }
}
