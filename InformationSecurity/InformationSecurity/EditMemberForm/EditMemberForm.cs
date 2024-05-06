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
    public partial class EditMemberForm : Form
    {
        public EditMemberForm()
        {
            InitializeComponent();
            LoadMembers();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            OrganizerForm organizerForm = new OrganizerForm();
            organizerForm.Show();
        }
        private void LoadMembers()
        {
            string query = "SELECT user_id as 'ID', user_last_name as 'Фамилия', user_first_name as 'Имя', user_middle_name as 'Отчество', user_email as 'Почта', user_password as 'Пароль' FROM [user] WHERE user_role_id = 1";
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
                MessageBox.Show("Не удалось загузить список участников", "Ошибка",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string query = "SELECT user_id as 'ID', user_last_name as 'Фамилия', user_first_name as 'Имя', user_middle_name as 'Отчество', user_email as 'Почта', user_password as 'Пароль' FROM [user] WHERE user_role_id = 1";
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

                            sqlDataAdapter.InsertCommand = commandBuilder.GetInsertCommand();
                            sqlDataAdapter.UpdateCommand = commandBuilder.GetUpdateCommand();
                            sqlDataAdapter.DeleteCommand = commandBuilder.GetDeleteCommand();

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
