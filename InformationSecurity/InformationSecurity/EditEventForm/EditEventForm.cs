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
    public partial class EditEventForm : Form
    {
        public EditEventForm()
        {
            InitializeComponent();
            LoadEvents();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            OrganizerForm organizerForm = new OrganizerForm();
            organizerForm.Show();
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

        private void btnSave_Click(object sender, EventArgs e)
        {
            string query = "SELECT\tdbo.event_business.event_name, dbo.activity.activity_name, dbo.event_business.event_date\r\nFROM\tdbo.activity INNER JOIN\r\n\t\tdbo.event_activity ON dbo.activity.activity_id = dbo.event_activity.activity_id INNER JOIN\r\n\t\tdbo.event_business ON dbo.event_activity.event_id = dbo.event_business.event_id";
            try
            {
                DataTable changes = ((DataTable)dgvEvents.DataSource).GetChanges();

                if (changes != null)
                {
                    using (SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                    {
                        sqlConnection.Open();

                        using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, sqlConnection))
                        {
                            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(sqlDataAdapter);
                            sqlDataAdapter.UpdateCommand = commandBuilder.GetUpdateCommand();

                            sqlDataAdapter.Update(changes);
                            ((DataTable)dgvEvents.DataSource).AcceptChanges();

                            MessageBox.Show("Изменения успешно сохранены!", "Успех",
                                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Нет изменений для сохранения.", "Информация",
                                    MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка при сохранении изменений: " + ex.Message, "Ошибка",
                                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
