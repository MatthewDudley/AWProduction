namespace AWProduction_Application
{
    partial class ConnectionForm
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
            this.SeverNameLabel = new System.Windows.Forms.Label();
            this.ServerNametbox = new System.Windows.Forms.TextBox();
            this.ServerNameEnter = new System.Windows.Forms.Button();
            this.LoginPanel = new System.Windows.Forms.Panel();
            this.LoginGroup = new System.Windows.Forms.GroupBox();
            this.Loginbtn = new System.Windows.Forms.Button();
            this.PasswordLabel = new System.Windows.Forms.Label();
            this.UsernameLabel = new System.Windows.Forms.Label();
            this.Passwordtbox = new System.Windows.Forms.TextBox();
            this.Usernametbox = new System.Windows.Forms.TextBox();
            this.ConnectionGroup = new System.Windows.Forms.GroupBox();
            this.LoginPanel.SuspendLayout();
            this.LoginGroup.SuspendLayout();
            this.ConnectionGroup.SuspendLayout();
            this.SuspendLayout();
            // 
            // SeverNameLabel
            // 
            this.SeverNameLabel.AutoSize = true;
            this.SeverNameLabel.Location = new System.Drawing.Point(88, 31);
            this.SeverNameLabel.Name = "SeverNameLabel";
            this.SeverNameLabel.Size = new System.Drawing.Size(100, 13);
            this.SeverNameLabel.TabIndex = 0;
            this.SeverNameLabel.Text = "Enter Server Name:";
            // 
            // ServerNametbox
            // 
            this.ServerNametbox.Location = new System.Drawing.Point(40, 47);
            this.ServerNametbox.Name = "ServerNametbox";
            this.ServerNametbox.Size = new System.Drawing.Size(195, 20);
            this.ServerNametbox.TabIndex = 1;
            // 
            // ServerNameEnter
            // 
            this.ServerNameEnter.Location = new System.Drawing.Point(242, 46);
            this.ServerNameEnter.Name = "ServerNameEnter";
            this.ServerNameEnter.Size = new System.Drawing.Size(75, 23);
            this.ServerNameEnter.TabIndex = 2;
            this.ServerNameEnter.Text = "Enter";
            this.ServerNameEnter.UseVisualStyleBackColor = true;
            this.ServerNameEnter.Click += new System.EventHandler(this.ServerNameEnter_Click);
            // 
            // LoginPanel
            // 
            this.LoginPanel.Controls.Add(this.LoginGroup);
            this.LoginPanel.Location = new System.Drawing.Point(79, 97);
            this.LoginPanel.Name = "LoginPanel";
            this.LoginPanel.Size = new System.Drawing.Size(436, 176);
            this.LoginPanel.TabIndex = 3;
            this.LoginPanel.Visible = false;
            // 
            // LoginGroup
            // 
            this.LoginGroup.Controls.Add(this.Loginbtn);
            this.LoginGroup.Controls.Add(this.PasswordLabel);
            this.LoginGroup.Controls.Add(this.UsernameLabel);
            this.LoginGroup.Controls.Add(this.Passwordtbox);
            this.LoginGroup.Controls.Add(this.Usernametbox);
            this.LoginGroup.Location = new System.Drawing.Point(70, 3);
            this.LoginGroup.Name = "LoginGroup";
            this.LoginGroup.Size = new System.Drawing.Size(297, 140);
            this.LoginGroup.TabIndex = 3;
            this.LoginGroup.TabStop = false;
            this.LoginGroup.Text = "Login Information";
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
            // PasswordLabel
            // 
            this.PasswordLabel.AutoSize = true;
            this.PasswordLabel.Location = new System.Drawing.Point(28, 77);
            this.PasswordLabel.Name = "PasswordLabel";
            this.PasswordLabel.Size = new System.Drawing.Size(56, 13);
            this.PasswordLabel.TabIndex = 3;
            this.PasswordLabel.Text = "Password:";
            // 
            // UsernameLabel
            // 
            this.UsernameLabel.AutoSize = true;
            this.UsernameLabel.Location = new System.Drawing.Point(28, 29);
            this.UsernameLabel.Name = "UsernameLabel";
            this.UsernameLabel.Size = new System.Drawing.Size(58, 13);
            this.UsernameLabel.TabIndex = 2;
            this.UsernameLabel.Text = "Username:";
            // 
            // Passwordtbox
            // 
            this.Passwordtbox.Location = new System.Drawing.Point(28, 96);
            this.Passwordtbox.Name = "Passwordtbox";
            this.Passwordtbox.Size = new System.Drawing.Size(149, 20);
            this.Passwordtbox.TabIndex = 1;
            // 
            // Usernametbox
            // 
            this.Usernametbox.Location = new System.Drawing.Point(28, 48);
            this.Usernametbox.Name = "Usernametbox";
            this.Usernametbox.Size = new System.Drawing.Size(149, 20);
            this.Usernametbox.TabIndex = 0;
            // 
            // ConnectionGroup
            // 
            this.ConnectionGroup.Controls.Add(this.SeverNameLabel);
            this.ConnectionGroup.Controls.Add(this.ServerNametbox);
            this.ConnectionGroup.Controls.Add(this.ServerNameEnter);
            this.ConnectionGroup.Location = new System.Drawing.Point(127, 97);
            this.ConnectionGroup.Name = "ConnectionGroup";
            this.ConnectionGroup.Size = new System.Drawing.Size(352, 100);
            this.ConnectionGroup.TabIndex = 4;
            this.ConnectionGroup.TabStop = false;
            this.ConnectionGroup.Text = "Database Connection";
            // 
            // ConnectionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 361);
            this.Controls.Add(this.LoginPanel);
            this.Controls.Add(this.ConnectionGroup);
            this.Name = "ConnectionForm";
            this.Text = "AW Production";
            this.LoginPanel.ResumeLayout(false);
            this.LoginGroup.ResumeLayout(false);
            this.LoginGroup.PerformLayout();
            this.ConnectionGroup.ResumeLayout(false);
            this.ConnectionGroup.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label SeverNameLabel;
        private System.Windows.Forms.TextBox ServerNametbox;
        private System.Windows.Forms.Button ServerNameEnter;
        private System.Windows.Forms.Panel LoginPanel;
        private System.Windows.Forms.GroupBox LoginGroup;
        private System.Windows.Forms.Button Loginbtn;
        private System.Windows.Forms.Label PasswordLabel;
        private System.Windows.Forms.Label UsernameLabel;
        private System.Windows.Forms.TextBox Passwordtbox;
        private System.Windows.Forms.TextBox Usernametbox;
        private System.Windows.Forms.GroupBox ConnectionGroup;
    }
}