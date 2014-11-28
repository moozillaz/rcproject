using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Data.SqlClient;
namespace rcproject
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click1(object sender, EventArgs e)
        {
            SqlConnection objConn = new SqlConnection();
            SqlCommand objCmd = new SqlCommand();
            String strConnString, strSQL;

            strConnString = "Server=localhost;Uid=sa;PASSWORD=1234;database=rcproject;Max Pool Size=400;Connect Timeout=600;";

            strSQL = "INSERT INTO member (Name,Surname,Email,Username,Password,Tel) " +
            " VALUES " +
            " ('" + this.txtName.Text + "','" + this.txtSurname.Text + "','" + this.txtMail.Text + "', " +
            " '" + this.txtUsername.Text + "','" + this.txtPassword.Text + "','" + this.txtTel.Text + "')";
            objConn.ConnectionString = strConnString;
            objConn.Open();
            objCmd.Connection = objConn;
            objCmd.CommandText = strSQL;
            objCmd.CommandType = CommandType.Text;


            this.Panel1.Visible = false;

            try
            {
                objCmd.ExecuteNonQuery();
                Response.Write("<script>alert('Register Complete ! Go to LoginPage') ; location.href='member.aspx'</script>");
                
            }
            catch (Exception ex)
            {
                this.lblStatus.Visible = true;
                this.lblStatus.Text = "Record can not insert Error (" + ex.Message + ")";
            }

            objConn.Close();
            objConn = null;
        }
    }
}
