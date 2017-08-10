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

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        object c;
        c = db.comman.Scalar("select feedid from feedback where feedid=' " + txtfeedid.Text + " ' ");
        if (c != null)
        {
            message.Text = "Duplicate feedid. Re-Enter please";
            return;

        }

        string q;
        q = string.Format("insert into feedback values ( '{0}','{1}','{2}' )",txtfeedid.Text,txtfeeddate.Text,txtremark.Text );
        db.comman .Execute(q);
         message.Text = "Record is saved";

         txtfeeddate.Text = "";
         txtfeedid.Text = "";
         txtremark.Text = "";
    }
}
