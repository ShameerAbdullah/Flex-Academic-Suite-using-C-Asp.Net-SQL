using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class StudentEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FetchStudentEvaluation();
        }
    }

    protected void FetchStudentEvaluation()
    {
        string rollNumber = "i202470"; // Provide the actual roll number here
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT quizz_marks, assignment_marks, project_marks, exam_marks FROM evaluation WHERE roll_number = @roll_number";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@roll_number", rollNumber);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    // Populate the first row data in the labels
                    string quiz = reader["quizz_marks"].ToString();
                    string project = reader["project_marks"].ToString();
                    string assignment = reader["assignment_marks"].ToString();
                    string exam = reader["exam_marks"].ToString();
                    rollNumber1Label.Text = rollNumber;
                    quizMarks1Label.Text = quiz;
                    projectMarks1Label.Text = project;
                    assignmentMarks1Label.Text = assignment;
                    examMarks1Label.Text = exam;
                }
                else
                {
                    // Roll number not found, clear the labels
                    rollNumber1Label.Text = "Not found";
                    quizMarks1Label.Text = string.Empty;
                    projectMarks1Label.Text = string.Empty;
                    assignmentMarks1Label.Text = string.Empty;
                    examMarks1Label.Text = string.Empty;
                }
            }
        }
    }
}
