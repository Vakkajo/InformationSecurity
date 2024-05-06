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
    public partial class JuryForm : Form
    {
        public JuryForm()
        {
            InitializeComponent();
            lbGreetings.Text = UserData.Welcome(lbGreetings.Text);
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
            string query = $"SELECT dbo.activity.activity_name as 'Активность', dbo.activity.activity_time_start as 'Время начала', dbo.event_business.event_name as 'Событие', dbo.[user].user_first_name as 'Имя', dbo.[user].user_last_name as 'Фамилия', dbo.[user].user_middle_name as 'Отчество', dbo.activity.activity_day as 'День'\r\n" +
                            $"FROM dbo.event_activity \r\n" +
                            $"INNER JOIN dbo.activity ON dbo.event_activity.activity_id = dbo.activity.activity_id \r\n" +
                            $"INNER JOIN dbo.event_business ON dbo.event_activity.event_id = dbo.event_business.event_id \r\n" +
                            $"INNER JOIN dbo.[user] ON dbo.event_business.event_user_id = dbo.[user].user_id \r\n" +
                            $"INNER JOIN dbo.jury_activity ON dbo.activity.activity_id = dbo.jury_activity.activity_id \r\n" +
                            $"WHERE dbo.jury_activity.jury_activity_user_id = {UserData.id}";
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
