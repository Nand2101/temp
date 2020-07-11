using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace wallet
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Internship\wallet\wallet\App_Data\db.mdf;Integrated Security=True");
            con.Open();
            string s = "insert into user values(@p1,@p2,@p3,@p4,@p5,@p6)";

            SqlCommand cmd = new SqlCommand(s,con);

            cmd.Parameters.AddWithValue("@P1",firstname.Text);
            cmd.Parameters.AddWithValue("@P2",lastname.Text);
            cmd.Parameters.AddWithValue("@P3",username.Text);
            cmd.Parameters.AddWithValue("@P4",email.Text);
            cmd.Parameters.AddWithValue("@P5",mobileno.Text);
            cmd.Parameters.AddWithValue("@P6",password1.Text);

            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}