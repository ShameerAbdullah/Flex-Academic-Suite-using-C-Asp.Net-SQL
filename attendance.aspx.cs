using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Populate the student list from the database
            BindStudentList();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();


        foreach (GridViewRow row in gvStudents.Rows)
        {
            string rollNo = row.Cells[0].Text;
            string name = row.Cells[1].Text;
            DropDownList ddlAttendance = (DropDownList)row.FindControl("ddlAttendance");
            string attendance = ddlAttendance.SelectedItem.Value;
            string date = txtDate.Text;

            // Save attendance data to the database
            SaveAttendance(connectionString, name, rollNo, attendance, date);
        }

        connectionString.Close();

    }

    private void BindStudentList()
    {
        SqlConnection connectionString = new SqlConnection("Data Source=DESKTOP-9FJ56MH\\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True");
        connectionString.Open();

        string query = "SELECT RollNo, Name FROM Student";
        SqlCommand cmd = new SqlCommand(query, connectionString);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gvStudents.DataSource = dt;
        gvStudents.DataBind();

    }

    private void SaveAttendance(SqlConnection con, string name, string rollNo, string attendance, string date)
    {
        string query = "INSERT INTO Attendeance (Name, RollNo, Attendance, Date) VALUES (@Name, @RollNo, @Attendance, @Date)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@RollNo", rollNo);
        cmd.Parameters.AddWithValue("@Attendance", attendance);
        cmd.Parameters.AddWithValue("@Date", date);
        cmd.ExecuteNonQuery();
    }
}
