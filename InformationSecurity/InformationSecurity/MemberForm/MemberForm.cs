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
    public partial class MemberForm : Form
    {
        public MemberForm()
        {
            InitializeComponent();
            LoadData();
        }

        private void backbtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            AuthorizationForm loginForm = new AuthorizationForm();
            loginForm.Show();
        }
        private void LoadData()
        {
            tbName.Text = UserData.firstName;
            tbLastName.Text = UserData.lastName;
            tbMiddleName.Text = UserData.middleName;
            tbMail.Text = UserData.email;
            tbPassword.Text = UserData.password;
            //cbGender.SelectedItem;
            tbPhone.Text = UserData.phone;
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            string query = "UPDATE [user] SET user_first_name = @firstName, user_last_name = @lastName, user_middle_name = @middleName, user_email = @email, user_password = @password, user_gender = @gender, user_phone = @phone WHERE user_id = @UserId";

            using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.ConnectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@firstName", tbName.Text);
                command.Parameters.AddWithValue("@lastName", tbLastName.Text);
                command.Parameters.AddWithValue("@middleName", tbMiddleName.Text);
                command.Parameters.AddWithValue("@email", tbMail.Text);
                command.Parameters.AddWithValue("@password", tbPassword.Text);
                command.Parameters.AddWithValue("@gender", cbGender.SelectedItem);
                command.Parameters.AddWithValue("@phone", tbPhone.Text);
                command.Parameters.AddWithValue("@UserId", UserData.id);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    MessageBox.Show("Данные успешно обновлены!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка при обновлении данных: " + ex.Message);
                }
            }
        }
    }
}
