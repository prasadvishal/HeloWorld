using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        object c;

        c = db.comman .Scalar("select username from login where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
        if (c != null)
        {
            Session["isadmin"] = 1;
            Response.Redirect("~/admin/default.aspx");
        }

        c = db.comman.Scalar("select username from regisration where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
        if (c != null)
        {
            Session["isuser"] = 1;
            Session["username"] = txtusername.Text;
            Response.Redirect("member");

        }

    }
}
