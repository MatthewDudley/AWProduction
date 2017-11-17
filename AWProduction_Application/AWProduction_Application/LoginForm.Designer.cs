namespace AWProduction_Application
{
    partial class LoginForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.UsernameEmailtbox = new System.Windows.Forms.TextBox();
            this.Passwordtbox = new System.Windows.Forms.TextBox();
            this.LoginGroup = new System.Windows.Forms.GroupBox();
            this.UsernameEmailLabel = new System.Windows.Forms.Label();
            this.PasswordLabel = new System.Windows.Forms.Label();
            this.Loginbtn = new System.Windows.Forms.Button();
            this.LoginGroup.SuspendLayout();
            this.SuspendLayout();
            // 
            // UsernameEmailtbox
            // 
            this.UsernameEmailtbox.Location = new System.Drawing.Point(28, 48);
            this.UsernameEmailtbox.Name = "UsernameEmailtbox";
            this.UsernameEmailtbox.Size = new System.Drawing.Size(149, 20);
            this.UsernameEmailtbox.TabIndex = 0;
            // 
            // Passwordtbox
            // 
            this.Passwordtbox.Location = new System.Drawing.Point(28, 96);
            this.Passwordtbox.Name = "Passwordtbox";
            this.Passwordtbox.Size = new System.Drawing.Size(149, 20);
            this.Passwordtbox.TabIndex = 1;
            // 
            // LoginGroup
            // 
            this.LoginGroup.Controls.Add(this.Loginbtn);
            this.LoginGroup.Controls.Add(this.PasswordLabel);
            this.LoginGroup.Controls.Add(this.UsernameEmailLabel);
            this.LoginGroup.Controls.Add(this.Passwordtbox);
            this.LoginGroup.Controls.Add(this.UsernameEmailtbox);
            this.LoginGroup.Location = new System.Drawing.Point(136, 66);
            this.LoginGroup.Name = "LoginGroup";
            this.LoginGroup.Size = new System.Drawing.Size(297, 140);
            this.LoginGroup.TabIndex = 2;
            this.LoginGroup.TabStop = false;
            this.LoginGroup.Text = "Login Information";
            // 
            // UsernameEmailLabel
            // 
            this.UsernameEmailLabel.AutoSize = true;
            this.UsernameEmailLabel.Location = new System.Drawing.Point(28, 29);
            this.UsernameEmailLabel.Name = "UsernameEmailLabel";
            this.UsernameEmailLabel.Size = new System.Drawing.Size(98, 13);
            this.UsernameEmailLabel.TabIndex = 2;
            this.UsernameEmailLabel.Text = "Username or Email:";
            // 
            // PasswordLabel
            // 
            this.PasswordLabel.AutoSize = true;
            this.PasswordLabel.Location = new System.Drawing.Point(28, 77);
            this.PasswordLabel.Name = "PasswordLabel";
            this.PasswordLabel.Size = new System.Drawing.Size(56, 13);
            this.PasswordLabel.TabIndex = 3;
            this.PasswordLabel.Text = "Password:";
            // 
            // Loginbtn
            // 
            this.Loginbtn.Location = new System.Drawing.Point(216, 111);
            this.Loginbtn.Name = "Loginbtn";
            this.Loginbtn.Size = new System.Drawing.Size(75, 23);
            this.Loginbtn.TabIndex = 4;
            this.Loginbtn.Text = "Login";
            this.Loginbtn.UseVisualStyleBackColor = true;
            this.Loginbtn.Click += new System.EventHandler(this.Loginbtn_Click);
            // 
            // LoginForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 361);
            this.Controls.Add(this.LoginGroup);
            this.Name = "LoginForm";
            this.Text = "LoginForm";
            this.LoginGroup.ResumeLayout(false);
            this.LoginGroup.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox UsernameEmailtbox;
        private System.Windows.Forms.TextBox Passwordtbox;
        private System.Windows.Forms.GroupBox LoginGroup;
        private System.Windows.Forms.Button Loginbtn;
        private System.Windows.Forms.Label PasswordLabel;
        private System.Windows.Forms.Label UsernameEmailLabel;
    }
}