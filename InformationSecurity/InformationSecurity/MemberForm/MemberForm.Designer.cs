namespace InformationSecurity
{
    partial class MemberForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.backbtn = new System.Windows.Forms.Button();
            this.pbPhoto = new System.Windows.Forms.PictureBox();
            this.tbName = new System.Windows.Forms.TextBox();
            this.lbName = new System.Windows.Forms.Label();
            this.lbLastName = new System.Windows.Forms.Label();
            this.tbLastName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tbMiddleName = new System.Windows.Forms.TextBox();
            this.lbMail = new System.Windows.Forms.Label();
            this.tbMail = new System.Windows.Forms.TextBox();
            this.lbPhone = new System.Windows.Forms.Label();
            this.tbPhone = new System.Windows.Forms.TextBox();
            this.lbPassword = new System.Windows.Forms.Label();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.cbGender = new System.Windows.Forms.ComboBox();
            this.lbGender = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pbPhoto)).BeginInit();
            this.SuspendLayout();
            // 
            // backbtn
            // 
            this.backbtn.Location = new System.Drawing.Point(455, 363);
            this.backbtn.Name = "backbtn";
            this.backbtn.Size = new System.Drawing.Size(80, 26);
            this.backbtn.TabIndex = 12;
            this.backbtn.Text = "Назад";
            this.backbtn.UseVisualStyleBackColor = true;
            this.backbtn.Click += new System.EventHandler(this.backbtn_Click);
            // 
            // pbPhoto
            // 
            this.pbPhoto.Location = new System.Drawing.Point(12, 12);
            this.pbPhoto.Name = "pbPhoto";
            this.pbPhoto.Size = new System.Drawing.Size(175, 166);
            this.pbPhoto.TabIndex = 13;
            this.pbPhoto.TabStop = false;
            // 
            // tbName
            // 
            this.tbName.Location = new System.Drawing.Point(206, 54);
            this.tbName.Name = "tbName";
            this.tbName.Size = new System.Drawing.Size(194, 20);
            this.tbName.TabIndex = 14;
            // 
            // lbName
            // 
            this.lbName.AutoSize = true;
            this.lbName.Location = new System.Drawing.Point(206, 35);
            this.lbName.Name = "lbName";
            this.lbName.Size = new System.Drawing.Size(29, 13);
            this.lbName.TabIndex = 15;
            this.lbName.Text = "Имя";
            // 
            // lbLastName
            // 
            this.lbLastName.AutoSize = true;
            this.lbLastName.Location = new System.Drawing.Point(209, 88);
            this.lbLastName.Name = "lbLastName";
            this.lbLastName.Size = new System.Drawing.Size(56, 13);
            this.lbLastName.TabIndex = 17;
            this.lbLastName.Text = "Фамилия";
            // 
            // tbLastName
            // 
            this.tbLastName.Location = new System.Drawing.Point(209, 107);
            this.tbLastName.Name = "tbLastName";
            this.tbLastName.Size = new System.Drawing.Size(194, 20);
            this.tbLastName.TabIndex = 16;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(212, 141);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 13);
            this.label1.TabIndex = 19;
            this.label1.Text = "Отчество";
            // 
            // tbMiddleName
            // 
            this.tbMiddleName.Location = new System.Drawing.Point(212, 160);
            this.tbMiddleName.Name = "tbMiddleName";
            this.tbMiddleName.Size = new System.Drawing.Size(194, 20);
            this.tbMiddleName.TabIndex = 18;
            // 
            // lbMail
            // 
            this.lbMail.AutoSize = true;
            this.lbMail.Location = new System.Drawing.Point(32, 202);
            this.lbMail.Name = "lbMail";
            this.lbMail.Size = new System.Drawing.Size(37, 13);
            this.lbMail.TabIndex = 21;
            this.lbMail.Text = "Почта";
            // 
            // tbMail
            // 
            this.tbMail.Location = new System.Drawing.Point(32, 221);
            this.tbMail.Name = "tbMail";
            this.tbMail.Size = new System.Drawing.Size(182, 20);
            this.tbMail.TabIndex = 20;
            // 
            // lbPhone
            // 
            this.lbPhone.AutoSize = true;
            this.lbPhone.Location = new System.Drawing.Point(35, 254);
            this.lbPhone.Name = "lbPhone";
            this.lbPhone.Size = new System.Drawing.Size(52, 13);
            this.lbPhone.TabIndex = 23;
            this.lbPhone.Text = "Телефон";
            // 
            // tbPhone
            // 
            this.tbPhone.Location = new System.Drawing.Point(35, 273);
            this.tbPhone.Name = "tbPhone";
            this.tbPhone.Size = new System.Drawing.Size(182, 20);
            this.tbPhone.TabIndex = 22;
            // 
            // lbPassword
            // 
            this.lbPassword.AutoSize = true;
            this.lbPassword.Location = new System.Drawing.Point(38, 309);
            this.lbPassword.Name = "lbPassword";
            this.lbPassword.Size = new System.Drawing.Size(45, 13);
            this.lbPassword.TabIndex = 25;
            this.lbPassword.Text = "Пароль";
            // 
            // tbPassword
            // 
            this.tbPassword.Location = new System.Drawing.Point(38, 328);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.Size = new System.Drawing.Size(182, 20);
            this.tbPassword.TabIndex = 24;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(236, 302);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(170, 47);
            this.btnSave.TabIndex = 26;
            this.btnSave.Text = "Сохранить изменения";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.buttonSave_Click);
            // 
            // cbGender
            // 
            this.cbGender.FormattingEnabled = true;
            this.cbGender.Items.AddRange(new object[] {
            "мужской",
            "женский"});
            this.cbGender.Location = new System.Drawing.Point(236, 221);
            this.cbGender.Name = "cbGender";
            this.cbGender.Size = new System.Drawing.Size(170, 21);
            this.cbGender.TabIndex = 27;
            // 
            // lbGender
            // 
            this.lbGender.AutoSize = true;
            this.lbGender.Location = new System.Drawing.Point(233, 202);
            this.lbGender.Name = "lbGender";
            this.lbGender.Size = new System.Drawing.Size(27, 13);
            this.lbGender.TabIndex = 28;
            this.lbGender.Text = "Пол";
            // 
            // MemberForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(548, 401);
            this.Controls.Add(this.lbGender);
            this.Controls.Add(this.cbGender);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lbPassword);
            this.Controls.Add(this.tbPassword);
            this.Controls.Add(this.lbPhone);
            this.Controls.Add(this.tbPhone);
            this.Controls.Add(this.lbMail);
            this.Controls.Add(this.tbMail);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbMiddleName);
            this.Controls.Add(this.lbLastName);
            this.Controls.Add(this.tbLastName);
            this.Controls.Add(this.lbName);
            this.Controls.Add(this.tbName);
            this.Controls.Add(this.pbPhoto);
            this.Controls.Add(this.backbtn);
            this.Name = "MemberForm";
            this.Text = "Окно профиля";
            ((System.ComponentModel.ISupportInitialize)(this.pbPhoto)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button backbtn;
        private System.Windows.Forms.PictureBox pbPhoto;
        private System.Windows.Forms.TextBox tbName;
        private System.Windows.Forms.Label lbName;
        private System.Windows.Forms.Label lbLastName;
        private System.Windows.Forms.TextBox tbLastName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbMiddleName;
        private System.Windows.Forms.Label lbMail;
        private System.Windows.Forms.TextBox tbMail;
        private System.Windows.Forms.Label lbPhone;
        private System.Windows.Forms.TextBox tbPhone;
        private System.Windows.Forms.Label lbPassword;
        private System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cbGender;
        private System.Windows.Forms.Label lbGender;
    }
}