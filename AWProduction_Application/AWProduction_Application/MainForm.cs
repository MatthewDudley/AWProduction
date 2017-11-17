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
            //this.Shown += MainForm_Shown;
        }

        private void MainForm_Shown(object sender, EventArgs e)
        {
            //Displays connection window when the program is first started
            new ConnectionForm().Show();
        }

        

        
        
        /** WORK ORDER TAB **/

        /** Work Order Options Create btn **/
        private void CreateWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Create Work Order btn event

            //modify grouping text and hide search btn
            WOCriteriaGroup.Text = "Work Order Criteria";
            WOSbtnPanel.Visible = false;

            //Show the create work order panel
            WOCreatePanel.Visible = true;
        }

        /** Create a work order btn **/
        private void WOCreatebtn_Click(object sender, EventArgs e)
        {
            //Create btn event

            //display pop up indicating you created a new workorder

            //push information to the database

            WOCreatePanel.Visible = false;

            MessageBox.Show("Work Order has been created");
        }

        /** Work Order Options Search btn **/
        private void SearchWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Search work order btn event

            WOCreatePanel.Visible = true;

            //modifiy group text and show search btn
            WOCriteriaGroup.Text = "Search Work Order";
            WOSbtnPanel.Visible = true;

        }

        /** Work Order Search btn **/
        private void WOSSearchbtn_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //query databse and display search results

            MessageBox.Show("Searching results...");
        }

        /** Clear a Work Order **/
        private void WOCClearbtn_Click(object sender, EventArgs e)
        {
            //WOC clear btn event

            //clear all tbox inputs
            MessageBox.Show("Clearing texboxes...");
        }




        
        /** WORK ORDER TAB **/

        /** Search btn **/
        private void InvSearchbtn_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //query databse and display search results

            //testing
            InvSearchPanel.Visible = true;

            MessageBox.Show("Searching results...");
        }

        /** Clear btn **/
        private void InvSearchClearbtn_Click(object sender, EventArgs e)
        {
            //Clear btn click event

            //clear all tbox inputs
            MessageBox.Show("Clearing texboxes...");
        }

        /** Edit btn **/
        private void InvSearchEditbtn_Click(object sender, EventArgs e)
        {
            //edit the record
            MessageBox.Show("Edit record...");
        }

        /** Delete btn **/
        private void InvSearchDeletebtn_Click(object sender, EventArgs e)
        {
            //delete the record
            MessageBox.Show("Delete record...");
        }






        /** PRODUCT TAB **/

        /** Clear btn **/
        private void ProdClearbtn_Click(object sender, EventArgs e)
        {
            //Clear btn click event

            //clear all tbox inputs
            MessageBox.Show("Clearing texboxes...");
        }

        /** Search btn **/
        private void ProsSearchbtn_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //query databse and display search results
            ProdSearchPanel.Visible = true;

            MessageBox.Show("Searching results...");
        }

        /** more Details btn for search results **/
        private void ProdSearchDetailsbtn_Click(object sender, EventArgs e)
        {
            //got to more details about the selected product
            MessageBox.Show("Show more details about this product...");
        }

        /** edit btn for search results **/
        private void ProdSearchEditbtn_Click(object sender, EventArgs e)
        {
            //edit the record
            MessageBox.Show("Edit record...");
        }

        /** Delete btn for search results **/
        private void ProdSearchDeletebtn_Click(object sender, EventArgs e)
        {
            //delete the record
            MessageBox.Show("Delete record...");
        }








    }
}
