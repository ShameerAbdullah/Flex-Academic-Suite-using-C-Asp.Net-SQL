using System;
using System.Data.SqlClient;
using System.Web.Services;

public partial class Graphs : System.Web.UI.Page
{
    [WebMethod]
    public static string FetchCGPAData(string rollNumber)
    {
        // Replace the connection string with your actual database connection string
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT Semester, CGPA FROM CGPAData WHERE RollNumber = @RollNumber";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@RollNumber", rollNumber);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Create JSON arrays to hold the retrieved data
                var semesters = new System.Text.StringBuilder();
                var cgpaValues = new System.Text.StringBuilder();

                while (reader.Read())
                {
                    // Append the values to the JSON arrays
                    semesters.AppendFormat("\"{0}\",", reader["Semester"]);
                    cgpaValues.AppendFormat("{0},", reader["CGPA"]);
                }

                // Remove the trailing comma from the JSON arrays
                if (semesters.Length > 0)
                {
                    semesters.Length--;
                    cgpaValues.Length--;
                }

                // Build the final JSON response
                string jsonData = string.Format("{{\"Semester\":[{0}],\"CGPA\":[{1}]}}", semesters.ToString(), cgpaValues.ToString());
                return jsonData;
            }
        }
    }
}
