namespace AWProduction_Application
{
    partial class MainForm
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
            this.MainFormTabControl = new System.Windows.Forms.TabControl();
            this.WorkOrderPage = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.CreateWorkOrderbtn = new System.Windows.Forms.Button();
            this.WOOptionsGroup = new System.Windows.Forms.GroupBox();
            this.SearchWorkOrderbtn = new System.Windows.Forms.Button();
            this.WOCreatePanel = new System.Windows.Forms.Panel();
            this.WOCEmpIDLabel = new System.Windows.Forms.Label();
            this.WOCEmpIDtbox = new System.Windows.Forms.TextBox();
            this.WOCEmpNametbox = new System.Windows.Forms.TextBox();
            this.WOCEmpNameLabel = new System.Windows.Forms.Label();
            this.WOCDeptHeadtbox = new System.Windows.Forms.TextBox();
            this.WOCDeptHeadLabel = new System.Windows.Forms.Label();
            this.WOCDatetbox = new System.Windows.Forms.TextBox();
            this.WOCDateLabel = new System.Windows.Forms.Label();
            this.WOCProductIDLabel = new System.Windows.Forms.Label();
            this.WOCriteriaGroup = new System.Windows.Forms.GroupBox();
            this.WOCProductIDddlist = new System.Windows.Forms.ComboBox();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.BillOfMaterialLabel = new System.Windows.Forms.Label();
            this.WOCClearbtn = new System.Windows.Forms.Button();
            this.WOCCreatebtn = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.WOSbtnPanel = new System.Windows.Forms.Panel();
            this.WOSSearchbtn = new System.Windows.Forms.Button();
            this.MainFormTabControl.SuspendLayout();
            this.WorkOrderPage.SuspendLayout();
            this.WOOptionsGroup.SuspendLayout();
            this.WOCreatePanel.SuspendLayout();
            this.WOCriteriaGroup.SuspendLayout();
            this.WOSbtnPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // MainFormTabControl
            // 
            this.MainFormTabControl.Controls.Add(this.WorkOrderPage);
            this.MainFormTabControl.Controls.Add(this.tabPage2);
            this.MainFormTabControl.Controls.Add(this.tabPage3);
            this.MainFormTabControl.Controls.Add(this.tabPage4);
            this.MainFormTabControl.Location = new System.Drawing.Point(12, 12);
            this.MainFormTabControl.Name = "MainFormTabControl";
            this.MainFormTabControl.SelectedIndex = 0;
            this.MainFormTabControl.Size = new System.Drawing.Size(760, 487);
            this.MainFormTabControl.TabIndex = 0;
            // 
            // WorkOrderPage
            // 
            this.WorkOrderPage.Controls.Add(this.WOCreatePanel);
            this.WorkOrderPage.Controls.Add(this.WOOptionsGroup);
            this.WorkOrderPage.Location = new System.Drawing.Point(4, 22);
            this.WorkOrderPage.Name = "WorkOrderPage";
            this.WorkOrderPage.Padding = new System.Windows.Forms.Padding(3);
            this.WorkOrderPage.Size = new System.Drawing.Size(752, 461);
            this.WorkOrderPage.TabIndex = 0;
            this.WorkOrderPage.Text = "Work Order";
            this.WorkOrderPage.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(652, 411);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Inventory";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(752, 461);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Product Information";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPage4
            // 
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(752, 461);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Admin Page";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // CreateWorkOrderbtn
            // 
            this.CreateWorkOrderbtn.Location = new System.Drawing.Point(54, 24);
            this.CreateWorkOrderbtn.Name = "CreateWorkOrderbtn";
            this.CreateWorkOrderbtn.Size = new System.Drawing.Size(116, 23);
            this.CreateWorkOrderbtn.TabIndex = 0;
            this.CreateWorkOrderbtn.Text = "Create Work Order";
            this.CreateWorkOrderbtn.UseVisualStyleBackColor = true;
            this.CreateWorkOrderbtn.Click += new System.EventHandler(this.CreateWorkOrderbtn_Click);
            // 
            // WOOptionsGroup
            // 
            this.WOOptionsGroup.Controls.Add(this.SearchWorkOrderbtn);
            this.WOOptionsGroup.Controls.Add(this.CreateWorkOrderbtn);
            this.WOOptionsGroup.Location = new System.Drawing.Point(22, 14);
            this.WOOptionsGroup.Name = "WOOptionsGroup";
            this.WOOptionsGroup.Size = new System.Drawing.Size(363, 66);
            this.WOOptionsGroup.TabIndex = 1;
            this.WOOptionsGroup.TabStop = false;
            this.WOOptionsGroup.Text = "Work Order Options";
            // 
            // SearchWorkOrderbtn
            // 
            this.SearchWorkOrderbtn.Location = new System.Drawing.Point(177, 24);
            this.SearchWorkOrderbtn.Name = "SearchWorkOrderbtn";
            this.SearchWorkOrderbtn.Size = new System.Drawing.Size(128, 23);
            this.SearchWorkOrderbtn.TabIndex = 1;
            this.SearchWorkOrderbtn.Text = "Search Work Orders";
            this.SearchWorkOrderbtn.UseVisualStyleBackColor = true;
            this.SearchWorkOrderbtn.Click += new System.EventHandler(this.SearchWorkOrderbtn_Click);
            // 
            // WOCreatePanel
            // 
            this.WOCreatePanel.Controls.Add(this.WOSbtnPanel);
            this.WOCreatePanel.Controls.Add(this.WOCCreatebtn);
            this.WOCreatePanel.Controls.Add(this.WOCClearbtn);
            this.WOCreatePanel.Controls.Add(this.WOCriteriaGroup);
            this.WOCreatePanel.Location = new System.Drawing.Point(6, 93);
            this.WOCreatePanel.Name = "WOCreatePanel";
            this.WOCreatePanel.Size = new System.Drawing.Size(740, 362);
            this.WOCreatePanel.TabIndex = 2;
            this.WOCreatePanel.Visible = false;
            // 
            // WOCEmpIDLabel
            // 
            this.WOCEmpIDLabel.AutoSize = true;
            this.WOCEmpIDLabel.Location = new System.Drawing.Point(48, 68);
            this.WOCEmpIDLabel.Name = "WOCEmpIDLabel";
            this.WOCEmpIDLabel.Size = new System.Drawing.Size(70, 13);
            this.WOCEmpIDLabel.TabIndex = 0;
            this.WOCEmpIDLabel.Text = "Employee ID:";
            // 
            // WOCEmpIDtbox
            // 
            this.WOCEmpIDtbox.Location = new System.Drawing.Point(127, 65);
            this.WOCEmpIDtbox.Name = "WOCEmpIDtbox";
            this.WOCEmpIDtbox.Size = new System.Drawing.Size(109, 20);
            this.WOCEmpIDtbox.TabIndex = 1;
            // 
            // WOCEmpNametbox
            // 
            this.WOCEmpNametbox.Location = new System.Drawing.Point(371, 65);
            this.WOCEmpNametbox.Name = "WOCEmpNametbox";
            this.WOCEmpNametbox.Size = new System.Drawing.Size(128, 20);
            this.WOCEmpNametbox.TabIndex = 3;
            // 
            // WOCEmpNameLabel
            // 
            this.WOCEmpNameLabel.AutoSize = true;
            this.WOCEmpNameLabel.Location = new System.Drawing.Point(278, 68);
            this.WOCEmpNameLabel.Name = "WOCEmpNameLabel";
            this.WOCEmpNameLabel.Size = new System.Drawing.Size(87, 13);
            this.WOCEmpNameLabel.TabIndex = 2;
            this.WOCEmpNameLabel.Text = "Employee Name:";
            // 
            // WOCDeptHeadtbox
            // 
            this.WOCDeptHeadtbox.Location = new System.Drawing.Point(127, 101);
            this.WOCDeptHeadtbox.Name = "WOCDeptHeadtbox";
            this.WOCDeptHeadtbox.Size = new System.Drawing.Size(109, 20);
            this.WOCDeptHeadtbox.TabIndex = 5;
            // 
            // WOCDeptHeadLabel
            // 
            this.WOCDeptHeadLabel.AutoSize = true;
            this.WOCDeptHeadLabel.Location = new System.Drawing.Point(24, 104);
            this.WOCDeptHeadLabel.Name = "WOCDeptHeadLabel";
            this.WOCDeptHeadLabel.Size = new System.Drawing.Size(94, 13);
            this.WOCDeptHeadLabel.TabIndex = 4;
            this.WOCDeptHeadLabel.Text = "Department Head:";
            // 
            // WOCDatetbox
            // 
            this.WOCDatetbox.Location = new System.Drawing.Point(127, 28);
            this.WOCDatetbox.Name = "WOCDatetbox";
            this.WOCDatetbox.Size = new System.Drawing.Size(109, 20);
            this.WOCDatetbox.TabIndex = 7;
            // 
            // WOCDateLabel
            // 
            this.WOCDateLabel.AutoSize = true;
            this.WOCDateLabel.Location = new System.Drawing.Point(27, 31);
            this.WOCDateLabel.Name = "WOCDateLabel";
            this.WOCDateLabel.Size = new System.Drawing.Size(91, 13);
            this.WOCDateLabel.TabIndex = 6;
            this.WOCDateLabel.Text = "Work Order Date:";
            // 
            // WOCProductIDLabel
            // 
            this.WOCProductIDLabel.AutoSize = true;
            this.WOCProductIDLabel.Location = new System.Drawing.Point(304, 104);
            this.WOCProductIDLabel.Name = "WOCProductIDLabel";
            this.WOCProductIDLabel.Size = new System.Drawing.Size(61, 13);
            this.WOCProductIDLabel.TabIndex = 8;
            this.WOCProductIDLabel.Text = "Product ID:";
            // 
            // WOCriteriaGroup
            // 
            this.WOCriteriaGroup.Controls.Add(this.label1);
            this.WOCriteriaGroup.Controls.Add(this.textBox1);
            this.WOCriteriaGroup.Controls.Add(this.label2);
            this.WOCriteriaGroup.Controls.Add(this.textBox2);
            this.WOCriteriaGroup.Controls.Add(this.BillOfMaterialLabel);
            this.WOCriteriaGroup.Controls.Add(this.richTextBox1);
            this.WOCriteriaGroup.Controls.Add(this.WOCProductIDddlist);
            this.WOCriteriaGroup.Controls.Add(this.WOCEmpIDLabel);
            this.WOCriteriaGroup.Controls.Add(this.WOCEmpIDtbox);
            this.WOCriteriaGroup.Controls.Add(this.WOCProductIDLabel);
            this.WOCriteriaGroup.Controls.Add(this.WOCEmpNameLabel);
            this.WOCriteriaGroup.Controls.Add(this.WOCDatetbox);
            this.WOCriteriaGroup.Controls.Add(this.WOCEmpNametbox);
            this.WOCriteriaGroup.Controls.Add(this.WOCDateLabel);
            this.WOCriteriaGroup.Controls.Add(this.WOCDeptHeadLabel);
            this.WOCriteriaGroup.Controls.Add(this.WOCDeptHeadtbox);
            this.WOCriteriaGroup.Location = new System.Drawing.Point(17, 19);
            this.WOCriteriaGroup.Name = "WOCriteriaGroup";
            this.WOCriteriaGroup.Size = new System.Drawing.Size(515, 295);
            this.WOCriteriaGroup.TabIndex = 10;
            this.WOCriteriaGroup.TabStop = false;
            this.WOCriteriaGroup.Text = "Work Order Criteria";
            // 
            // WOCProductIDddlist
            // 
            this.WOCProductIDddlist.FormattingEnabled = true;
            this.WOCProductIDddlist.Location = new System.Drawing.Point(371, 101);
            this.WOCProductIDddlist.Name = "WOCProductIDddlist";
            this.WOCProductIDddlist.Size = new System.Drawing.Size(100, 21);
            this.WOCProductIDddlist.TabIndex = 9;
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(43, 197);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(406, 83);
            this.richTextBox1.TabIndex = 10;
            this.richTextBox1.Text = "";
            // 
            // BillOfMaterialLabel
            // 
            this.BillOfMaterialLabel.AutoSize = true;
            this.BillOfMaterialLabel.Location = new System.Drawing.Point(43, 178);
            this.BillOfMaterialLabel.Name = "BillOfMaterialLabel";
            this.BillOfMaterialLabel.Size = new System.Drawing.Size(75, 13);
            this.BillOfMaterialLabel.TabIndex = 11;
            this.BillOfMaterialLabel.Text = "Bill of Material:";
            // 
            // WOCClearbtn
            // 
            this.WOCClearbtn.Location = new System.Drawing.Point(537, 24);
            this.WOCClearbtn.Name = "WOCClearbtn";
            this.WOCClearbtn.Size = new System.Drawing.Size(75, 23);
            this.WOCClearbtn.TabIndex = 11;
            this.WOCClearbtn.Text = "Clear";
            this.WOCClearbtn.UseVisualStyleBackColor = true;
            this.WOCClearbtn.Click += new System.EventHandler(this.WOCClearbtn_Click);
            // 
            // WOCCreatebtn
            // 
            this.WOCCreatebtn.Location = new System.Drawing.Point(538, 54);
            this.WOCCreatebtn.Name = "WOCCreatebtn";
            this.WOCCreatebtn.Size = new System.Drawing.Size(121, 23);
            this.WOCCreatebtn.TabIndex = 12;
            this.WOCCreatebtn.Text = "Create Work Order";
            this.WOCCreatebtn.UseVisualStyleBackColor = true;
            this.WOCCreatebtn.Click += new System.EventHandler(this.WOCreatebtn_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(256, 143);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 13);
            this.label1.TabIndex = 15;
            this.label1.Text = "Production End Date:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(371, 140);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(128, 20);
            this.textBox1.TabIndex = 12;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 143);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(112, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "Production Start Date:";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(127, 140);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(109, 20);
            this.textBox2.TabIndex = 14;
            // 
            // WOSbtnPanel
            // 
            this.WOSbtnPanel.Controls.Add(this.WOSSearchbtn);
            this.WOSbtnPanel.Location = new System.Drawing.Point(538, 54);
            this.WOSbtnPanel.Name = "WOSbtnPanel";
            this.WOSbtnPanel.Size = new System.Drawing.Size(121, 23);
            this.WOSbtnPanel.TabIndex = 13;
            this.WOSbtnPanel.Visible = false;
            // 
            // WOSSearchbtn
            // 
            this.WOSSearchbtn.Location = new System.Drawing.Point(-1, 0);
            this.WOSSearchbtn.Name = "WOSSearchbtn";
            this.WOSSearchbtn.Size = new System.Drawing.Size(122, 23);
            this.WOSSearchbtn.TabIndex = 0;
            this.WOSSearchbtn.Text = "Search";
            this.WOSSearchbtn.UseVisualStyleBackColor = true;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 511);
            this.Controls.Add(this.MainFormTabControl);
            this.Name = "MainForm";
            this.Text = "AdventureWorks - Production";
            this.MainFormTabControl.ResumeLayout(false);
            this.WorkOrderPage.ResumeLayout(false);
            this.WOOptionsGroup.ResumeLayout(false);
            this.WOCreatePanel.ResumeLayout(false);
            this.WOCriteriaGroup.ResumeLayout(false);
            this.WOCriteriaGroup.PerformLayout();
            this.WOSbtnPanel.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl MainFormTabControl;
        private System.Windows.Forms.TabPage WorkOrderPage;
        private System.Windows.Forms.Panel WOCreatePanel;
        private System.Windows.Forms.Button WOCCreatebtn;
        private System.Windows.Forms.Button WOCClearbtn;
        private System.Windows.Forms.GroupBox WOCriteriaGroup;
        private System.Windows.Forms.Label BillOfMaterialLabel;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.ComboBox WOCProductIDddlist;
        private System.Windows.Forms.Label WOCEmpIDLabel;
        private System.Windows.Forms.TextBox WOCEmpIDtbox;
        private System.Windows.Forms.Label WOCProductIDLabel;
        private System.Windows.Forms.Label WOCEmpNameLabel;
        private System.Windows.Forms.TextBox WOCDatetbox;
        private System.Windows.Forms.TextBox WOCEmpNametbox;
        private System.Windows.Forms.Label WOCDateLabel;
        private System.Windows.Forms.Label WOCDeptHeadLabel;
        private System.Windows.Forms.TextBox WOCDeptHeadtbox;
        private System.Windows.Forms.GroupBox WOOptionsGroup;
        private System.Windows.Forms.Button SearchWorkOrderbtn;
        private System.Windows.Forms.Button CreateWorkOrderbtn;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Panel WOSbtnPanel;
        private System.Windows.Forms.Button WOSSearchbtn;
    }
}

