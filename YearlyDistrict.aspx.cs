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
    public partial class YearlyDistrict : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnectionstring"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_color = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_color = reqCookies["UserColor"].ToString();

                if (User_name != "admin")
                {
                    updat_patient.Enabled = false;
                    delete_patient.Enabled = false;

                }

            }
            else
            {

                Response.Redirect("Default.aspx");
            }

            




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        
           if (DropDownList1.SelectedValue == "" || DropDownList1.SelectedValue == "Year")
            {

                Label1.Text = "Please Select Year";
                Label1.Visible = true;

            }
            else if (DropDownList2.SelectedValue == "" || DropDownList2.SelectedValue == "City")
            {

                Label1.Text = "Please Select Year";
                Label1.Visible = true;

            }
            else
            {
                Label1.Visible = false;
                myConnection.Open();


                SqlCommand cmd1 = new SqlCommand();

                string start;
                string end;

                start = DropDownList1.Items[DropDownList1.SelectedIndex].Text + "-" + "01" + "-"+"01";
                end = DropDownList1.Items[DropDownList1.SelectedIndex].Text + "-" + "12" + "-" + "31";


                cmd1.CommandText = "select Date, Cases,Prediction_Value from DengueMonitoring.dbo.tbl_prediction where City='" + DropDownList2.Items[DropDownList2.SelectedIndex].Text + "' and Date >='" + start + "' and Date <= '" + end + "' order by Date Asc";
                SqlDataAdapter da1 = new SqlDataAdapter();

                DataSet ds1 = new DataSet();
                cmd1.Connection = myConnection;
                da1.SelectCommand = cmd1;
                da1.Fill(ds1);
                Chart1.DataSource = ds1;
                Chart1.DataBind();
                myConnection.Close();
            }





        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {



            myConnection.Open();

            string query = "select Distinct YEAR(Date) from tbl_prediction";

            SqlCommand cmd = new SqlCommand(query, myConnection);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());

                }
            }


            myConnection.Close();







        }
    }
}