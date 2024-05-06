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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace InformationSecurity
{
    public partial class AuthorizationForm : Form
    {
        public AuthorizationForm()
        {
            InitializeComponent();
        }

        private void guestbtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            MainForm mainForm = new MainForm();
            mainForm.Show();
        }

        private void loginbtn_Click(object sender, EventArgs e)
        {
            string login = logintb.Text.Trim();
            string password = passwordtb.Text.Trim();

            if (login == string.Empty || password == string.Empty)
            {
                MessageBox.Show("Заполните все поля!", "Предупреждение",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                try
                {
                    using (SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ConnectionString))
                    {
                        sqlConnection.Open();

                        using (SqlCommand sqlCommand = new SqlCommand("GetUser", sqlConnection))
                        {
                            sqlCommand.CommandType = CommandType.StoredProcedure;
                            sqlCommand.Parameters.AddWithValue("@login", login);
                            sqlCommand.Parameters.AddWithValue("@password", password);

                            using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                            {
                                if (sqlDataReader.HasRows && sqlDataReader.Read())
                                {
                                    UserData.id = sqlDataReader.GetInt32(0);
                                    UserData.firstName = sqlDataReader.GetString(2);
                                    UserData.lastName = sqlDataReader.GetString(1);
                                    UserData.middleName = sqlDataReader.GetString(3);
                                    UserData.email = sqlDataReader.GetString(4);
                                    UserData.password = sqlDataReader.GetString(5);
                                    UserData.gender = sqlDataReader.GetString(6);
                                    UserData.birthday = sqlDataReader.GetDateTime(7);
                                    UserData.country = sqlDataReader.GetInt32(8);
                                    UserData.phone = sqlDataReader.GetString(9);
                                    UserData.photo = sqlDataReader.GetString(12);
                                    UserData.role = sqlDataReader.GetInt32(13);

                                    switch (UserData.role)
                                    {
                                        case 1:
                                            this.Hide();
                                            MemberForm memberForm = new MemberForm();
                                            memberForm.Show();
                                            break;

                                        case 2:
                                            this.Hide();
                                            ModeratorForm moderatorForm = new ModeratorForm();
                                            moderatorForm.Show();
                                            break;

                                        case 3:
                                            this.Hide();
                                            OrganizerForm organizerForm = new OrganizerForm();
                                            organizerForm.Show();
                                            break;

                                        case 4:
                                            this.Hide();
                                            JuryForm juryForm = new JuryForm();
                                            juryForm.Show();
                                            break;
                                    }
                                }
                                sqlDataReader.Close();
                            }
                            sqlConnection.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Не удалось проверить учетные данные!" + ex.Message, "Ошибка",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}
