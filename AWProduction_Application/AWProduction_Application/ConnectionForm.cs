using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AWProduction_Application
{
    public partial class ConnectionForm : Form
    {

        public static string ConnectionString = null;
        public ConnectionForm()
        {
            InitializeComponent();
            //this.Shown += ConnectionForm_Shown;
        }

        private void ConnectionForm_Shown(object sender, EventArgs e)
        {
            //Displays login window when the connectrion form as started
            new LoginForm().Show();
        }

        private void ServerNameEnter_Click(object sender, EventArgs e)
        {
            //Assigns the user input server name to a variable
            string serverName = ServerNametbox.Text;

            //Creates a connection string based on the server name and assigns it to the ConnectionString static variable
            ConnectionString = "Server = " + serverName + ";" + "database = AWProduction;" + "Trusted_Connection = yes;";

            MessageBox.Show("Connecting to: " + ConnectionString);

            //close
            this.Close();
        }
    }
}
