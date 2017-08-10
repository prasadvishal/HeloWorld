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

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isadmin"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~");


    }
    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {
       
    }
}
