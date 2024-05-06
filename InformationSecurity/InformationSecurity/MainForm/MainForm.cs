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

namespace InformationSecurity
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            LoadEvents();
            lbGreetings.Text = UserData.Welcome(lbGreetings.Text);
        }

        private void backbtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            AuthorizationForm loginForm = new AuthorizationForm();
            loginForm.Show();
        }
        private void LoadEvents()
        {
            try
            {
                using (SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                {
                    sqlConnection.Open();

                    using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("GetEvents", sqlConnection))
                    {
                        DataTable dataTable = new DataTable();
                        sqlDataAdapter.Fill(dataTable);

                        dgvEvents.DataSource = dataTable;
                    }
                }
            }
            catch
            {
                MessageBox.Show("Не удалось загузить список мероприятий", "Ошибка",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void cbDirection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbDirection.SelectedIndex == 0)
            {
                LoadEvents();
            }
            else
            {
                (dgvEvents.DataSource as DataTable).DefaultView.RowFilter = $"Направление LIKE '%{cbDirection.SelectedItem}'";
            }
        }
    }
}
