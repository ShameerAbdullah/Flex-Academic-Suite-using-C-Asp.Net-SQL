using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class evaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load students from the database
            LoadStudents();

            // Load evaluations from the database
            LoadEvaluations();
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

    protected void LoadEvaluations()
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();
        SqlCommand cmd = new SqlCommand("SELECT evaluation_name, weightage FROM marks", connectionString);

        SqlDataReader reader = cmd.ExecuteReader();

        ddlEvaluations.DataSource = reader;
        ddlEvaluations.DataTextField = "evaluation_name";
        ddlEvaluations.DataValueField = "weightage";
        ddlEvaluations.DataBind();

        reader.Close();
        connectionString.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string rollno = ddlStudents.SelectedValue;
        string evaluation = ddlEvaluations.SelectedItem.Text;
        decimal marks = Convert.ToDecimal(txtMarks.Text);

        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("INSERT INTO evaluations (name, rollno, type, marks) VALUES (@name, @rollno, @evaluation, @marks)", connectionString);
        cmd.Parameters.AddWithValue("@name", ddlStudents.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@rollno", rollno);
        cmd.Parameters.AddWithValue("@evaluation", evaluation);
        cmd.Parameters.AddWithValue("@marks", marks);

        connectionString.Open();
        cmd.ExecuteNonQuery();
        connectionString.Close();

        // Optionally, display a success message or perform any additional actions

        // Clear the input fields
        ddlStudents.SelectedIndex = 0;
        ddlEvaluations.SelectedIndex = 0;
        txtMarks.Text = string.Empty;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string rollno = ddlStudents.SelectedValue;
        string evaluation = ddlEvaluations.SelectedItem.Text;

        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("DELETE FROM evaluations WHERE rollno = @rollno AND type = @evaluation", connectionString);
        cmd.Parameters.AddWithValue("@rollno", rollno);
        cmd.Parameters.AddWithValue("@evaluation", evaluation);

        connectionString.Open();
        cmd.ExecuteNonQuery();
        connectionString.Close();

        // Optionally, display a success message or perform any additional actions

        // Clear the input fields
        ddlStudents.SelectedIndex = 0;
        ddlEvaluations.SelectedIndex = 0;
        txtMarks.Text = string.Empty;
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string rollno = ddlStudents.SelectedValue;
        string evaluation = ddlEvaluations.SelectedItem.Text;
        decimal marks = Convert.ToDecimal(txtMarks.Text);

        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("UPDATE evaluations SET marks = @marks WHERE rollno = @rollno AND type = @evaluation", connectionString);
        cmd.Parameters.AddWithValue("@marks", marks);
        cmd.Parameters.AddWithValue("@rollno", rollno);
        cmd.Parameters.AddWithValue("@evaluation", evaluation);

        connectionString.Open();
        cmd.ExecuteNonQuery();
        connectionString.Close();

        // Optionally, display a success message or perform any additional actions

        // Clear the input fields
        ddlStudents.SelectedIndex = 0;
        ddlEvaluations.SelectedIndex = 0;
        txtMarks.Text = string.Empty;
    }
}
