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

public partial class member_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            txtDate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
            txtUsername.Text = Session["username"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        object c;
        c =db.comman.Scalar ("select bookingdate from booking where  username='" + txtUsername.Text + "' and packageid='" + DropDownList1.SelectedValue + "'");
  
        if (c != null)
        {
            message.Text = "You had a booking for selected package on dated " + c;
            return;
        }

        string s;
        s = string.Format("insert into booking (bookingdate,username,packageid) values ('{0}','{1}',{2})", txtDate.Text, txtUsername.Text, DropDownList1.SelectedValue);

        db.comman.Execute(s);
        message.Text = "Booking for selected package is confirmed.";

    }
}
