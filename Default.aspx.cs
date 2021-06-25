using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace UpdatedShahbazAhmad
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnectionstring"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            myConnection.Open();
            SqlCommand cmd = new SqlCommand("Select * from DengueMonitoring.dbo.tbl_User where User_Id='" + txt_name.Text + "' and User_Password ='" + txt_pass.Text + "'", myConnection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                HttpCookie userInfo = new HttpCookie("userInfo");
                userInfo["UserName"] = txt_name.Text;
                userInfo["UserColor"] = txt_pass.Text;
                userInfo.Expires.Add(new TimeSpan(0, 1, 0));
                Response.Cookies.Add(userInfo);

                Response.Redirect("HomePage.aspx");
            }
            else 
            {
                Label1.Visible = true;
                Label1.Text = "User Name or Password is incorrect";
            
            }


        }
    }
}