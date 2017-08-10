using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace db
{
    public class comman
    {
        public static string CnStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";

        public static int Execute(string q)
        {
            SqlConnection cn = new SqlConnection(CnStr);
            SqlCommand cmd = new SqlCommand(q, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();
            return i;
        }
        public static object Scalar(string q)
        {
            SqlConnection cn = new SqlConnection(CnStr);
            SqlCommand cmd = new SqlCommand(q, cn);
            cn.Open();
            object i = cmd.ExecuteScalar();
            cn.Close();
            return i;
        }

        public static object[] Reader(string q)
        {
            SqlConnection cn = new SqlConnection(CnStr);
            SqlCommand cmd = new SqlCommand(q, cn);
            cn.Open();
            SqlDataReader dr;

            object[] i = null;

            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                i = new object[dr.FieldCount];
                dr.GetValues(i);
            }
            cn.Close();
            return i;
        }
        public static DataTable getTable(string q)
        {
            SqlDataAdapter adp = new SqlDataAdapter(q, CnStr);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
    
    }
}

