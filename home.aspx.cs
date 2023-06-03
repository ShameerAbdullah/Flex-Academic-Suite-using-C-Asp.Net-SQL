using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCourseManagement_Click(object sender, EventArgs e)
    {
        // Redirect to the Course Management page
        Response.Redirect("courses.aspx");
    }
    protected void btnMarksDistribution_Click(object sender, EventArgs e)
    {
        // Redirect to the Marks Distribution page
        Response.Redirect("marks.aspx");
    }

    protected void btnAttendanceManagement_Click(object sender, EventArgs e)
    {
        // Redirect to the Attendance Management page
        Response.Redirect("attendance.aspx");
    }
    protected void btnEvaluationManagement_Click(object sender, EventArgs e)
    {
        // Redirect to the Evaluation Management page
        Response.Redirect("evaluation.aspx");
    }

    protected void btnGradeGeneration_Click(object sender, EventArgs e)
    {
        // Redirect to the Grade Generation page
        Response.Redirect("grade.aspx");
    }

    protected void btnReports_Click(object sender, EventArgs e)
    {
        // Redirect to the Reports page
        Response.Redirect("details.aspx");
    }
}