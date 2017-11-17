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
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();

            //set password controls
            InitializePasswordControl();
        }

        private void InitializePasswordControl()
        {
            //// Set to no text.
            //Passwordtbox.Text = "";
            // The password character is an asterisk.
            Passwordtbox.PasswordChar = '*';
            //// The control will allow no more than 14 characters.
            //Passwordtbox.MaxLength = 14;
        }

        private void Loginbtn_Click(object sender, EventArgs e)
        {
            //Login btn

            //take inputs from username and password tbox and check against database records to let them in.

            //testing
            MessageBox.Show("Login: " + UsernameEmailtbox.Text + "\n" + Passwordtbox.Text);

            //close
            this.Close();
        }
    }
}
