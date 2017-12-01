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
            // Create Work Order Options btn event

            // pre processing
            WOSResultPanel.Visible = false; // hide the DGV
            WOIDLabel.Enabled = false; // disable the PK
            WOIDtbox.Enabled = false; // disable the PK
            WOCriteriaGroup.Text = "Work Order Criteria"; // change the group text for the user
            WOSbtnPanel.Visible = false; // hide the seach panel
            WOEditPanel.Visible = false; // hide the edit panel

            // clear the boxes just in case
            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOQuantitytbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";

            WOCreatePanel.Visible = true; // show the create criteria

        } // end of creat work order btn

        /** Create a work order btn **/
        private void WOCreatebtn_Click(object sender, EventArgs e)
        {
            //Create Work Order btn event

            //push information to the database
            string command = "INSERT INTO WORK_ORDER ([WorkOrderDate], [EmployeeID], [DepartmentHead], [ProductNumber], [Quantity], [MaterialList], [StartDate], [CompletionDate]) VALUES " +
                             "( "+ "'" + Convert.ToDateTime(WODatetbox.Text) + "'" + ", " + "'" + WOEmpIDtbox.Text + "'" + ", " + "'" + WODeptHeadtbox.Text + "'" + ", " + "'" + WOProductNumtbox.Text + "'" + ", " + "'" + WOQuantitytbox.Text + "'" + ", " + "'" + WOMaterialtbox.Text + "'" + ", " + "'" + Convert.ToDateTime(WOPSDatetbox.Text) + "'" + ", " + "'" + Convert.ToDateTime(WOPEDatetbox.Text) + "'" + " )";
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
                    {
                        MessageBox.Show("Error creating new record!"); // error message
                    } else
                    {
                        MessageBox.Show("Created new Work Order!"); // success
                    }
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

            WOCreatePanel.Visible = false; // after creating a new record hide the criteria panel

        } // end of creat work order btn

        /** Work Order Options Search btn **/
        private void SearchWorkOrderbtn_Click(object sender, EventArgs e)
        {
            //Search work order btn event

            // pre processing
            WOSbtnPanel.Visible = true; // show seach btn
            WOIDLabel.Enabled = true; // enable the PK for searching
            WOIDtbox.Enabled = true; // enable the PK for searching
            WOCriteriaGroup.Text = "Search Work Order"; //modifiy group text
            WOEditPanel.Visible = false; // hide the edit panel for now
            WOSResultPanel.Visible = false; // hide the DGV

            //clear previous text just in case
            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOQuantitytbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";

            WOCreatePanel.Visible = true;  // show search panel

        } // end of search otions btn

        /** Work Order Search btn **/
        private void WOSSearchbtn_Click(object sender, EventArgs e)
        {
            //Search  work order btn event
            //show data grid view
            WOSResultPanel.Visible = true;

            //MessageBox.Show("Searching results...");

            //Begin building the SQL command
            string command = "SELECT WorkOrderID, WorkOrderDate, EmployeeID, DepartmentHead, ProductNumber, Quantity, MaterialList, StartDate, CompletionDate FROM WORK_ORDER";
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
            if (!string.IsNullOrWhiteSpace(WOQuantitytbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "Quantity = " + "'" + WOQuantitytbox.Text + "'" + " ";
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

        } // end of search work order btn

        /** Clear a Work Order **/
        private void WOCClearbtn_Click(object sender, EventArgs e)
        {
            //WOC clear btn event

            //MessageBox.Show("Clearing texboxes...");

            // clear the text from the boxes
            WOIDtbox.Text = "";
            WODatetbox.Text = "";
            WOEmpIDtbox.Text = "";
            WODeptHeadtbox.Text = "";
            WOProductNumtbox.Text = "";
            WOQuantitytbox.Text = "";
            WOPSDatetbox.Text = "";
            WOPEDatetbox.Text = "";
            WOMaterialtbox.Text = "";

        } // end of clear btn click

        //Edit the selected record
        private void WOSResultGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //WOSResultGridView.Visible = false; // hide DGV
            WOCriteriaGroup.Text = "Edit Work Order Record"; //change group text

            WOIDLabel.Enabled = false; // hide the PK
            WOIDtbox.Enabled = false; // hide the PK

            DataGridViewRow row = this.WOSResultGridView.Rows[e.RowIndex];

            //populate the textbox from specific value of the coordinates of column and row.
            WOIDtbox.Text = row.Cells[0].Value.ToString();
            WODatetbox.Text = row.Cells[1].Value.ToString();
            WOEmpIDtbox.Text = row.Cells[2].Value.ToString();
            WODeptHeadtbox.Text = row.Cells[3].Value.ToString();
            WOProductNumtbox.Text = row.Cells[4].Value.ToString();
            WOQuantitytbox.Text = row.Cells[5].Value.ToString();
            WOMaterialtbox.Text = row.Cells[6].Value.ToString();
            WOPSDatetbox.Text = row.Cells[7].Value.ToString();
            WOPEDatetbox.Text = row.Cells[8].Value.ToString();

            WOEditPanel.Visible = true; // show the boxes
        }

        //click edit button
        private void WOEditRecordbtn_Click(object sender, EventArgs e)
        {
            //update work order record

            //SQL command
            string command = "Update WORK_ORDER " +
                            "SET [WorkOrderDate] = " + "'" + Convert.ToDateTime(WODatetbox.Text) + "'"
                          + " , [EmployeeID] = " + WOEmpIDtbox.Text
                          + " , [DepartmentHead] = " + "'" + WODeptHeadtbox.Text + "'"
                          + " , [ProductNumber] = " + "'" + WOProductNumtbox.Text + "'"
                          + " , [Quantity] = " + WOQuantitytbox.Text
                          + " , [MaterialList] = " + "'" + WOMaterialtbox.Text + "'"
                          + " , [StartDate] = " + "'" + Convert.ToDateTime(WOPSDatetbox.Text) + "'"
                          + " , [CompletionDate] = " + "'" + Convert.ToDateTime(WOPEDatetbox.Text) + "'"
                          + " WHERE WorkOrderID = " + WOIDtbox.Text;

            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand updateCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(updateCommand);
                    //Executes command and recieves output
                    int createdRows = updateCommand.ExecuteNonQuery();

                    // Check Error
                    if (createdRows < 0)
                    {
                        MessageBox.Show("Error updating record!"); // error message
                    }
                    else
                    {
                        MessageBox.Show("Edited the record with ID = " + WOIDtbox.Text); // success
                    }

                    //MessageBox.Show("Edited the record with ID = " + WOIDtbox.Text);
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

            //WOCreatePanel.Visible = false; // after editing hide the criteria panel

        } // end of edit work order record btns

        //click delete
        private void WODelete_Click(object sender, EventArgs e)
        {
            //Delete work order event

            //Begin building the SQL command 
            string command = "DELETE FROM WORK_ORDER WHERE WorkOrderID = " + WOIDtbox.Text;
       
            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand deleteCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(deleteCommand);
                    //Executes command and recieves output
                    int createdRows = deleteCommand.ExecuteNonQuery();

                    // Check Error
                    if (createdRows < 0)
                    {
                        MessageBox.Show("Error deleting record!"); // error message
                    }
                    else
                    {
                        MessageBox.Show("Deleted the record with ID = " + WOIDtbox.Text); // success
                    }

                    //MessageBox.Show("Deleted the record with ID = " + WOIDtbox.Text);
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

            WOCreatePanel.Visible = false; // after deleting hide the criteria panel
            //MessageBox.Show("Delete record...");

        } // end of delete work order btn






        /** INVENTORY TAB **/


        // Inventory Search Option
        private void InvSearchOptionsbtn_Click(object sender, EventArgs e)
        {
            InvSearchGroup.Text = "Inventory Search Criteria"; // modify text
            InvEditPanel.Visible = false; // hide edit btn
            InvSearchGroup.Visible = true; // show criteria
            InvSearchPanel.Visible = false; // hide the DGV
            InvSearchInvIDLabel.Enabled = true; // enable PK
            InvSearchInvIDtbox.Enabled = true; //enable PK

            // clear all tbox inputs
            InvSearchInvIDtbox.Text = "";
            InvSearchProductNumtbox.Text = "";
            InvSearchLoctbox.Text = "";
            InvSearchListPricetbox.Text = "";
            InvSearchQuantbox.Text = "";
            InvSearchShelftbox.Text = "";

            //InvCreatePanel.Visible = false; // hide create panel 

        } // end search option

        private void InvSearchbtn_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //Show results
            InvSearchPanel.Visible = true;
            //MessageBox.Show("Searching results...");

            //query databse and display search results

            //Begin building the SQL command to view the publishers 
            string command = "SELECT InventoryID, ProductNumber, LocationID, ListPrice, Quantity, Shelf FROM INVENTORY";
            bool addWhere = false;
            string checks = "";
            //Construct the where statement based on user 
            if (!string.IsNullOrWhiteSpace(InvSearchInvIDtbox.Text))
            {
                checks = checks + "InventoryID = " + "'" + InvSearchInvIDtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(InvSearchProductNumtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "ProductNumber = " + "'" + InvSearchProductNumtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(InvSearchLoctbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "LocationID = " + "'" + InvSearchLoctbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(InvSearchListPricetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "ListPrice = " + "'" + InvSearchListPricetbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(InvSearchQuantbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "Quantity = " + "'" + InvSearchQuantbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(InvSearchShelftbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "Shelf = " + "'" + InvSearchShelftbox.Text + "'" + " ";
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
                    InvSearchGridView.DataSource = dataTable;
                    InvSearchGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }
        }

        // Inventory Create Option
        private void InvCreateOptionsbtn_Click(object sender, EventArgs e)
        {
            InvSearchGroup.Text = "Create Inventory Record Criteria"; // modify text
            InvEditPanel.Visible = false; // hide edit panel
            //InvCreatePanel.Visible = true; // show create panel
            InvSearchGroup.Visible = true; //show group
            InvSearchPanel.Visible = false; // hide DGV
            InvSearchInvIDLabel.Enabled = false; // disable PK
            InvSearchInvIDtbox.Enabled = false; //disable PK

            // clear all tbox inputs
            InvSearchInvIDtbox.Text = "";
            InvSearchProductNumtbox.Text = "";
            InvSearchLoctbox.Text = "";
            InvSearchListPricetbox.Text = "";
            InvSearchQuantbox.Text = "";
            InvSearchShelftbox.Text = "";

        } // end create option

        /** Clear btn **/
        private void InvSearchClearbtn_Click(object sender, EventArgs e)
        {
            // Clear btn click event

            // clear all tbox inputs
            InvSearchInvIDtbox.Text = "";
            InvSearchProductNumtbox.Text = "";
            InvSearchLoctbox.Text = "";
            InvSearchListPricetbox.Text = "";
            InvSearchQuantbox.Text = "";
            InvSearchShelftbox.Text = "";

            // MessageBox.Show("Clearing texboxes...");

        } // end clear btn

        private void InvSearchGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            InvSearchGroup.Text = "Edit Inventory Record";

            InvSearchInvIDLabel.Enabled = false;
            InvSearchInvIDtbox.Enabled = false;

            DataGridViewRow row = this.InvSearchGridView.Rows[e.RowIndex];

            //populate the textbox from specific value of the coordinates of column and row.
            InvSearchInvIDtbox.Text = row.Cells[0].Value.ToString();
            InvSearchProductNumtbox.Text = row.Cells[1].Value.ToString();
            InvSearchLoctbox.Text = row.Cells[2].Value.ToString();
            InvSearchListPricetbox.Text = row.Cells[3].Value.ToString();
            InvSearchQuantbox.Text = row.Cells[4].Value.ToString();
            InvSearchShelftbox.Text = row.Cells[5].Value.ToString();

            InvEditPanel.Visible = true;
        }

        /** Edit btn **/
        private void InvSearchEditbtn_Click(object sender, EventArgs e)
        {
            //edit the record
            //MessageBox.Show("Edit record...");

            //SQL command
            string command = "Update Inventory " +
                            "SET [ProductNumber] = " + "'" + InvSearchProductNumtbox.Text + "'"
                          + " , [LocationID] = " + InvSearchLoctbox.Text
                          + " , [ListPrice] = " + InvSearchListPricetbox.Text
                          + " , [Quantity] = " + InvSearchQuantbox.Text
                          + " , [Shelf] = " + "'" + InvSearchShelftbox.Text + "'"
                          + " WHERE InventoryID = " + InvSearchInvIDtbox.Text;

            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand updateCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(updateCommand);
                    //Executes command and recieves output
                    int createdRows = updateCommand.ExecuteNonQuery();

                    // Check Error
                    if (createdRows < 0)
                    {
                        MessageBox.Show("Error updating record!"); // error message
                    }
                    else
                    {
                        MessageBox.Show("Edited the record with ID = " + InvSearchInvIDtbox.Text); // success
                    }

                    //MessageBox.Show("Edited the record with ID = " + InvSearchInvIDtbox.Text);
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

        }

        /** Delete btn **/
        private void InvSearchDeletebtn_Click(object sender, EventArgs e)
        {
            //delete the record
            //MessageBox.Show("Delete record...");

            //Begin building the SQL command 
            string command = "DELETE FROM Inventory WHERE InventoryID = " + InvSearchInvIDtbox.Text;

            //Connets to the database using the connection string from the connection page
            using (SqlConnection connection = new SqlConnection(ConnectionForm.ConnectionString))
            {
                try
                {
                    //Open the database
                    connection.Open();
                    //Creates SQL command using the command string generated earlier
                    SqlCommand deleteCommand = new SqlCommand(command, connection);
                    //Executes command and recieves output
                    SqlDataAdapter adapter = new SqlDataAdapter(deleteCommand);
                    //Executes command and recieves output
                    int createdRows = deleteCommand.ExecuteNonQuery();

                    // Check Error
                    if (createdRows < 0)
                    {
                        MessageBox.Show("Error deleting record!"); // error message
                    }
                    else
                    {
                        MessageBox.Show("Deleted the record with ID = " + InvSearchInvIDtbox.Text); // success
                    }

                    //MessageBox.Show("Deleted the record with ID = " + invsearchinvidtbox.Text);
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }

        } // end of delete btn






        /** PRODUCT TAB **/

        // product search option btn
        private void ProdSearchOption_Click(object sender, EventArgs e)
        {
            ProdCreatebtn.Visible = false; // hide the create btn
            ProdSearchPanel.Visible = false; // hide the DGV

            //clear all boxes
            ProdPNumbertbox.Text = "";
            ProdPNametbox.Text = "";
            ProdModelCodetbox.Text = "";
            ProdDTPtbox.Text = "";
            ProdCTPtbox.Text = "";
            ProdSSDtbox.Text = "";
            ProdESDtbox.Text = "";
            ProdDiscDatetbox.Text = "";

        } // end of product search option btn

        // product create options btn
        private void ProdCreateOption_Click(object sender, EventArgs e)
        {
            ProdCreatebtn.Visible = true; // show create btn
            ProdSearchPanel.Visible = false;// hide the DGV

            //clear all boxes
            ProdPNumbertbox.Text = "";
            ProdPNametbox.Text = "";
            ProdModelCodetbox.Text = "";
            ProdDTPtbox.Text = "";
            ProdCTPtbox.Text = "";
            ProdSSDtbox.Text = "";
            ProdESDtbox.Text = "";
            ProdDiscDatetbox.Text = "";

        } // end of product create btn

        /** Clear btn **/
        private void ProdClearbtn_Click(object sender, EventArgs e)
        {
            //Clear btn click event

            //clear all boxes
            ProdPNumbertbox.Text = "";
            ProdPNametbox.Text = "";
            ProdModelCodetbox.Text = "";
            ProdDTPtbox.Text = "";
            ProdCTPtbox.Text = "";
            ProdSSDtbox.Text = "";
            ProdESDtbox.Text = "";
            ProdDiscDatetbox.Text = "";

            //clear all tbox inputs
            //MessageBox.Show("Clearing texboxes...");
        }

        /** Search btn **/
        private void ProsSearchbtn_Click(object sender, EventArgs e)
        {
            //Search btn click event

            //query databse and display search results
            ProdSearchPanel.Visible = true;
            MessageBox.Show("Searching results...");

            //Begin building the SQL command
            string command = "SELECT ProductNumber, Name, ModelCode, DaysToProduce, CostToProduce, StartSellDate, EndSellDate, DiscountinuedDate FROM Product";
            bool addWhere = false;
            string checks = "";

            //Construct the where statement based on user 
            if (!string.IsNullOrWhiteSpace(ProdPNumbertbox.Text))
            {
                checks = checks + "ProductNumber = " + "'" + ProdPNumbertbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdPNametbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "Name = " + "'" + ProdPNametbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdModelCodetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "ModelCode = " + "'" + ProdModelCodetbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdDTPtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "DaysToProduce = " + "'" + ProdDTPtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdCTPtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "CostToProduce = " + "'" + ProdCTPtbox.Text + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdSSDtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "StartSellDate = " + "'" + Convert.ToDateTime(ProdSSDtbox.Text) + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdESDtbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "EndSellDate =  " + "'" + Convert.ToDateTime(ProdESDtbox.Text) + "'" + " ";
                addWhere = true;
            }
            if (!string.IsNullOrWhiteSpace(ProdDiscDatetbox.Text))
            {
                if (addWhere == true)
                {
                    checks = checks + " AND ";
                }
                checks = checks + "DiscountinuedDate = " + "'" + Convert.ToDateTime(ProdDiscDatetbox.Text) + "'" + " ";
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
                    ProdSearchGridView.DataSource = dataTable;
                    ProdSearchGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.ToString());
                }
            }
        } // end of product search btn

        /** more Details btn for search results **/
        private void ProdSearchDetailsbtn_Click(object sender, EventArgs e)
        {
            //got to more details about the selected product
            MessageBox.Show("Show model details about this product...");
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
