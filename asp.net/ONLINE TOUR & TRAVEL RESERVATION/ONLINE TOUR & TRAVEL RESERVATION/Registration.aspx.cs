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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtpassword.Text != txtconfirm.Text)
        {
            Message.Text = "Password and confirm password are not same";
            return;
        }


        object c;
        c = db.comman .Scalar("select username from regisration where username='" + txtUsername.Text + "'");

        if (c != null)
        {
            Message.Text="Invalid username";
            return;
        }

        string s;
        s=string.Format("insert into regisration values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')",txtUsername.Text,txtpassword .Text,txtfirst.Text,txtlast.Text,txtaddress.Text,txtcity.Text ,txtstate.Text ,txtcountry.Text,txtpin.Text,txtemail.Text,txtphone.Text,txtquestion.Text,txtanswer.Text );
        db.comman.Execute(s);
        Message.Text="Registration confirmed !!!";

        txtaddress.Text = "";
        txtcity.Text = "";
        txtanswer.Text = "";
        txtconfirm.Text = "";
        txtcountry.Text = "";
        txtemail.Text = "";
        txtfirst.Text = "";
        txtlast.Text = "";
        txtpassword.Text = "";
        txtphone.Text = "";
        txtpin.Text = "";
        txtquestion.Text = "";
        txtstate.Text = "";
        txtUsername.Text = "";
        
    }
    
}

