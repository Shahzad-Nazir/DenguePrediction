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
    public partial class YearlyAnalysis : System.Web.UI.Page
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



            if (!IsPostBack)
            {
                myConnection.Open();

                string query = "select Distinct YEAR(Date) from DengueMonitoring.dbo.tbl_YearlyPrediction";

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

   
      if (DropDownList1.SelectedValue == "" || DropDownList1.SelectedValue == "Year")
            {

                Label1.Text = "Please Select Year";
                Label1.Visible = true;

            }
            else
            {
                Label1.Visible = false;
                myConnection.Open();


                string start;
                string end;

                start = DropDownList1.Items[DropDownList1.SelectedIndex].Text + "-" + "01" + "-" + "01";
                end = DropDownList1.Items[DropDownList1.SelectedIndex].Text + "-" + "12" + "-" + "31";



                SqlCommand cmd1 = new SqlCommand();


                cmd1.CommandText = "select Date, Cases,Prediction from DengueMonitoring.dbo.tbl_YearlyPrediction where Date >='" + start + "' and Date <= '" + end + "' order by Date Asc";
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
    }
}