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

public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        object c;
        c = db.comman.Scalar("select password from regisration where username='" + txtusername.Text + "' and question='" + txtquestion.Text + "' and answer='" + txtanswer.Text + "'");
        if (c == null)
            Message.Text = "Your username/question/asnwer is not proper to fetch a password";
        else
            Message.Text = "Your password is : " + c;

    }
}
