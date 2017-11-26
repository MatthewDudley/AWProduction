using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AWProduction_Application
{
    public partial class ConnectionForm : Form
    {
        //static ConnectionString to use
        public static string ConnectionString = null;

        public ConnectionForm()
        {
            InitializeComponent();
        }

        private void ServerNameEnter_Click(object sender, EventArgs e)
        {
            //Assigns the user input server name to a variable
            string serverName = ServerNametbox.Text;

            //Creates a connection string based on the server name and assigns it to the ConnectionString static variable
            ConnectionString = "Server = " + serverName + ";" + "database = AWProduction;" + "Trusted_Connection = yes;";

            //MessageBox.Show("Connecting to: " + ConnectionString);

            //show login information
            LoginPanel.Visible = true;
            Passwordtbox.PasswordChar = '*';
        }

        private void Loginbtn_Click(object sender, EventArgs e)
        {
            if (Login(Usernametbox.Text.Trim(), Passwordtbox.Text.Trim()))
            {
                //MessageBox.Show("Login Successfully!!");

                this.Hide();
                new MainForm().Show();
            }
            else
            {
                MessageBox.Show("Invalid Username or Password , please try again.");
                Usernametbox.Text = "";
                Passwordtbox.Text = "";
                Usernametbox.Focus();
            }

            //close
            //this.Close();
        }

        private bool Login(string username, string password)
        {
            bool login = false;

            string statement = "Select ea.Username, p.Password from EMPLOYEE_ACCOUNT ea join PASSWORD p on p.PasswordID = ea.PasswordID where Username = @Username and Password = @Password";

            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand(statement, connection);
                    sqlCommand.Parameters.Add(new SqlParameter("Username", username));
                    sqlCommand.Parameters.Add(new SqlParameter("Password", password));
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    if (reader.HasRows)
                    {
                        login = true;
                        return login;
                    }
                    else
                    {
                        login = false;
                        return login;
                    }
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                    login = false;
                    return login;
                }
            }
        }
    }
}
