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
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void CreateWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Create Work Order btn event

            //Show the create work order panel
            WOCreatePanel.Visible = true;

            WOCriteriaGroup.Text = "Work Order Criteria";
            WOSbtnPanel.Visible = false;
        }

        private void WOCreatebtn_Click(object sender, EventArgs e)
        {
            //Create btn event

            //display pop up indicating you created a new workorder

            //push information to the database
        }

        private void WOCClearbtn_Click(object sender, EventArgs e)
        {
            //WOC clear btn event

            //clear all tbox inputs
        }

        private void SearchWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Search work order btn event

            //modifiy WO criteria to search criteria
            WOCriteriaGroup.Text = "Search Work Order";
            WOSbtnPanel.Visible = true;

        }

        private void WOSSearchButton_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //query databse and display search results
        }
    }
}
