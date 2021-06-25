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
    public partial class WeeklyAnalysis : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {


          if (DropDownList1.SelectedValue == "" || DropDownList1.SelectedValue == "Year")
            {

                Label1.Text = "Please Select Year";
                Label1.Visible = true;

            }
            else if (DropDownList2.SelectedValue == "" || DropDownList2.SelectedValue == "Month")
            {

                Label1.Text = "Please Select Month";
                Label1.Visible = true;

            }
            else if (DropDownList3.SelectedValue == "" || DropDownList3.SelectedValue == "Week")
            {

                Label1.Text = "Please Select Week";
                Label1.Visible = true;

            }


            else
            {
                Label2.Visible = false;
                Label1.Visible = false;
                myConnection.Open();



                if (DropDownList3.SelectedValue == "1")
                {
                    Label3.Text = "01";
                    Label4.Text = "07";

                    int month;


                    month = int.Parse(DropDownList2.SelectedValue);

                    string date1;
                    string date2;

                    date1 = DropDownList1.SelectedValue + "-" + month + "-" + Label3.Text;
                    date2 = DropDownList1.SelectedValue + "-" + month + "-" + Label4.Text;



                    SqlCommand cmd1 = new SqlCommand();


                    cmd1.CommandText = "select Date, Cases,Prediction from DengueMonitoring.dbo.tbl_YearlyPrediction where Date >='" + date1 + "' and Date <= '" + date2 + "' order by Date Asc";
                    SqlDataAdapter da1 = new SqlDataAdapter();

                    DataSet ds1 = new DataSet();
                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;
                    da1.Fill(ds1);
                    Chart1.DataSource = ds1;
                    Chart1.DataBind();
                    myConnection.Close();

                }
                else if (DropDownList3.SelectedValue == "2")
                {
                    Label3.Text = "08";
                    Label4.Text = "15";

                    int month;


                    month = int.Parse(DropDownList2.SelectedValue);

                    string date1;
                    string date2;

                    date1 = DropDownList1.SelectedValue + "-" + month + "-" + Label3.Text;
                    date2 = DropDownList1.SelectedValue + "-" + month + "-" + Label4.Text;



                    SqlCommand cmd1 = new SqlCommand();


                    cmd1.CommandText = "select Date, Cases,Prediction from DengueMonitoring.dbo.tbl_YearlyPrediction where Date >='" + date1 + "' and Date <= '" + date2 + "' order by Date Asc";
                    SqlDataAdapter da1 = new SqlDataAdapter();

                    DataSet ds1 = new DataSet();
                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;
                    da1.Fill(ds1);
                    Chart1.DataSource = ds1;
                    Chart1.DataBind();
                    myConnection.Close();


                }
                else if (DropDownList3.SelectedValue == "3")
                {
                    Label3.Text = "16";
                    Label4.Text = "22";


                    int month;


                    month = int.Parse(DropDownList2.SelectedValue);

                    string date1;
                    string date2;

                    date1 = DropDownList1.SelectedValue + "-" + month + "-" + Label3.Text;
                    date2 = DropDownList1.SelectedValue + "-" + month + "-" + Label4.Text;



                    SqlCommand cmd1 = new SqlCommand();


                    cmd1.CommandText = "select Date, Cases,Prediction from DengueMonitoring.dbo.tbl_YearlyPrediction where Date >='" + date1 + "' and Date <= '" + date2 + "' order by Date Asc";
                    SqlDataAdapter da1 = new SqlDataAdapter();

                    DataSet ds1 = new DataSet();
                    cmd1.Connection = myConnection;
                    da1.SelectCommand = cmd1;
                    da1.Fill(ds1);
                    Chart1.DataSource = ds1;
                    Chart1.DataBind();
                    myConnection.Close();




                }
                else if (DropDownList3.SelectedValue == "4")
                {

                    int ax;
                    Label3.Text = "23";

                    Label4.Text = "01";

                    int month;
                    int month2;

                    month = int.Parse(DropDownList2.SelectedValue);
                    month2 = month + 1;
                    string date1;
                    string date2;

                    date1 = DropDownList1.SelectedValue + "-" + month + "-" + Label3.Text;
                    date2 = DropDownList1.SelectedValue + "-" + month2 + "-" + Label4.Text;



                    SqlCommand cmd1 = new SqlCommand();


                    cmd1.CommandText = "select Date, Cases,Prediction from DengueMonitoring.dbo.tbl_YearlyPrediction where Date >='" + date1 + "' and Date <= '" + date2 + "' order by Date Asc";
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
}