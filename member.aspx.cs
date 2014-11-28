using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace rcproject
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection objConn = null;
            string strConnString = null;
            StringBuilder strSQL = default(StringBuilder);
            SqlCommand objCmd = null;
            int intCount = 0;

            //*** Open Connection ***'
            strConnString = "Server=localhost;Uid=sa;PASSWORD=1234;database=rcproject;Max Pool Size=400;Connect Timeout=600;";
            objConn = new SqlConnection();
            objConn.ConnectionString = strConnString;
            objConn.Open();

            //*** Check Login ***'
            strSQL = new StringBuilder();
            strSQL.Append(" SELECT COUNT(*) FROM member ");
            strSQL.Append(" WHERE Username = @sUsername ");
            strSQL.Append(" AND Password = @sPassword ");
            objCmd = new SqlCommand(strSQL.ToString(), objConn);
            objCmd.Parameters.Add("@sUsername", SqlDbType.VarChar).Value = this.txtUsername.Text;
            objCmd.Parameters.Add("@sPassword", SqlDbType.VarChar).Value = this.txtPassword.Text;
            intCount = (int)objCmd.ExecuteScalar();

            objConn.Close();
            objConn = null;

            if (intCount <= 0)
            {
                this.lblStatus.ForeColor = System.Drawing.Color.Red;
                this.lblStatus.Text = "Username or Password wrong!";
            }
            else
            {
                Session["strUsername"] = this.txtUsername.Text;
                Response.Redirect("Default1.aspx");
            }
        }
    }
}
