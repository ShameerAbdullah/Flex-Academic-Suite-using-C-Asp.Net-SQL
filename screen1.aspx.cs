using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class screen1 : Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        // Establish a connection to the SQL Server
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Prepare the SQL query to retrieve the user information
            string query = "SELECT usertype FROM usertype WHERE name = @username AND password = @password";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);

                // Execute the query and check the result
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string userType = reader["usertype"].ToString();
                        // Redirect based on user type
                        switch (userType)
                        {
                            case "admin":
                                Response.Redirect("AdminHome.aspx");
                                break;
                            case "student":
                                Response.Redirect("StudentHome.aspx");
                                break;
                            case "faculty":
                                Response.Redirect("home.aspx");
                                break;
                            default:
                                // Handle unknown user types
                                Response.Write("Unknown user type");
                                break;
                        }
                    }
                    else
                    {
                        // Handle invalid credentials
                        Response.Write("Invalid username or password");
                    }
                }
            }
        }
    }
}
