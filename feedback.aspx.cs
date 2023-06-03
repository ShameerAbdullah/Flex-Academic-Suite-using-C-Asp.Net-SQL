using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get the connection string from the Web.config file
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        conn.Open();

        // Create a new SqlConnection using the connection string
        {
            // Open the database connection

            // Create a SQL query to insert the feedback data into the database table
            string query = "INSERT INTO Feedback (FullName, Date, Subject, Schedule, RoomNumber, SchoolYear, Question1, Question2, Question3, Question4, Question5, Comments) " +
                "VALUES (@FullName, @Date, @Subject, @Schedule, @RoomNumber, @SchoolYear, @Question1, @Question2, @Question3, @Question4, @Question5, @Comments)";

            // Create a new SqlCommand using the SQL query and SqlConnection
            using (SqlCommand command = new SqlCommand(query, conn))
            {
                // Set the parameter values
                command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                command.Parameters.AddWithValue("@Date", TextBox2.Text);
                command.Parameters.AddWithValue("@Subject", TextBox3.Text);
                command.Parameters.AddWithValue("@Schedule", TextBox4.Text);
                command.Parameters.AddWithValue("@RoomNumber", TextBox5.Text);
                command.Parameters.AddWithValue("@SchoolYear", TextBox6.Text);
                command.Parameters.AddWithValue("@Question1", rating1.SelectedValue);
                command.Parameters.AddWithValue("@Question2", rating2.SelectedValue);
                command.Parameters.AddWithValue("@Question3", DropDownList1.SelectedValue);
                command.Parameters.AddWithValue("@Question4", DropDownList2.SelectedValue);
                command.Parameters.AddWithValue("@Question5", DropDownList3.SelectedValue);
                command.Parameters.AddWithValue("@Comments", comments.Text);

                // Execute the SQL query
                command.ExecuteNonQuery();
            }

            // Close the database connection
            conn.Close();
        }

        // Clear the form fields
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        rating1.SelectedIndex = 0;
        rating2.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        comments.Text = "";

        // Display a success message
        Response.Write("<script>alert('Feedback submitted successfully!')</script>");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
