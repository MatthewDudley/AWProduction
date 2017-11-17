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
            this.WorkOrderTab = new System.Windows.Forms.TabPage();
            this.WOCreatePanel = new System.Windows.Forms.Panel();
            this.WOSbtnPanel = new System.Windows.Forms.Panel();
            this.WOSSearchbtn = new System.Windows.Forms.Button();
            this.WOCCreatebtn = new System.Windows.Forms.Button();
            this.WOCClearbtn = new System.Windows.Forms.Button();
            this.WOCriteriaGroup = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.BillOfMaterialLabel = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.WOCProductIDddlist = new System.Windows.Forms.ComboBox();
            this.WOCEmpIDLabel = new System.Windows.Forms.Label();
            this.WOCEmpIDtbox = new System.Windows.Forms.TextBox();
            this.WOCProductIDLabel = new System.Windows.Forms.Label();
            this.WOCEmpNameLabel = new System.Windows.Forms.Label();
            this.WOCDatetbox = new System.Windows.Forms.TextBox();
            this.WOCEmpNametbox = new System.Windows.Forms.TextBox();
            this.WOCDateLabel = new System.Windows.Forms.Label();
            this.WOCDeptHeadLabel = new System.Windows.Forms.Label();
            this.WOCDeptHeadtbox = new System.Windows.Forms.TextBox();
            this.WOOptionsGroup = new System.Windows.Forms.GroupBox();
            this.SearchWorkOrderbtn = new System.Windows.Forms.Button();
            this.CreateWorkOrderbtn = new System.Windows.Forms.Button();
            this.InventoryTab = new System.Windows.Forms.TabPage();
            this.ProductTab = new System.Windows.Forms.TabPage();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.InvSearchGroup = new System.Windows.Forms.GroupBox();
            this.InvSearchProductIDLabel = new System.Windows.Forms.Label();
            this.InvSearchProductIDtbox = new System.Windows.Forms.TextBox();
            this.InvSearchProductNumtbox = new System.Windows.Forms.TextBox();
            this.InvSearchProductNumLabel = new System.Windows.Forms.Label();
            this.InvSearchLoctbox = new System.Windows.Forms.TextBox();
            this.InvSearchLocLabel = new System.Windows.Forms.Label();
            this.InvSearchListPricetbox = new System.Windows.Forms.TextBox();
            this.InvSearchListPriceLabel = new System.Windows.Forms.Label();
            this.InvSearchDateModtbox = new System.Windows.Forms.TextBox();
            this.InvSearchDateModLabel = new System.Windows.Forms.Label();
            this.InvSearchQuantbox = new System.Windows.Forms.TextBox();
            this.InvSearchQuanLabel = new System.Windows.Forms.Label();
            this.InvSearchClearbtn = new System.Windows.Forms.Button();
            this.InvSearchbtn = new System.Windows.Forms.Button();
            this.InvSearchPanel = new System.Windows.Forms.Panel();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.InvSearchEditbtn = new System.Windows.Forms.Button();
            this.InvSearchDeletebtn = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.ProdPNumberLabel = new System.Windows.Forms.Label();
            this.ProdPNumbertbox = new System.Windows.Forms.TextBox();
            this.ProdPNametbox = new System.Windows.Forms.TextBox();
            this.ProdPNameLabel = new System.Windows.Forms.Label();
            this.ProdModelCodetbox = new System.Windows.Forms.TextBox();
            this.ProdModelCodeLabel = new System.Windows.Forms.Label();
            this.ProdDTPtbox = new System.Windows.Forms.TextBox();
            this.ProdDTPLabel = new System.Windows.Forms.Label();
            this.ProdCTPtbox = new System.Windows.Forms.TextBox();
            this.ProdCTPLabel = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.ProdDiscDatetbox = new System.Windows.Forms.TextBox();
            this.ProdDiscDateLabel = new System.Windows.Forms.Label();
            this.ProdESDtbox = new System.Windows.Forms.TextBox();
            this.ProdESDLabel = new System.Windows.Forms.Label();
            this.ProdSSDtbox = new System.Windows.Forms.TextBox();
            this.ProdSSDLabel = new System.Windows.Forms.Label();
            this.ProdClearbtn = new System.Windows.Forms.Button();
            this.ProsSearchbtn = new System.Windows.Forms.Button();
            this.ProdSearchPanel = new System.Windows.Forms.Panel();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.ProdSearchDeletebtn = new System.Windows.Forms.Button();
            this.ProdSearchEditbtn = new System.Windows.Forms.Button();
            this.ProdSearchDetailsbtn = new System.Windows.Forms.Button();
            this.MainFormTabControl.SuspendLayout();
            this.WorkOrderTab.SuspendLayout();
            this.WOCreatePanel.SuspendLayout();
            this.WOSbtnPanel.SuspendLayout();
            this.WOCriteriaGroup.SuspendLayout();
            this.WOOptionsGroup.SuspendLayout();
            this.InventoryTab.SuspendLayout();
            this.ProductTab.SuspendLayout();
            this.InvSearchGroup.SuspendLayout();
            this.InvSearchPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.ProdSearchPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // MainFormTabControl
            // 
            this.MainFormTabControl.Controls.Add(this.WorkOrderTab);
            this.MainFormTabControl.Controls.Add(this.InventoryTab);
            this.MainFormTabControl.Controls.Add(this.ProductTab);
            this.MainFormTabControl.Controls.Add(this.tabPage4);
            this.MainFormTabControl.Location = new System.Drawing.Point(12, 12);
            this.MainFormTabControl.Name = "MainFormTabControl";
            this.MainFormTabControl.SelectedIndex = 0;
            this.MainFormTabControl.Size = new System.Drawing.Size(760, 487);
            this.MainFormTabControl.TabIndex = 0;
            // 
            // WorkOrderTab
            // 
            this.WorkOrderTab.Controls.Add(this.WOCreatePanel);
            this.WorkOrderTab.Controls.Add(this.WOOptionsGroup);
            this.WorkOrderTab.Location = new System.Drawing.Point(4, 22);
            this.WorkOrderTab.Name = "WorkOrderTab";
            this.WorkOrderTab.Padding = new System.Windows.Forms.Padding(3);
            this.WorkOrderTab.Size = new System.Drawing.Size(752, 461);
            this.WorkOrderTab.TabIndex = 0;
            this.WorkOrderTab.Text = "Work Order";
            this.WorkOrderTab.UseVisualStyleBackColor = true;
            // 
            // WOCreatePanel
            // 
            this.WOCreatePanel.Controls.Add(this.WOSbtnPanel);
            this.WOCreatePanel.Controls.Add(this.WOCCreatebtn);
            this.WOCreatePanel.Controls.Add(this.WOCClearbtn);
            this.WOCreatePanel.Controls.Add(this.WOCriteriaGroup);
            this.WOCreatePanel.Location = new System.Drawing.Point(6, 87);
            this.WOCreatePanel.Name = "WOCreatePanel";
            this.WOCreatePanel.Size = new System.Drawing.Size(740, 368);
            this.WOCreatePanel.TabIndex = 2;
            this.WOCreatePanel.Visible = false;
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
            this.WOSSearchbtn.Click += new System.EventHandler(this.WOSSearchbtn_Click);
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
            // BillOfMaterialLabel
            // 
            this.BillOfMaterialLabel.AutoSize = true;
            this.BillOfMaterialLabel.Location = new System.Drawing.Point(43, 178);
            this.BillOfMaterialLabel.Name = "BillOfMaterialLabel";
            this.BillOfMaterialLabel.Size = new System.Drawing.Size(75, 13);
            this.BillOfMaterialLabel.TabIndex = 11;
            this.BillOfMaterialLabel.Text = "Bill of Material:";
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(43, 197);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(406, 83);
            this.richTextBox1.TabIndex = 10;
            this.richTextBox1.Text = "";
            // 
            // WOCProductIDddlist
            // 
            this.WOCProductIDddlist.FormattingEnabled = true;
            this.WOCProductIDddlist.Location = new System.Drawing.Point(371, 101);
            this.WOCProductIDddlist.Name = "WOCProductIDddlist";
            this.WOCProductIDddlist.Size = new System.Drawing.Size(100, 21);
            this.WOCProductIDddlist.TabIndex = 9;
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
            // WOCProductIDLabel
            // 
            this.WOCProductIDLabel.AutoSize = true;
            this.WOCProductIDLabel.Location = new System.Drawing.Point(304, 104);
            this.WOCProductIDLabel.Name = "WOCProductIDLabel";
            this.WOCProductIDLabel.Size = new System.Drawing.Size(61, 13);
            this.WOCProductIDLabel.TabIndex = 8;
            this.WOCProductIDLabel.Text = "Product ID:";
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
            // WOCDatetbox
            // 
            this.WOCDatetbox.Location = new System.Drawing.Point(127, 28);
            this.WOCDatetbox.Name = "WOCDatetbox";
            this.WOCDatetbox.Size = new System.Drawing.Size(109, 20);
            this.WOCDatetbox.TabIndex = 7;
            // 
            // WOCEmpNametbox
            // 
            this.WOCEmpNametbox.Location = new System.Drawing.Point(371, 65);
            this.WOCEmpNametbox.Name = "WOCEmpNametbox";
            this.WOCEmpNametbox.Size = new System.Drawing.Size(128, 20);
            this.WOCEmpNametbox.TabIndex = 3;
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
            // WOCDeptHeadLabel
            // 
            this.WOCDeptHeadLabel.AutoSize = true;
            this.WOCDeptHeadLabel.Location = new System.Drawing.Point(24, 104);
            this.WOCDeptHeadLabel.Name = "WOCDeptHeadLabel";
            this.WOCDeptHeadLabel.Size = new System.Drawing.Size(94, 13);
            this.WOCDeptHeadLabel.TabIndex = 4;
            this.WOCDeptHeadLabel.Text = "Department Head:";
            // 
            // WOCDeptHeadtbox
            // 
            this.WOCDeptHeadtbox.Location = new System.Drawing.Point(127, 101);
            this.WOCDeptHeadtbox.Name = "WOCDeptHeadtbox";
            this.WOCDeptHeadtbox.Size = new System.Drawing.Size(109, 20);
            this.WOCDeptHeadtbox.TabIndex = 5;
            // 
            // WOOptionsGroup
            // 
            this.WOOptionsGroup.Controls.Add(this.SearchWorkOrderbtn);
            this.WOOptionsGroup.Controls.Add(this.CreateWorkOrderbtn);
            this.WOOptionsGroup.Location = new System.Drawing.Point(20, 15);
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
            // InventoryTab
            // 
            this.InventoryTab.Controls.Add(this.InvSearchPanel);
            this.InventoryTab.Controls.Add(this.InvSearchGroup);
            this.InventoryTab.Location = new System.Drawing.Point(4, 22);
            this.InventoryTab.Name = "InventoryTab";
            this.InventoryTab.Padding = new System.Windows.Forms.Padding(3);
            this.InventoryTab.Size = new System.Drawing.Size(752, 461);
            this.InventoryTab.TabIndex = 1;
            this.InventoryTab.Text = "Inventory";
            this.InventoryTab.UseVisualStyleBackColor = true;
            // 
            // ProductTab
            // 
            this.ProductTab.Controls.Add(this.ProdSearchPanel);
            this.ProductTab.Controls.Add(this.groupBox1);
            this.ProductTab.Location = new System.Drawing.Point(4, 22);
            this.ProductTab.Name = "ProductTab";
            this.ProductTab.Padding = new System.Windows.Forms.Padding(3);
            this.ProductTab.Size = new System.Drawing.Size(752, 461);
            this.ProductTab.TabIndex = 2;
            this.ProductTab.Text = "Products";
            this.ProductTab.UseVisualStyleBackColor = true;
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
            // InvSearchGroup
            // 
            this.InvSearchGroup.Controls.Add(this.InvSearchDateModtbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchbtn);
            this.InvSearchGroup.Controls.Add(this.InvSearchDateModLabel);
            this.InvSearchGroup.Controls.Add(this.InvSearchClearbtn);
            this.InvSearchGroup.Controls.Add(this.InvSearchQuantbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchQuanLabel);
            this.InvSearchGroup.Controls.Add(this.InvSearchListPricetbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchListPriceLabel);
            this.InvSearchGroup.Controls.Add(this.InvSearchLoctbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchLocLabel);
            this.InvSearchGroup.Controls.Add(this.InvSearchProductNumtbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchProductNumLabel);
            this.InvSearchGroup.Controls.Add(this.InvSearchProductIDtbox);
            this.InvSearchGroup.Controls.Add(this.InvSearchProductIDLabel);
            this.InvSearchGroup.Location = new System.Drawing.Point(20, 15);
            this.InvSearchGroup.Name = "InvSearchGroup";
            this.InvSearchGroup.Size = new System.Drawing.Size(544, 137);
            this.InvSearchGroup.TabIndex = 0;
            this.InvSearchGroup.TabStop = false;
            this.InvSearchGroup.Text = "Inventory Search Criteria";
            // 
            // InvSearchProductIDLabel
            // 
            this.InvSearchProductIDLabel.AutoSize = true;
            this.InvSearchProductIDLabel.Location = new System.Drawing.Point(21, 28);
            this.InvSearchProductIDLabel.Name = "InvSearchProductIDLabel";
            this.InvSearchProductIDLabel.Size = new System.Drawing.Size(61, 13);
            this.InvSearchProductIDLabel.TabIndex = 0;
            this.InvSearchProductIDLabel.Text = "Product ID:";
            // 
            // InvSearchProductIDtbox
            // 
            this.InvSearchProductIDtbox.Location = new System.Drawing.Point(24, 44);
            this.InvSearchProductIDtbox.Name = "InvSearchProductIDtbox";
            this.InvSearchProductIDtbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchProductIDtbox.TabIndex = 1;
            // 
            // InvSearchProductNumtbox
            // 
            this.InvSearchProductNumtbox.Location = new System.Drawing.Point(151, 44);
            this.InvSearchProductNumtbox.Name = "InvSearchProductNumtbox";
            this.InvSearchProductNumtbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchProductNumtbox.TabIndex = 3;
            // 
            // InvSearchProductNumLabel
            // 
            this.InvSearchProductNumLabel.AutoSize = true;
            this.InvSearchProductNumLabel.Location = new System.Drawing.Point(148, 28);
            this.InvSearchProductNumLabel.Name = "InvSearchProductNumLabel";
            this.InvSearchProductNumLabel.Size = new System.Drawing.Size(87, 13);
            this.InvSearchProductNumLabel.TabIndex = 2;
            this.InvSearchProductNumLabel.Text = "Product Number:";
            // 
            // InvSearchLoctbox
            // 
            this.InvSearchLoctbox.Location = new System.Drawing.Point(281, 44);
            this.InvSearchLoctbox.Name = "InvSearchLoctbox";
            this.InvSearchLoctbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchLoctbox.TabIndex = 5;
            // 
            // InvSearchLocLabel
            // 
            this.InvSearchLocLabel.AutoSize = true;
            this.InvSearchLocLabel.Location = new System.Drawing.Point(278, 28);
            this.InvSearchLocLabel.Name = "InvSearchLocLabel";
            this.InvSearchLocLabel.Size = new System.Drawing.Size(114, 13);
            this.InvSearchLocLabel.TabIndex = 4;
            this.InvSearchLocLabel.Text = "Location (ID or Name):";
            // 
            // InvSearchListPricetbox
            // 
            this.InvSearchListPricetbox.Location = new System.Drawing.Point(411, 44);
            this.InvSearchListPricetbox.Name = "InvSearchListPricetbox";
            this.InvSearchListPricetbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchListPricetbox.TabIndex = 7;
            // 
            // InvSearchListPriceLabel
            // 
            this.InvSearchListPriceLabel.AutoSize = true;
            this.InvSearchListPriceLabel.Location = new System.Drawing.Point(408, 28);
            this.InvSearchListPriceLabel.Name = "InvSearchListPriceLabel";
            this.InvSearchListPriceLabel.Size = new System.Drawing.Size(53, 13);
            this.InvSearchListPriceLabel.TabIndex = 6;
            this.InvSearchListPriceLabel.Text = "List Price:";
            // 
            // InvSearchDateModtbox
            // 
            this.InvSearchDateModtbox.Location = new System.Drawing.Point(151, 98);
            this.InvSearchDateModtbox.Name = "InvSearchDateModtbox";
            this.InvSearchDateModtbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchDateModtbox.TabIndex = 11;
            // 
            // InvSearchDateModLabel
            // 
            this.InvSearchDateModLabel.AutoSize = true;
            this.InvSearchDateModLabel.Location = new System.Drawing.Point(148, 82);
            this.InvSearchDateModLabel.Name = "InvSearchDateModLabel";
            this.InvSearchDateModLabel.Size = new System.Drawing.Size(76, 13);
            this.InvSearchDateModLabel.TabIndex = 10;
            this.InvSearchDateModLabel.Text = "Date Modified:";
            // 
            // InvSearchQuantbox
            // 
            this.InvSearchQuantbox.Location = new System.Drawing.Point(24, 98);
            this.InvSearchQuantbox.Name = "InvSearchQuantbox";
            this.InvSearchQuantbox.Size = new System.Drawing.Size(100, 20);
            this.InvSearchQuantbox.TabIndex = 9;
            // 
            // InvSearchQuanLabel
            // 
            this.InvSearchQuanLabel.AutoSize = true;
            this.InvSearchQuanLabel.Location = new System.Drawing.Point(21, 82);
            this.InvSearchQuanLabel.Name = "InvSearchQuanLabel";
            this.InvSearchQuanLabel.Size = new System.Drawing.Size(49, 13);
            this.InvSearchQuanLabel.TabIndex = 8;
            this.InvSearchQuanLabel.Text = "Quantity:";
            // 
            // InvSearchClearbtn
            // 
            this.InvSearchClearbtn.Location = new System.Drawing.Point(382, 106);
            this.InvSearchClearbtn.Name = "InvSearchClearbtn";
            this.InvSearchClearbtn.Size = new System.Drawing.Size(75, 23);
            this.InvSearchClearbtn.TabIndex = 12;
            this.InvSearchClearbtn.Text = "Clear";
            this.InvSearchClearbtn.UseVisualStyleBackColor = true;
            this.InvSearchClearbtn.Click += new System.EventHandler(this.InvSearchClearbtn_Click);
            // 
            // InvSearchbtn
            // 
            this.InvSearchbtn.Location = new System.Drawing.Point(463, 106);
            this.InvSearchbtn.Name = "InvSearchbtn";
            this.InvSearchbtn.Size = new System.Drawing.Size(75, 23);
            this.InvSearchbtn.TabIndex = 13;
            this.InvSearchbtn.Text = "Search";
            this.InvSearchbtn.UseVisualStyleBackColor = true;
            this.InvSearchbtn.Click += new System.EventHandler(this.InvSearchbtn_Click);
            // 
            // InvSearchPanel
            // 
            this.InvSearchPanel.Controls.Add(this.InvSearchDeletebtn);
            this.InvSearchPanel.Controls.Add(this.InvSearchEditbtn);
            this.InvSearchPanel.Controls.Add(this.dataGridView1);
            this.InvSearchPanel.Location = new System.Drawing.Point(6, 158);
            this.InvSearchPanel.Name = "InvSearchPanel";
            this.InvSearchPanel.Size = new System.Drawing.Size(740, 297);
            this.InvSearchPanel.TabIndex = 14;
            this.InvSearchPanel.Visible = false;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(16, 3);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(640, 292);
            this.dataGridView1.TabIndex = 0;
            // 
            // InvSearchEditbtn
            // 
            this.InvSearchEditbtn.Location = new System.Drawing.Point(662, 242);
            this.InvSearchEditbtn.Name = "InvSearchEditbtn";
            this.InvSearchEditbtn.Size = new System.Drawing.Size(75, 23);
            this.InvSearchEditbtn.TabIndex = 15;
            this.InvSearchEditbtn.Text = "Edit";
            this.InvSearchEditbtn.UseVisualStyleBackColor = true;
            this.InvSearchEditbtn.Click += new System.EventHandler(this.InvSearchEditbtn_Click);
            // 
            // InvSearchDeletebtn
            // 
            this.InvSearchDeletebtn.Location = new System.Drawing.Point(662, 271);
            this.InvSearchDeletebtn.Name = "InvSearchDeletebtn";
            this.InvSearchDeletebtn.Size = new System.Drawing.Size(75, 23);
            this.InvSearchDeletebtn.TabIndex = 16;
            this.InvSearchDeletebtn.Text = "Delete";
            this.InvSearchDeletebtn.UseVisualStyleBackColor = true;
            this.InvSearchDeletebtn.Click += new System.EventHandler(this.InvSearchDeletebtn_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ProsSearchbtn);
            this.groupBox1.Controls.Add(this.ProdClearbtn);
            this.groupBox1.Controls.Add(this.textBox3);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.ProdDiscDatetbox);
            this.groupBox1.Controls.Add(this.ProdDiscDateLabel);
            this.groupBox1.Controls.Add(this.ProdESDtbox);
            this.groupBox1.Controls.Add(this.ProdESDLabel);
            this.groupBox1.Controls.Add(this.ProdSSDtbox);
            this.groupBox1.Controls.Add(this.ProdSSDLabel);
            this.groupBox1.Controls.Add(this.ProdCTPtbox);
            this.groupBox1.Controls.Add(this.ProdCTPLabel);
            this.groupBox1.Controls.Add(this.ProdDTPtbox);
            this.groupBox1.Controls.Add(this.ProdDTPLabel);
            this.groupBox1.Controls.Add(this.ProdModelCodetbox);
            this.groupBox1.Controls.Add(this.ProdModelCodeLabel);
            this.groupBox1.Controls.Add(this.ProdPNametbox);
            this.groupBox1.Controls.Add(this.ProdPNameLabel);
            this.groupBox1.Controls.Add(this.ProdPNumbertbox);
            this.groupBox1.Controls.Add(this.ProdPNumberLabel);
            this.groupBox1.Location = new System.Drawing.Point(20, 15);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(663, 144);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Product Criteria";
            // 
            // ProdPNumberLabel
            // 
            this.ProdPNumberLabel.AutoSize = true;
            this.ProdPNumberLabel.Location = new System.Drawing.Point(21, 28);
            this.ProdPNumberLabel.Name = "ProdPNumberLabel";
            this.ProdPNumberLabel.Size = new System.Drawing.Size(87, 13);
            this.ProdPNumberLabel.TabIndex = 0;
            this.ProdPNumberLabel.Text = "Product Number:";
            // 
            // ProdPNumbertbox
            // 
            this.ProdPNumbertbox.Location = new System.Drawing.Point(24, 44);
            this.ProdPNumbertbox.Name = "ProdPNumbertbox";
            this.ProdPNumbertbox.Size = new System.Drawing.Size(100, 20);
            this.ProdPNumbertbox.TabIndex = 1;
            // 
            // ProdPNametbox
            // 
            this.ProdPNametbox.Location = new System.Drawing.Point(149, 44);
            this.ProdPNametbox.Name = "ProdPNametbox";
            this.ProdPNametbox.Size = new System.Drawing.Size(100, 20);
            this.ProdPNametbox.TabIndex = 3;
            // 
            // ProdPNameLabel
            // 
            this.ProdPNameLabel.AutoSize = true;
            this.ProdPNameLabel.Location = new System.Drawing.Point(146, 28);
            this.ProdPNameLabel.Name = "ProdPNameLabel";
            this.ProdPNameLabel.Size = new System.Drawing.Size(78, 13);
            this.ProdPNameLabel.TabIndex = 2;
            this.ProdPNameLabel.Text = "Product Name:";
            // 
            // ProdModelCodetbox
            // 
            this.ProdModelCodetbox.Location = new System.Drawing.Point(281, 44);
            this.ProdModelCodetbox.Name = "ProdModelCodetbox";
            this.ProdModelCodetbox.Size = new System.Drawing.Size(100, 20);
            this.ProdModelCodetbox.TabIndex = 5;
            // 
            // ProdModelCodeLabel
            // 
            this.ProdModelCodeLabel.AutoSize = true;
            this.ProdModelCodeLabel.Location = new System.Drawing.Point(278, 28);
            this.ProdModelCodeLabel.Name = "ProdModelCodeLabel";
            this.ProdModelCodeLabel.Size = new System.Drawing.Size(67, 13);
            this.ProdModelCodeLabel.TabIndex = 4;
            this.ProdModelCodeLabel.Text = "Model Code:";
            // 
            // ProdDTPtbox
            // 
            this.ProdDTPtbox.Location = new System.Drawing.Point(411, 44);
            this.ProdDTPtbox.Name = "ProdDTPtbox";
            this.ProdDTPtbox.Size = new System.Drawing.Size(100, 20);
            this.ProdDTPtbox.TabIndex = 7;
            // 
            // ProdDTPLabel
            // 
            this.ProdDTPLabel.AutoSize = true;
            this.ProdDTPLabel.Location = new System.Drawing.Point(408, 28);
            this.ProdDTPLabel.Name = "ProdDTPLabel";
            this.ProdDTPLabel.Size = new System.Drawing.Size(89, 13);
            this.ProdDTPLabel.TabIndex = 6;
            this.ProdDTPLabel.Text = "Days to Produce:";
            // 
            // ProdCTPtbox
            // 
            this.ProdCTPtbox.Location = new System.Drawing.Point(541, 44);
            this.ProdCTPtbox.Name = "ProdCTPtbox";
            this.ProdCTPtbox.Size = new System.Drawing.Size(100, 20);
            this.ProdCTPtbox.TabIndex = 9;
            // 
            // ProdCTPLabel
            // 
            this.ProdCTPLabel.AutoSize = true;
            this.ProdCTPLabel.Location = new System.Drawing.Point(538, 28);
            this.ProdCTPLabel.Name = "ProdCTPLabel";
            this.ProdCTPLabel.Size = new System.Drawing.Size(91, 13);
            this.ProdCTPLabel.TabIndex = 8;
            this.ProdCTPLabel.Text = "Costs to Produce:";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(411, 98);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 20);
            this.textBox3.TabIndex = 17;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(408, 83);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(89, 13);
            this.label3.TabIndex = 16;
            this.label3.Text = "Days to Produce:";
            // 
            // ProdDiscDatetbox
            // 
            this.ProdDiscDatetbox.Location = new System.Drawing.Point(281, 98);
            this.ProdDiscDatetbox.Name = "ProdDiscDatetbox";
            this.ProdDiscDatetbox.Size = new System.Drawing.Size(100, 20);
            this.ProdDiscDatetbox.TabIndex = 15;
            // 
            // ProdDiscDateLabel
            // 
            this.ProdDiscDateLabel.AutoSize = true;
            this.ProdDiscDateLabel.Location = new System.Drawing.Point(278, 82);
            this.ProdDiscDateLabel.Name = "ProdDiscDateLabel";
            this.ProdDiscDateLabel.Size = new System.Drawing.Size(104, 13);
            this.ProdDiscDateLabel.TabIndex = 14;
            this.ProdDiscDateLabel.Text = "Discountinued Date:";
            // 
            // ProdESDtbox
            // 
            this.ProdESDtbox.Location = new System.Drawing.Point(149, 98);
            this.ProdESDtbox.Name = "ProdESDtbox";
            this.ProdESDtbox.Size = new System.Drawing.Size(100, 20);
            this.ProdESDtbox.TabIndex = 13;
            // 
            // ProdESDLabel
            // 
            this.ProdESDLabel.AutoSize = true;
            this.ProdESDLabel.Location = new System.Drawing.Point(146, 83);
            this.ProdESDLabel.Name = "ProdESDLabel";
            this.ProdESDLabel.Size = new System.Drawing.Size(75, 13);
            this.ProdESDLabel.TabIndex = 12;
            this.ProdESDLabel.Text = "End Sell Date:";
            // 
            // ProdSSDtbox
            // 
            this.ProdSSDtbox.Location = new System.Drawing.Point(24, 98);
            this.ProdSSDtbox.Name = "ProdSSDtbox";
            this.ProdSSDtbox.Size = new System.Drawing.Size(100, 20);
            this.ProdSSDtbox.TabIndex = 11;
            // 
            // ProdSSDLabel
            // 
            this.ProdSSDLabel.AutoSize = true;
            this.ProdSSDLabel.Location = new System.Drawing.Point(21, 82);
            this.ProdSSDLabel.Name = "ProdSSDLabel";
            this.ProdSSDLabel.Size = new System.Drawing.Size(78, 13);
            this.ProdSSDLabel.TabIndex = 10;
            this.ProdSSDLabel.Text = "Start Sell Date:";
            // 
            // ProdClearbtn
            // 
            this.ProdClearbtn.Location = new System.Drawing.Point(582, 86);
            this.ProdClearbtn.Name = "ProdClearbtn";
            this.ProdClearbtn.Size = new System.Drawing.Size(75, 23);
            this.ProdClearbtn.TabIndex = 18;
            this.ProdClearbtn.Text = "Clear";
            this.ProdClearbtn.UseVisualStyleBackColor = true;
            this.ProdClearbtn.Click += new System.EventHandler(this.ProdClearbtn_Click);
            // 
            // ProsSearchbtn
            // 
            this.ProsSearchbtn.Location = new System.Drawing.Point(582, 115);
            this.ProsSearchbtn.Name = "ProsSearchbtn";
            this.ProsSearchbtn.Size = new System.Drawing.Size(75, 23);
            this.ProsSearchbtn.TabIndex = 19;
            this.ProsSearchbtn.Text = "Search";
            this.ProsSearchbtn.UseVisualStyleBackColor = true;
            this.ProsSearchbtn.Click += new System.EventHandler(this.ProsSearchbtn_Click);
            // 
            // ProdSearchPanel
            // 
            this.ProdSearchPanel.Controls.Add(this.ProdSearchDetailsbtn);
            this.ProdSearchPanel.Controls.Add(this.ProdSearchEditbtn);
            this.ProdSearchPanel.Controls.Add(this.ProdSearchDeletebtn);
            this.ProdSearchPanel.Controls.Add(this.dataGridView2);
            this.ProdSearchPanel.Location = new System.Drawing.Point(6, 166);
            this.ProdSearchPanel.Name = "ProdSearchPanel";
            this.ProdSearchPanel.Size = new System.Drawing.Size(740, 292);
            this.ProdSearchPanel.TabIndex = 4;
            this.ProdSearchPanel.Visible = false;
            // 
            // dataGridView2
            // 
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Location = new System.Drawing.Point(14, 3);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(642, 286);
            this.dataGridView2.TabIndex = 0;
            // 
            // ProdSearchDeletebtn
            // 
            this.ProdSearchDeletebtn.Location = new System.Drawing.Point(662, 266);
            this.ProdSearchDeletebtn.Name = "ProdSearchDeletebtn";
            this.ProdSearchDeletebtn.Size = new System.Drawing.Size(75, 23);
            this.ProdSearchDeletebtn.TabIndex = 1;
            this.ProdSearchDeletebtn.Text = "Delete";
            this.ProdSearchDeletebtn.UseVisualStyleBackColor = true;
            this.ProdSearchDeletebtn.Click += new System.EventHandler(this.ProdSearchDeletebtn_Click);
            // 
            // ProdSearchEditbtn
            // 
            this.ProdSearchEditbtn.Location = new System.Drawing.Point(662, 237);
            this.ProdSearchEditbtn.Name = "ProdSearchEditbtn";
            this.ProdSearchEditbtn.Size = new System.Drawing.Size(75, 23);
            this.ProdSearchEditbtn.TabIndex = 2;
            this.ProdSearchEditbtn.Text = "Edit";
            this.ProdSearchEditbtn.UseVisualStyleBackColor = true;
            this.ProdSearchEditbtn.Click += new System.EventHandler(this.ProdSearchEditbtn_Click);
            // 
            // ProdSearchDetailsbtn
            // 
            this.ProdSearchDetailsbtn.Location = new System.Drawing.Point(663, 208);
            this.ProdSearchDetailsbtn.Name = "ProdSearchDetailsbtn";
            this.ProdSearchDetailsbtn.Size = new System.Drawing.Size(75, 23);
            this.ProdSearchDetailsbtn.TabIndex = 3;
            this.ProdSearchDetailsbtn.Text = "More Details";
            this.ProdSearchDetailsbtn.UseVisualStyleBackColor = true;
            this.ProdSearchDetailsbtn.Click += new System.EventHandler(this.ProdSearchDetailsbtn_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 511);
            this.Controls.Add(this.MainFormTabControl);
            this.Name = "MainForm";
            this.Text = "AdventureWorks - Production";
            this.Shown += new System.EventHandler(this.MainForm_Shown);
            this.MainFormTabControl.ResumeLayout(false);
            this.WorkOrderTab.ResumeLayout(false);
            this.WOCreatePanel.ResumeLayout(false);
            this.WOSbtnPanel.ResumeLayout(false);
            this.WOCriteriaGroup.ResumeLayout(false);
            this.WOCriteriaGroup.PerformLayout();
            this.WOOptionsGroup.ResumeLayout(false);
            this.InventoryTab.ResumeLayout(false);
            this.ProductTab.ResumeLayout(false);
            this.InvSearchGroup.ResumeLayout(false);
            this.InvSearchGroup.PerformLayout();
            this.InvSearchPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ProdSearchPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl MainFormTabControl;
        private System.Windows.Forms.TabPage WorkOrderTab;
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
        private System.Windows.Forms.TabPage InventoryTab;
        private System.Windows.Forms.TabPage ProductTab;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Panel WOSbtnPanel;
        private System.Windows.Forms.Button WOSSearchbtn;
        private System.Windows.Forms.GroupBox InvSearchGroup;
        private System.Windows.Forms.TextBox InvSearchDateModtbox;
        private System.Windows.Forms.Label InvSearchDateModLabel;
        private System.Windows.Forms.TextBox InvSearchQuantbox;
        private System.Windows.Forms.Label InvSearchQuanLabel;
        private System.Windows.Forms.TextBox InvSearchListPricetbox;
        private System.Windows.Forms.Label InvSearchListPriceLabel;
        private System.Windows.Forms.TextBox InvSearchLoctbox;
        private System.Windows.Forms.Label InvSearchLocLabel;
        private System.Windows.Forms.TextBox InvSearchProductNumtbox;
        private System.Windows.Forms.Label InvSearchProductNumLabel;
        private System.Windows.Forms.TextBox InvSearchProductIDtbox;
        private System.Windows.Forms.Label InvSearchProductIDLabel;
        private System.Windows.Forms.Button InvSearchbtn;
        private System.Windows.Forms.Button InvSearchClearbtn;
        private System.Windows.Forms.Panel InvSearchPanel;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button InvSearchDeletebtn;
        private System.Windows.Forms.Button InvSearchEditbtn;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox ProdPNumbertbox;
        private System.Windows.Forms.Label ProdPNumberLabel;
        private System.Windows.Forms.TextBox ProdModelCodetbox;
        private System.Windows.Forms.Label ProdModelCodeLabel;
        private System.Windows.Forms.TextBox ProdPNametbox;
        private System.Windows.Forms.Label ProdPNameLabel;
        private System.Windows.Forms.TextBox ProdDTPtbox;
        private System.Windows.Forms.Label ProdDTPLabel;
        private System.Windows.Forms.TextBox ProdCTPtbox;
        private System.Windows.Forms.Label ProdCTPLabel;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox ProdDiscDatetbox;
        private System.Windows.Forms.Label ProdDiscDateLabel;
        private System.Windows.Forms.TextBox ProdESDtbox;
        private System.Windows.Forms.Label ProdESDLabel;
        private System.Windows.Forms.TextBox ProdSSDtbox;
        private System.Windows.Forms.Label ProdSSDLabel;
        private System.Windows.Forms.Button ProsSearchbtn;
        private System.Windows.Forms.Button ProdClearbtn;
        private System.Windows.Forms.Panel ProdSearchPanel;
        private System.Windows.Forms.Button ProdSearchDeletebtn;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.Button ProdSearchDetailsbtn;
        private System.Windows.Forms.Button ProdSearchEditbtn;
    }
}

