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
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }


        

        
        
        /** WORK ORDER TAB **/

        /** Work Order Options Create btn **/
        private void CreateWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Create Work Order btn event
            WOSResultPanel.Visible = false;
            WOIDLabel.Enabled = false;
            WOIDtbox.Enabled = false;

            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";

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

            //push information to the database
            string command = "INSERT INTO WORK_ORDER ([WorkOrderDate], [EmployeeID], [DepartmentHead], [ProductNumber], [MaterialList], [StartDate], [CompletionDate]) VALUES " +
                             "( "+ "'" + Convert.ToDateTime(WODatetbox.Text) + "'" + ", " + "'" + WOEmpIDtbox.Text + "'" + ", " + "'" + WODeptHeadtbox.Text + "'" + ", " + "'" + WOProductNumtbox.Text + "'" + ", " + "'" + WOMaterialtbox.Text + "'" + ", " + "'" + Convert.ToDateTime(WOPSDatetbox.Text) + "'" + ", " + "'" + Convert.ToDateTime(WOPEDatetbox.Text) + "'" + " )";
            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand insertCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    int createdRows = insertCommand.ExecuteNonQuery();

                    // Check Error
                    if (createdRows < 0)
                        Console.WriteLine("Error inserting data into Database!");
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }
            WOCreatePanel.Visible = false;

        }

        /** Work Order Options Search btn **/
        private void SearchWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Search work order btn event
            WOIDLabel.Enabled = true;
            WOIDtbox.Enabled = true;

            //clear previous text
            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";

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

            //Begin building the SQL command to view the publishers 
            string command = "SELECT WorkOrderID, WorkOrderDate, EmployeeID, DepartmentHead, ProductNumber, MaterialList, StartDate, CompletionDate FROM WORK_ORDER";
            bool addWhere = false;
            string checks = "";
            //Construct the where statement based on user 
            if (!string.IsNullOrWhiteSpace(WOIDtbox.Text))
            {
                checks = checks + "WorkOrderID = " + "'" + WOIDtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WODatetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "WorkOrderDate = " + "'" + Convert.ToDateTime(WODatetbox.Text) + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WOEmpIDtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "EmployeeID = " + "'" + WOEmpIDtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WODeptHeadtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "DepartmentHead = " + "'" + WODeptHeadtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WOProductNumtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "ProductNumber = " + "'" + WOProductNumtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WOMaterialtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "MaterialList LIKE  " + "'%" + WOMaterialtbox.Text + "%'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WOPSDatetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "StartDate = " + "'" + Convert.ToDateTime(WOPSDatetbox.Text) + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(WOPEDatetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "CompletionDate = " + "'" + Convert.ToDateTime(WOPEDatetbox.Text) + "'" + " ";
                addWhere = true;
            }
            //Combine the statements together
            if (addWhere == true)
            {
                command = command + " WHERE " + checks;
            }

            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand searchCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(searchCommand);

                    //Displays output on grid view
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    WOSResultGridView.DataSource = dataTable;
                    WOSResultGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

            //show data grid view
            WOSResultPanel.Visible = true;
        }

        /** Clear a Work Order **/
        private void WOCClearbtn_Click(object sender, EventArgs e)
        {
            //WOC clear btn event

            //clear all tbox inputs
            //MessageBox.Show("Clearing texboxes...");

            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";
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






















        /** Admin TAB **/

        /** Execute btn **/
        private void Execute_Click(object sender, EventArgs e)
        {
            String command = Admintbox.Text;

            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand query = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(query);

                    //Displays output on grid view
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    AdminDGV.DataSource = dataTable;
                    AdminDGV.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                }
                catch (Exception error)
                {
                    MessageBox.Show("This query could not be made, check syntax");
                    MessageBox.Show(error.ToString());
                }
            }
        }
    }
}
