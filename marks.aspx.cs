using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class MarksPage : System.Web.UI.Page
{
    protected string CourseName { get; set; }
    protected List<string> Evaluations
    {
        get { return ViewState["Evaluations"] as List<string>; }
        set { ViewState["Evaluations"] = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set the course name
            CourseName = "Course A";

            // Initialize the evaluations list
            Evaluations = new List<string>();
        }
    }

    protected void btnAddToList_Click(object sender, EventArgs e)
    {
        string evaluationType = ddlEvaluationType.SelectedValue;
        if (!string.IsNullOrEmpty(evaluationType))
        {
            // Add the selected evaluation type to the list
            Evaluations.Add(evaluationType);

            // Rebind the repeater to update the UI
            rptEvaluations.DataSource = Evaluations;
            rptEvaluations.DataBind();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();

        foreach (RepeaterItem item in rptEvaluations.Items)
        {
            string evaluationName = ((Literal)item.FindControl("Literal1")).Text;
            TextBox txtWeightage = (TextBox)item.FindControl("txtWeightage");
            double weightage = double.Parse(txtWeightage.Text);
            string courseName = CourseName;

            // Save the evaluation to the database using your preferred method (e.g., SQL query, ORM)
            string query = "INSERT INTO marks (evaluation_name, weightage) VALUES (@evaluationName, @weightage)";
            SqlCommand cmd = new SqlCommand(query, connectionString);
            cmd.Parameters.AddWithValue("@evaluationName", evaluationName);
            cmd.Parameters.AddWithValue("@weightage", weightage);

            cmd.ExecuteNonQuery();
        }

        connectionString.Close();


    }
}
