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

public partial class member_showbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
DataTable dt = db.comman.getTable("select BookingDate,Title,PackageDesc,Facilities,Accomodation,Days,StartDate,EndDate,Charges,Discount,Terms from ViewBooking");
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
