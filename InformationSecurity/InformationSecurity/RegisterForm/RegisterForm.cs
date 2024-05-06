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
    public partial class RegisterForm : Form
    {
        public RegisterForm()
        {
            InitializeComponent();
            fillComboBox();
            LoadNextUserId();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            OrganizerForm organizerForm = new OrganizerForm();
            organizerForm.Show();
        }
        private void fillComboBox()
        {
            string query = "SELECT Distinct event_name FROM event";
            string query2 = "SELECT Distinct role_name FROM [role]";

            try
            {
                using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            cbEvent.Items.Clear();
                            while (reader.Read())
                            {
                                cbEvent.Items.Add(reader.GetString(0));
                            }
                        }
                    }
                    using (SqlCommand command = new SqlCommand(query2, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            cbRole.Items.Clear();
                            while (reader.Read())
                            {
                                cbRole.Items.Add(reader.GetString(0));
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка при заполнении ComboBox: " + ex.Message);
            }
        }
        private void LoadNextUserId()
        {
            string query = "SELECT ISNULL(MAX(user_id), 0) + 1 AS NextUserId FROM [user]";
            try
            {
                using (SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                {
                    sqlConnection.Open();

                    using (SqlCommand sqlCommand = new SqlCommand(query, sqlConnection))
                    {
                        object result = sqlCommand.ExecuteScalar();
                        if (result != DBNull.Value)
                        {
                            int nextUserId = Convert.ToInt32(result);
                            tbId.Text = nextUserId.ToString();
                        }
                        else
                        {
                            tbId.Text = "1";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка при загрузке следующего user_id: " + ex.Message, "Ошибка",
                                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string id = tbId.Text;
            string name = tbFIO.Text;
            string gender = (string)cbGender.SelectedItem;
            string role = (string)cbRole.SelectedItem;
            string email = tbEmail.Text;
            string phone = tbPhone.Text;
            string direction = tbDirection.Text;
            string events = (string)cbEvent.SelectedItem;
            string password = tbPassword.Text;
            string passwordRepeat = tbPasswordRepeat.Text;

            this.Hide();
            OrganizerForm organizerForm = new OrganizerForm();
            organizerForm.Show();
        }
    }
}
