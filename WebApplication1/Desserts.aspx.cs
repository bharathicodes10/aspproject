using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Desserts : System.Web.UI.Page
    {
        static string connectionString = "server=localhost;userid=root;password=;database=sample";
        MySqlConnection connection = new MySqlConnection(connectionString);
        string cmd;
        MySqlCommand command;
        MySqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            binddata();
        }
        public void binddata()
        {
            try
            {
                connection.Open();
                cmd = "select * from Desserts";
                command = new MySqlCommand(cmd, connection);
                adapter = new MySqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                connection.Close();
            }
            catch (Exception ex) { }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string empname = txtname.Text;
            string emppos = txtpos.Text;
            string empsal = txtsal.Text;
            try
            {
                connection.Open();
                cmd = "insert into Desserts(Name,Price,Quantity)values('" + empname + "','" + emppos + "','" + empsal + "')";
                command = new MySqlCommand(cmd, connection);
                command.ExecuteNonQuery();
                connection.Close();
                binddata();
            }
            catch (Exception ex) { }
        }

        protected void btnusub_Click(object sender, EventArgs e)
        {
            string name = txtuname.Text;
            string empid = txtuid.Text;
            string emppos = txtupos.Text;
            string empsal = txtusal.Text;
            try
            {
                connection.Open();
                cmd = "update Desserts set Name='"+name+"', Price='" + emppos + "',Quantity='" + empsal + "' where DessertId='" + empid + "'";
                command = new MySqlCommand(cmd, connection);
                command.ExecuteNonQuery();
                connection.Close();
                binddata();
            }
            catch (Exception ex) { }
        }

        protected void btndt_Click(object sender, EventArgs e)
        {
            string empid = txtdid.Text;
            try
            {
                connection.Open();
                cmd = "delete from Desserts where DessertId='" + empid + "'";
                command = new MySqlCommand(cmd, connection);
                command.ExecuteNonQuery();
                connection.Close();
                binddata();
            }
            catch (Exception ex) { }

        }
    }
}