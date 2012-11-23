using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuestionBank_AddQuestion : System.Web.UI.Page
{
    protected void Tab1_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Clicked";
        Button2.CssClass = "Initial";
        Button3.CssClass = "Initial";
        Button4.CssClass = "Initial";
        Button5.CssClass = "Initial";
        Button6.CssClass = "Initial";

        MultiView1.ActiveViewIndex = 0;
    }

    protected void Tab2_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Initial";
        Button2.CssClass = "Clicked";
        Button3.CssClass = "Initial";
        Button4.CssClass = "Initial";
        Button5.CssClass = "Initial";
        Button6.CssClass = "Initial";
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Tab3_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Initial";
        Button2.CssClass = "Initial";
        Button3.CssClass = "Clicked";
        Button4.CssClass = "Initial";
        Button5.CssClass = "Initial";
        Button6.CssClass = "Initial";
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Tab4_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Initial";
        Button2.CssClass = "Initial";
        Button3.CssClass = "Initial";
        Button4.CssClass = "Clicked";
        Button5.CssClass = "Initial";
        Button6.CssClass = "Initial";

        MultiView1.ActiveViewIndex = 3;
    }

    protected void Tab5_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Initial";
        Button2.CssClass = "Initial";
        Button3.CssClass = "Initial";
        Button4.CssClass = "Initial";
        Button5.CssClass = "Clicked";
        Button6.CssClass = "Initial";
        MultiView1.ActiveViewIndex = 4;
    }

    protected void Tab6_Click(object sender, EventArgs e)
    {
        Button1.CssClass = "Initial";
        Button2.CssClass = "Initial";
        Button3.CssClass = "Initial";
        Button4.CssClass = "Initial";
        Button5.CssClass = "Initial";
        Button6.CssClass = "Clieked";
        MultiView1.ActiveViewIndex = 5;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Tab1_Click(this, new EventArgs());
    }


}