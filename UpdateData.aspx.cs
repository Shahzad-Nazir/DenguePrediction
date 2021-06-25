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
using System.Data;



namespace UpdatedShahbazAhmad
{
    public partial class UpdateData : System.Web.UI.Page
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
            string tex;

            tex = GridView1.SelectedRow.Cells[5].Text;
          //  DropDownList2.SelectedIndex = DropDownList2.Items.IndexOf(DropDownList2.Items.FindByText(tex));

            DropDownList1.SelectedIndex = DropDownList1.Items.IndexOf(DropDownList1.Items.FindByText(GridView1.SelectedRow.Cells[3].Text));

            DropDownList3.SelectedIndex = DropDownList3.Items.IndexOf(DropDownList3.Items.FindByText(GridView1.SelectedRow.Cells[6].Text));


            
           // txt_date.Text = GridView1.SelectedRow.Cells[2].Text.ToString();

            if (GridView1.SelectedRow.Cells[7].Text == "Yes" && GridView1.SelectedRow.Cells[8].Text == "nan")
            {
                DropDownList4.SelectedIndex = DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText("IgM"));
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "nan" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                DropDownList4.SelectedIndex = DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText("IgG"));
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "Yes" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                DropDownList4.SelectedIndex = DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText("IgG and IgM"));
            }
            else if (GridView1.SelectedRow.Cells[7].Text == "No" && GridView1.SelectedRow.Cells[8].Text == "Yes")
            {
                DropDownList4.SelectedIndex = DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText("IgG"));
            }
            else
            {
                DropDownList4.SelectedIndex = DropDownList4.Items.IndexOf(DropDownList4.Items.FindByText("IgG and IgM"));

            }
            txt_age.Text = GridView1.SelectedRow.Cells[4].Text;
          /*  {
                myConnection.Open();

                SqlCommand cmd = new SqlCommand("SELECT H_Average FROM DengueMonitoring.dbo.tbl_prediction where Date = '" + GridView1.SelectedRow.Cells[2].Text + "'", myConnection);
                txt_humidity.Text = ((string)cmd.ExecuteScalar());
                myConnection.Close();
            }

            {
                myConnection.Open();

                SqlCommand cmd = new SqlCommand("SELECT Rain_Value FROM DengueMonitoring.dbo.tbl_prediction where Date = '" + GridView1.SelectedRow.Cells[2].Text + "'", myConnection);
                txt_rain.Text = ((string)cmd.ExecuteScalar());
                myConnection.Close();
            }

            {
                myConnection.Open();

                SqlCommand cmd = new SqlCommand("SELECT Avg_Temp FROM DengueMonitoring.dbo.tbl_prediction where Date = '" + GridView1.SelectedRow.Cells[2].Text + "'", myConnection);
                txt_temp.Text = ((string)cmd.ExecuteScalar());
                myConnection.Close();
            } */


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

        protected void Button1_Click(object sender, EventArgs e)
        {

            //==============update patient table================================
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
                cmd1.CommandText = "Update DengueMonitoring.dbo.tbl_patient Set Gender='" + DropDownList1.Items[DropDownList1.SelectedIndex].Text + "', Age='" + txt_age.Text + "', Status= '" + DropDownList3.Items[DropDownList3.SelectedIndex].Text + "', IgM='" + Label2.Text + "', IgG='" + Label3.Text + "' where Id_Patient='" + GridView1.SelectedRow.Cells[1].Text + "' ";
                SqlDataAdapter da1 = new SqlDataAdapter();


                cmd1.Connection = myConnection;
                da1.SelectCommand = cmd1;

                cmd1.ExecuteNonQuery();
                myConnection.Close();

                Response.Redirect("UpdateData.aspx");
            
            }
            //========================End update table patient============




        }
  
       


    }
}