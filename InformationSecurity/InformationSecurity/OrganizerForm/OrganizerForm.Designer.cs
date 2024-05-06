namespace InformationSecurity
{
    partial class OrganizerForm
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
            this.pbPhoto = new System.Windows.Forms.PictureBox();
            this.lbGreetings = new System.Windows.Forms.Label();
            this.btnProfile = new System.Windows.Forms.Button();
            this.btnEvent = new System.Windows.Forms.Button();
            this.btnMember = new System.Windows.Forms.Button();
            this.btnJury = new System.Windows.Forms.Button();
            this.backbtn = new System.Windows.Forms.Button();
            this.btnRegister = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pbPhoto)).BeginInit();
            this.SuspendLayout();
            // 
            // pbPhoto
            // 
            this.pbPhoto.Location = new System.Drawing.Point(24, 28);
            this.pbPhoto.Name = "pbPhoto";
            this.pbPhoto.Size = new System.Drawing.Size(159, 237);
            this.pbPhoto.TabIndex = 0;
            this.pbPhoto.TabStop = false;
            // 
            // lbGreetings
            // 
            this.lbGreetings.AutoSize = true;
            this.lbGreetings.Location = new System.Drawing.Point(226, 15);
            this.lbGreetings.Name = "lbGreetings";
            this.lbGreetings.Size = new System.Drawing.Size(17, 13);
            this.lbGreetings.TabIndex = 6;
            this.lbGreetings.Text = "Hi";
            // 
            // btnProfile
            // 
            this.btnProfile.Location = new System.Drawing.Point(24, 288);
            this.btnProfile.Name = "btnProfile";
            this.btnProfile.Size = new System.Drawing.Size(159, 84);
            this.btnProfile.TabIndex = 7;
            this.btnProfile.Text = "Мой профиль";
            this.btnProfile.UseVisualStyleBackColor = true;
            this.btnProfile.Click += new System.EventHandler(this.btnProfile_Click);
            // 
            // btnEvent
            // 
            this.btnEvent.Location = new System.Drawing.Point(215, 52);
            this.btnEvent.Name = "btnEvent";
            this.btnEvent.Size = new System.Drawing.Size(240, 84);
            this.btnEvent.TabIndex = 8;
            this.btnEvent.Text = "Мероприятия";
            this.btnEvent.UseVisualStyleBackColor = true;
            this.btnEvent.Click += new System.EventHandler(this.btnEvent_Click);
            // 
            // btnMember
            // 
            this.btnMember.Location = new System.Drawing.Point(215, 142);
            this.btnMember.Name = "btnMember";
            this.btnMember.Size = new System.Drawing.Size(240, 84);
            this.btnMember.TabIndex = 9;
            this.btnMember.Text = "Участники";
            this.btnMember.UseVisualStyleBackColor = true;
            this.btnMember.Click += new System.EventHandler(this.btnMember_Click);
            // 
            // btnJury
            // 
            this.btnJury.Location = new System.Drawing.Point(215, 232);
            this.btnJury.Name = "btnJury";
            this.btnJury.Size = new System.Drawing.Size(240, 84);
            this.btnJury.TabIndex = 10;
            this.btnJury.Text = "Жюри";
            this.btnJury.UseVisualStyleBackColor = true;
            this.btnJury.Click += new System.EventHandler(this.btnJury_Click);
            // 
            // backbtn
            // 
            this.backbtn.Location = new System.Drawing.Point(375, 373);
            this.backbtn.Name = "backbtn";
            this.backbtn.Size = new System.Drawing.Size(80, 26);
            this.backbtn.TabIndex = 11;
            this.backbtn.Text = "Назад";
            this.backbtn.UseVisualStyleBackColor = true;
            this.backbtn.Click += new System.EventHandler(this.backbtn_Click);
            // 
            // btnRegister
            // 
            this.btnRegister.Location = new System.Drawing.Point(215, 328);
            this.btnRegister.Name = "btnRegister";
            this.btnRegister.Size = new System.Drawing.Size(240, 34);
            this.btnRegister.TabIndex = 12;
            this.btnRegister.Text = "Регистрация жюри/модераторов";
            this.btnRegister.UseVisualStyleBackColor = true;
            this.btnRegister.Click += new System.EventHandler(this.btnRegister_Click);
            // 
            // OrganizerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(477, 407);
            this.Controls.Add(this.btnRegister);
            this.Controls.Add(this.backbtn);
            this.Controls.Add(this.btnJury);
            this.Controls.Add(this.btnMember);
            this.Controls.Add(this.btnEvent);
            this.Controls.Add(this.btnProfile);
            this.Controls.Add(this.lbGreetings);
            this.Controls.Add(this.pbPhoto);
            this.Name = "OrganizerForm";
            this.Text = "Окно организатора";
            ((System.ComponentModel.ISupportInitialize)(this.pbPhoto)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pbPhoto;
        private System.Windows.Forms.Label lbGreetings;
        private System.Windows.Forms.Button btnProfile;
        private System.Windows.Forms.Button btnEvent;
        private System.Windows.Forms.Button btnMember;
        private System.Windows.Forms.Button btnJury;
        private System.Windows.Forms.Button backbtn;
        private System.Windows.Forms.Button btnRegister;
    }
}