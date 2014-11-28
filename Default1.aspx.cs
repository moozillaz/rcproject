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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //*** Check login Status ***//
            if (Convert.ToString(Session["strUsername"]) == "")
            {
                Response.Redirect("frmLogin.aspx");
                Response.End();
            }

            ViewDataInf();
        }

        protected void ViewDataInf()
        {
            SqlConnection objConn = null;
            string strConnString = null;
            StringBuilder strSQL = default(StringBuilder);
            SqlCommand objCmd = null;
            SqlDataAdapter dtAdapter = null;
            DataTable dt = null;
            DataSet ds = new DataSet();

            //*** Open Connection ***'
            strConnString = "Server=localhost;UID=sa;PASSWORD=1234;database=rcproject;Max Pool Size=400;Connect Timeout=600;";
            objConn = new SqlConnection();
            objConn.ConnectionString = strConnString;
            objConn.Open();

            strSQL = new StringBuilder();
            strSQL.Append(" SELECT * FROM member ");
            strSQL.Append(" WHERE Username = @sUsername ");

            objCmd = new SqlCommand(strSQL.ToString(), objConn);
            objCmd.Parameters.Add("@sUsername", SqlDbType.VarChar).Value = Session["strUsername"];

            dtAdapter = new SqlDataAdapter();
            dtAdapter.SelectCommand = objCmd;
            dtAdapter.Fill(ds);

            dt = ds.Tables[0];

            dtAdapter = null;
            objConn.Close();
            objConn = null;

            if (dt.Rows.Count > 0)
            {
                this.lblUsername.Text = dt.Rows[0]["Username"].ToString();
                this.lblPassword.Text = dt.Rows[0]["Password"].ToString();
                this.lblName.Text = dt.Rows[0]["Name"].ToString();
                this.lblSurname.Text = dt.Rows[0]["Surname"].ToString();
                this.lblEmail.Text = dt.Rows[0]["Email"].ToString();
                this.lblTel.Text = dt.Rows[0]["Tel"].ToString();
            }

        }

    

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("member.aspx");
        }

    }
}