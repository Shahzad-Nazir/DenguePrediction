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
    public partial class AddPatient : System.Web.UI.Page
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
                lbl_cookie.Text = User_name;

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


            if(lbl_cookie.Text == "admin")
            {
                DropDownList2.Visible = true;
                lbl_city.Visible = true;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            try
            {
                if (DropDownList3.Items[DropDownList3.SelectedIndex].Text == "Status")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Status";
                }
                else if (txt_age.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Age";
                }
                else if (lbl_cookie.Text == "admin" && DropDownList2.Items[DropDownList2.SelectedIndex].Text == "City")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select City";
                }

                else if (int.Parse(txt_age.Text) < 0 || int.Parse(txt_age.Text) > 120)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Appropriate Age";
                }
                else if (txt_humidity.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Humidity";
                }
                else if (int.Parse(txt_humidity.Text) < 0 || int.Parse(txt_humidity.Text) > 100)
                {
                    
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Appropriate Humidity";
                }
                else if (txt_rain.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Rain";
                }
                else if (int.Parse(txt_rain.Text) < 0 || int.Parse(txt_rain.Text) > 100)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Appropriate Rain";
                }
                else if (txt_temp.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Temperature";
                }
                else if (int.Parse(txt_temp.Text) < (-10) || int.Parse(txt_temp.Text) > 100)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Enter Appropriate Temperature";
                }
                else if (DropDownList4.Items[DropDownList4.SelectedIndex].Text == "Report")
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Report";
                }
                else if (Calendar1.SelectedDate.Date == DateTime.MinValue.Date)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Date";
                }
                else
                {
                    if (lbl_cookie.Text == "admin" && DropDownList2.Items[DropDownList2.SelectedIndex].Text != "City")
                    {
                        lbl_cookie.Text = DropDownList2.Items[DropDownList2.SelectedIndex].Text;
                    }
                    else
                    {
                        lbl_cookie.Text = lbl_cookie.Text;
                    }


                    {

                        myConnection.Open();

                        if (DropDownList4.SelectedValue == "1")
                        {
                            Label2.Text = "nan";
                            Label3.Text = "YES";
                        }
                        else if (DropDownList4.SelectedValue == "2")
                        {
                            Label2.Text = "YES";
                            Label3.Text = "nan";
                        }
                        else if (DropDownList4.SelectedValue == "3")
                        {
                            Label2.Text = "YES";
                            Label3.Text = "YES";


                        }

                        SqlCommand cmd1 = new SqlCommand();

                        string user_id;
                        user_id = "0";

                        cmd1.CommandText = "insert into DengueMonitoring.dbo.tbl_patient (Reg_Date,Gender,Age,District,Status,IgM,IgG,Id_User) values ('" + Calendar1.SelectedDate + "','" + DropDownList1.SelectedValue + "','" + txt_age.Text + "','" + lbl_cookie.Text + "','" + DropDownList3.Items[DropDownList3.SelectedIndex].Text + "','" + Label2.Text + "','" + Label3.Text + "','" + user_id + "');";
                        SqlDataAdapter da1 = new SqlDataAdapter();


                        cmd1.Connection = myConnection;
                        da1.SelectCommand = cmd1;

                        cmd1.ExecuteNonQuery();

                        myConnection.Close();


                    }

                    //   insert into the prediction Table
                    {
                        myConnection.Open();
                        SqlCommand cmd1 = new SqlCommand();

                        string new_case;
                        new_case = "1";
                        double hum = Convert.ToDouble(txt_humidity.Text);
                        double ra = Convert.ToDouble(txt_rain.Text);
                        double tem = Convert.ToDouble(txt_temp.Text);
                        double Pred_value;
                        Pred_value = ((hum * 0.887) + (0.117 * ra) + (tem * 2.69) + (-96));

                        if (Pred_value < 0)
                        {
                            Label1.Text = Pred_value.ToString();                        
                        }

                        string pred = Label1.Text;

                        cmd1.CommandText = "if exists(SELECT Cases from DengueMonitoring.dbo.tbl_prediction  where Date='" + Calendar1.SelectedDate + "' and City = '" + lbl_cookie.Text + "') BEGIN Update DengueMonitoring.dbo.tbl_prediction Set Cases = Cases + 1 Where   Date='" + Calendar1.SelectedDate + "' and City = '" + lbl_cookie.Text + "' End  else  begin  insert into DengueMonitoring.dbo.tbl_prediction (H_Average,Rain_Value,Avg_Temp,Date,City,Cases,Prediction_Value) values('" + txt_humidity.Text + "',	'" + txt_rain.Text + "'	,'" + txt_temp.Text + "',	'" + Calendar1.SelectedDate + "'	,'" + lbl_cookie.Text + "'	,'" + new_case + "','" + pred + "')  end ";
                        SqlDataAdapter da1 = new SqlDataAdapter();


                        cmd1.Connection = myConnection;
                        da1.SelectCommand = cmd1;

                        cmd1.ExecuteNonQuery();
                        myConnection.Close();

                    }

                    //    insert into overall prediction

                    {

                        myConnection.Open();
                        SqlCommand cmd1 = new SqlCommand();

                        string new_case;
                        new_case = "1";
                        double hum = Convert.ToDouble(txt_humidity.Text);
                        double ra = Convert.ToDouble(txt_rain.Text);
                        double tem = Convert.ToDouble(txt_temp.Text);
                        double Pred_value;
                        Pred_value = ((hum * 0.887) + (0.117 * ra) + (tem * 2.69) + (-96));



                        cmd1.CommandText = "if exists(SELECT Cases from DengueMonitoring.dbo.tbl_YearlyPrediction  where Date='" + Calendar1.SelectedDate + "') BEGIN Update DengueMonitoring.dbo.tbl_YearlyPrediction Set Cases = Cases + 1, Humidity = (Humidity + " + Convert.ToDouble(txt_humidity.Text) + ")/2 , Rain = (Rain + " + Convert.ToDouble(txt_rain.Text) + ")/2, Temperature = (Temperature + " + Convert.ToDouble(txt_temp.Text) + ")/2  Where   Date='" + Calendar1.SelectedDate + "'  End  else  begin  insert into DengueMonitoring.dbo.tbl_YearlyPrediction (Date,Cases,Prediction,Humidity,Rain,Temperature) values('" + Calendar1.SelectedDate + "',	'" + new_case + "'	,'" + Pred_value + "'	,'" + txt_humidity.Text + "','" + txt_rain.Text + "','" + txt_temp.Text + "')  end ";
                        SqlDataAdapter da1 = new SqlDataAdapter();


                        cmd1.Connection = myConnection;
                        da1.SelectCommand = cmd1;

                        cmd1.ExecuteNonQuery();
                        myConnection.Close();



                    }   // end module


                    Response.Redirect("AddPatient.aspx");


                }         //    end else
            }
            catch (Exception ee)
            {

                Label1.Visible = true;
                Label1.Text = "Invalid Data Entered";

            
            }

      

        }
    }
}