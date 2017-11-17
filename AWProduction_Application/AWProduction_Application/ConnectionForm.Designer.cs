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
            this.SuspendLayout();
            // 
            // SeverNameLabel
            // 
            this.SeverNameLabel.AutoSize = true;
            this.SeverNameLabel.Location = new System.Drawing.Point(224, 129);
            this.SeverNameLabel.Name = "SeverNameLabel";
            this.SeverNameLabel.Size = new System.Drawing.Size(100, 13);
            this.SeverNameLabel.TabIndex = 0;
            this.SeverNameLabel.Text = "Enter Server Name:";
            // 
            // ServerNametbox
            // 
            this.ServerNametbox.Location = new System.Drawing.Point(176, 145);
            this.ServerNametbox.Name = "ServerNametbox";
            this.ServerNametbox.Size = new System.Drawing.Size(195, 20);
            this.ServerNametbox.TabIndex = 1;
            // 
            // ServerNameEnter
            // 
            this.ServerNameEnter.Location = new System.Drawing.Point(378, 144);
            this.ServerNameEnter.Name = "ServerNameEnter";
            this.ServerNameEnter.Size = new System.Drawing.Size(75, 23);
            this.ServerNameEnter.TabIndex = 2;
            this.ServerNameEnter.Text = "Enter";
            this.ServerNameEnter.UseVisualStyleBackColor = true;
            this.ServerNameEnter.Click += new System.EventHandler(this.ServerNameEnter_Click);
            // 
            // ConnectionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 361);
            this.Controls.Add(this.ServerNameEnter);
            this.Controls.Add(this.ServerNametbox);
            this.Controls.Add(this.SeverNameLabel);
            this.Name = "ConnectionForm";
            this.Text = "ConnectionForm";
            this.Shown += new System.EventHandler(this.ConnectionForm_Shown);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label SeverNameLabel;
        private System.Windows.Forms.TextBox ServerNametbox;
        private System.Windows.Forms.Button ServerNameEnter;
    }
}