using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Orders : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {

            }

            protected void TextBox2_TextChanged(object sender, EventArgs e)
            {

            }

            protected void TextBox1_TextChanged(object sender, EventArgs e)
            {

            }

            protected void Unnamed4_TextChanged(object sender, EventArgs e)
            {

            }
            protected void Unnamed1_Click(object sender, EventArgs e)
            {
                string oname = TextBox1.Text;
                string qty = TextBox2.Text;
                string res = "Your order for " + oname + " is successful for quantity: " + qty;
                yname.Text = res;
            }

        }
    }
