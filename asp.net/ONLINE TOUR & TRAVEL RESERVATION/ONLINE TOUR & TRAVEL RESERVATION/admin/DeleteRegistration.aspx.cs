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

public partial class admin_DeleteRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        object[] p = db.comman.Reader("select * from regisration where  username='" + txtusername.Text + "'");

        if (p != null)
        {
            txtpsw.Text = p[2].ToString();
            txtfirst.Text = p[3].ToString();
            txtlast.Text = p[4].ToString();
            txtadd.Text = p[5].ToString();
            txtcity.Text = p[6].ToString();
            txtstate.Text = p[7].ToString();
            txtcountry.Text = p[8].ToString();
            txtpin.Text = p[9].ToString();
            txtemail.Text = p[10].ToString();
            txtphone.Text = p[11].ToString();
            DropDownList1.SelectedValue = p[12].ToString();
            txtans.Text = p[13].ToString();
          }
        else
        {
            txtpsw.Text = "";
            txtfirst.Text = "";
            txtlast.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtcountry.Text = "";
            txtpin.Text = "";
            txtemail.Text = "";
            txtphone.Text = "";
            DropDownList1.SelectedValue = "";
            txtans.Text = "";
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        db.comman.Execute("delete from booking where username='" + txtusername.Text + "'");
        db.comman.Execute("delete from regisration where username='" + txtusername.Text + "'");
        message.Text = "Record Deleted";
       
        txtadd.Text = "";
        txtans.Text = "";
        txtcity.Text = "";
        txtcountry.Text = "";
        txtemail.Text = "";
        txtfirst.Text = "";
        txtlast.Text = "";
        txtphone.Text = "";
        txtpin.Text = "";
        txtpsw.Text = "";
        txtstate.Text = "";
        txtusername.Text = "";
        
        
       
    }
}
