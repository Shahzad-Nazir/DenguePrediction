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
    public partial class DeleteData : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT Id_Patient, convert(varchar, Reg_Date,101) As Reg_Date, Gender, Age, District, Status, IgM, IgG FROM tbl_patient", myConnection);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            SqlCommand cmd = new SqlCommand("SELECT Id_Patient, convert(varchar, Reg_Date,101), Gender, Age, District, Status, IgM, IgG FROM tbl_patient", myConnection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            // txt_date.Text = GridView1.SelectedRow.Cells[2].Text.ToString();

            if (GridView1.SelectedRow.Cells[7].Text == "Yes" && GridView1.SelectedRow.Cells[8].Text == "nan")
            {
                txt_report.Text = "IgM";
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "nan" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                txt_report.Text = "IgG";
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "Yes" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                txt_report.Text = "IgG and IgM";
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "No" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                txt_report.Text = "IgG";
            }
            else
            {
                txt_report.Text = "IgG and IgM";

            }
            txt_age.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_gender.Text = GridView1.SelectedRow.Cells[3].Text;

            txt_status.Text = GridView1.SelectedRow.Cells[6].Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                {
                    myConnection.Open();

                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "delete from DengueMonitoring.dbo.tbl_patient where Id_Patient='" + GridView1.SelectedRow.Cells[1].Text + "' ";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();
                }

                //================================= update and delete prediction table

                {
                    myConnection.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "Update DengueMonitoring.dbo.tbl_prediction Set Cases= Cases - 1 where Date ='" + GridView1.SelectedRow.Cells[2].Text + "' and City ='" + GridView1.SelectedRow.Cells[5].Text + "'";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();


                }

                {

                    

                    myConnection.Open();

                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "delete from DengueMonitoring.dbo.tbl_prediction where Cases = '0' ";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();

                     
                     
                }


                //================================Yearly Prediction delete and update


                {
                    myConnection.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "Update DengueMonitoring.dbo.tbl_YearlyPrediction Set Cases= Cases - 1 where Date ='" + GridView1.SelectedRow.Cells[2].Text + "' ";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();


                }

                {

                    
                    myConnection.Open();

                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "delete from DengueMonitoring.dbo.tbl_YearlyPrediction where Cases = '0' ";
                    SqlDataAdapter da1 = new SqlDataAdapter();


                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;

                    cmd1.ExecuteNonQuery();
                    myConnection.Close();
                    
                }

            }

            catch (Exception ee)
            {

                Label1.Visible = true;
                Label1.Text = "Something Went Wrong";
            
            
            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int res = 0;
                if (int.TryParse(txt_search.Text, out res))
                {
                    lbl_search.Visible = false;
                    SqlCommand cmd = new SqlCommand("SELECT Id_Patient, convert(varchar, Reg_Date,101), Gender, Age, District, Status, IgM, IgG FROM DengueMonitoring.dbo.tbl_patient where Id_Patient = '" + txt_search.Text + "'", myConnection);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }
                else
                {
                    lbl_search.Visible = false;
                    SqlCommand cmd = new SqlCommand("SELECT Id_Patient, convert(varchar, Reg_Date,101), Gender, Age, District, Status, IgM, IgG FROM DengueMonitoring.dbo.tbl_patient where Reg_date = '" + txt_search.Text + "'", myConnection);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }

            }

            catch (Exception ee)
            {
                lbl_search.Visible = true;
                lbl_search.Text = " Invalid Data ";

            }

    
        }
    }
}