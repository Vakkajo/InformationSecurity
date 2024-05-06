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
    public partial class ModeratorForm : Form
    {
        public ModeratorForm()
        {
            InitializeComponent();
            LoadEvents();
        }

        private void backbtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            AuthorizationForm loginForm = new AuthorizationForm();
            loginForm.Show();
        }
        private void LoadEvents()
        {
            string query = $"SELECT activity_name as 'Активность', activity_day as 'День', activity_time_start as 'Время начала' FROM [activity] WHERE activity_user_id = {UserData.id}";
            try
            {
                using (SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                {
                    sqlConnection.Open();

                    using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, sqlConnection))
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
    }
}
