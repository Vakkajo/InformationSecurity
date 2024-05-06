using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InformationSecurity
{
    public partial class OrganizerForm : Form
    {
        public OrganizerForm()
        {
            InitializeComponent();
            lbGreetings.Text = UserData.Welcome(lbGreetings.Text);
        }

        private void backbtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            AuthorizationForm loginForm = new AuthorizationForm();
            loginForm.Show();
        }

        private void btnProfile_Click(object sender, EventArgs e)
        {
            this.Hide();
            MemberForm profileForm = new MemberForm();
            profileForm.Show();
        }

        private void btnEvent_Click(object sender, EventArgs e)
        {
            this.Hide();
            EditEventForm editEventForm = new EditEventForm();
            editEventForm.Show();
        }

        private void btnMember_Click(object sender, EventArgs e)
        {
            this.Hide();
            EditMemberForm editMemberForm = new EditMemberForm();
            editMemberForm.Show();
        }

        private void btnJury_Click(object sender, EventArgs e)
        {
            MessageBox.Show("В разработке!", "Предупреждение",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            this.Hide();
            RegisterForm regForm = new RegisterForm();
            regForm.Show();
        }
    }
}
