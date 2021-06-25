using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UpdatedShahbazAhmad
{
    public partial class Predictor : System.Web.UI.Page
    {
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

            if (txt_humidity.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Please Enter Humidity";
            }
            else if (txt_rain.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Please Enter Rain";
            }
            else if (txt_temp.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Please Enter Temperature";
            }
            else if (DropDownList2.Items[DropDownList2.SelectedIndex].Text == "City")
            {
                Label1.Visible = true;
                Label1.Text = "Please Select City";
            }
            else if (Calendar1.SelectedDate.Date == DateTime.MinValue.Date)
            {
                Label1.Visible = true;
                Label1.Text = "Please Select Date";
            }
            else
            {
                double hum = Convert.ToDouble(txt_humidity.Text);
                double ra = Convert.ToDouble(txt_rain.Text);
                double tem = Convert.ToDouble(txt_temp.Text);
                double Pred_value;
                Pred_value = ((hum * 0.887) + (0.117 * ra) + (tem * 2.69) + (-96));

                Label1.Visible = true;
                Label1.Text = "Predicted Patients: " + Pred_value + "";


            }



        }
    }
}