using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibManagement
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (checkMemberExists(dt))
            {
                TextBox2.Text = dt.Rows[0][0].ToString();
                TextBox7.Text = dt.Rows[0][10].ToString();
                TextBox8.Text = dt.Rows[0][1].ToString();
                TextBox1.Text = dt.Rows[0][2].ToString();
                TextBox4.Text = dt.Rows[0][3].ToString();
                TextBox9.Text = dt.Rows[0][4].ToString();
                TextBox10.Text = dt.Rows[0][4].ToString();
                TextBox11.Text = dt.Rows[0][5].ToString();
                TextBox12.Text = dt.Rows[0][6].ToString();
            }
            else
            {
                Response.Write("<script>alert('Wrong member ID')</script>");
            }
        }

        private bool checkMemberExists(DataTable dt)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        private bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void updateAccountStatus(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status=@account_status WHERE member_id='" + TextBox3.Text.Trim() + "';", con);
                cmd.Parameters.AddWithValue("@account_status", status);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        private void deleteAccount()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        private void clearTextBoxes()
        {
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateAccountStatus("active");
            GridView1.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateAccountStatus("pending");
            GridView1.DataBind();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateAccountStatus("deactive");
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                deleteAccount();
                clearTextBoxes();
            }
            else
            {
                Response.Write("<script>alert('Member does not exists')</script>");
            }
        }
    }
}