namespace InformationSecurity
{
    partial class AuthorizationForm
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
            this.loginbtn = new System.Windows.Forms.Button();
            this.loginlb = new System.Windows.Forms.Label();
            this.passwordlb = new System.Windows.Forms.Label();
            this.logintb = new System.Windows.Forms.TextBox();
            this.passwordtb = new System.Windows.Forms.TextBox();
            this.namelb = new System.Windows.Forms.Label();
            this.guestbtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // loginbtn
            // 
            this.loginbtn.Location = new System.Drawing.Point(49, 243);
            this.loginbtn.Name = "loginbtn";
            this.loginbtn.Size = new System.Drawing.Size(170, 40);
            this.loginbtn.TabIndex = 0;
            this.loginbtn.Text = "Войти";
            this.loginbtn.UseVisualStyleBackColor = true;
            this.loginbtn.Click += new System.EventHandler(this.loginbtn_Click);
            // 
            // loginlb
            // 
            this.loginlb.AutoSize = true;
            this.loginlb.Location = new System.Drawing.Point(29, 103);
            this.loginlb.Name = "loginlb";
            this.loginlb.Size = new System.Drawing.Size(38, 13);
            this.loginlb.TabIndex = 1;
            this.loginlb.Text = "Логин";
            // 
            // passwordlb
            // 
            this.passwordlb.AutoSize = true;
            this.passwordlb.Location = new System.Drawing.Point(29, 153);
            this.passwordlb.Name = "passwordlb";
            this.passwordlb.Size = new System.Drawing.Size(45, 13);
            this.passwordlb.TabIndex = 2;
            this.passwordlb.Text = "Пароль";
            // 
            // logintb
            // 
            this.logintb.Location = new System.Drawing.Point(32, 121);
            this.logintb.Name = "logintb";
            this.logintb.Size = new System.Drawing.Size(205, 20);
            this.logintb.TabIndex = 3;
            // 
            // passwordtb
            // 
            this.passwordtb.Location = new System.Drawing.Point(32, 171);
            this.passwordtb.Name = "passwordtb";
            this.passwordtb.Size = new System.Drawing.Size(205, 20);
            this.passwordtb.TabIndex = 4;
            // 
            // namelb
            // 
            this.namelb.AutoSize = true;
            this.namelb.Location = new System.Drawing.Point(49, 35);
            this.namelb.Name = "namelb";
            this.namelb.Size = new System.Drawing.Size(171, 13);
            this.namelb.TabIndex = 5;
            this.namelb.Text = "Информационная безопасность";
            // 
            // guestbtn
            // 
            this.guestbtn.Location = new System.Drawing.Point(49, 292);
            this.guestbtn.Name = "guestbtn";
            this.guestbtn.Size = new System.Drawing.Size(170, 30);
            this.guestbtn.TabIndex = 6;
            this.guestbtn.Text = "Гость";
            this.guestbtn.UseVisualStyleBackColor = true;
            this.guestbtn.Click += new System.EventHandler(this.guestbtn_Click);
            // 
            // AuthorizationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(270, 374);
            this.Controls.Add(this.guestbtn);
            this.Controls.Add(this.namelb);
            this.Controls.Add(this.passwordtb);
            this.Controls.Add(this.logintb);
            this.Controls.Add(this.passwordlb);
            this.Controls.Add(this.loginlb);
            this.Controls.Add(this.loginbtn);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "AuthorizationForm";
            this.Text = "Авторизация";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button loginbtn;
        private System.Windows.Forms.Label loginlb;
        private System.Windows.Forms.Label passwordlb;
        private System.Windows.Forms.TextBox logintb;
        private System.Windows.Forms.TextBox passwordtb;
        private System.Windows.Forms.Label namelb;
        private System.Windows.Forms.Button guestbtn;
    }
}

