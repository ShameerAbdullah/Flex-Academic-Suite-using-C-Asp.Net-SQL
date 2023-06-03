using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load students from the database
            LoadStudents();
        }
    }

    protected void LoadStudents()
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();

        SqlCommand cmd = new SqlCommand("SELECT rollno, name FROM student", connectionString);
        SqlDataReader reader = cmd.ExecuteReader();

        ddlStudents.DataSource = reader;
        ddlStudents.DataTextField = "name";
        ddlStudents.DataValueField = "rollno";
        ddlStudents.DataBind();

        reader.Close();
        connectionString.Close();
    }

    protected void btnGenerateGrade_Click(object sender, EventArgs e)
    {
        string rollno = ddlStudents.SelectedValue;
        decimal totalMarks = CalculateTotalMarks(rollno);
        string grade = GenerateGrade(totalMarks);

        // Save the grade in the database
        SaveGrade(rollno, grade);

        // Display the generated grade
        lblGrade.Text = "Grade: " + grade;
    }

    protected decimal CalculateTotalMarks(string rollno)
    {
        decimal totalMarks = 0;
        
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();

        SqlCommand cmd = new SqlCommand("SELECT SUM(marks) FROM evaluations WHERE rollno = @rollno", connectionString);
        cmd.Parameters.AddWithValue("@rollno", rollno);

        object result = cmd.ExecuteScalar();
        if (result != DBNull.Value)
        {
            totalMarks = Convert.ToDecimal(result);
        }

        connectionString.Close();

        return totalMarks;
    }

    protected string GenerateGrade(decimal marks)
    {
        string grade = "";

        if (marks >= 90)
            grade = "A+";
        else if (marks >= 86)
            grade = "A";
        else if (marks >= 82)
            grade = "A-";
        else if (marks >= 78)
            grade = "B+";
        else if (marks >= 74)
            grade = "B";
        else if (marks >= 70)
            grade = "B-";
        else if (marks >= 66)
            grade = "C+";
        else if (marks >= 62)
            grade = "C";
        else if (marks >= 58)
            grade = "C-";
        else if (marks >= 54)
            grade = "C-";
        else if (marks >= 50)
            grade = "D+";
        else if (marks >= 46)
            grade = "D";
        else
            grade = "F";

        return grade;
    }
    protected void SaveGrade(string rollno, string grade)
    {
        string connectionString = "Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "INSERT INTO grades (rollno, grade) VALUES (@rollno, @grade)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@rollno", rollno);
            command.Parameters.AddWithValue("@grade", grade);

            command.ExecuteNonQuery();
        }
    }
}

