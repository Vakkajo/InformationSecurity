namespace InformationSecurity
{
    partial class MainForm
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
            this.dgvEvents = new System.Windows.Forms.DataGridView();
            this.lbName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbDirection = new System.Windows.Forms.ComboBox();
            this.lbGreetings = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEvents)).BeginInit();
            this.SuspendLayout();
            // 
            // backbtn
            // 
            this.backbtn.Location = new System.Drawing.Point(608, 389);
            this.backbtn.Name = "backbtn";
            this.backbtn.Size = new System.Drawing.Size(80, 26);
            this.backbtn.TabIndex = 0;
            this.backbtn.Text = "Назад";
            this.backbtn.UseVisualStyleBackColor = true;
            this.backbtn.Click += new System.EventHandler(this.backbtn_Click);
            // 
            // dgvEvents
            // 
            this.dgvEvents.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvEvents.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEvents.Location = new System.Drawing.Point(12, 48);
            this.dgvEvents.Name = "dgvEvents";
            this.dgvEvents.ReadOnly = true;
            this.dgvEvents.Size = new System.Drawing.Size(676, 317);
            this.dgvEvents.TabIndex = 1;
            // 
            // lbName
            // 
            this.lbName.AutoSize = true;
            this.lbName.Location = new System.Drawing.Point(277, 26);
            this.lbName.Name = "lbName";
            this.lbName.Size = new System.Drawing.Size(114, 13);
            this.lbName.TabIndex = 2;
            this.lbName.Text = "Список мероприятий";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 379);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(160, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Фильтрация по направлению:";
            // 
            // cbDirection
            // 
            this.cbDirection.FormattingEnabled = true;
            this.cbDirection.Items.AddRange(new object[] {
            "Без фильтрации",
            "Сильный бизнес-тренер",
            "Анализ и моделироавние бизнес-процессов",
            "Сила лидера",
            "Обзор моделей",
            "Обзор стандартов",
            "Методологии",
            "Ваши позиции в рейтинге",
            "Властелин дедлайнов",
            "Must Have 21 века",
            "Включи в работу весь офис",
            "Авторские анонсы",
            "Свобода обучать",
            "Корпоративное обучение",
            "Обучение персонала",
            "Стратегические силы компании",
            "Подготовка проекта",
            "Золотой актив",
            "Скандальный суперпартнер",
            "Основы блокчейн",
            "Секреты",
            "Безопасность",
            "Осознанность личных целей",
            "Soft skills",
            "Развитие проактивности",
            "Идельный результат",
            "Тайны и секреты",
            "Рычаги",
            "Войти в ТОП",
            "Секреты продвижения",
            "Руководство проектами"});
            this.cbDirection.Location = new System.Drawing.Point(178, 376);
            this.cbDirection.Name = "cbDirection";
            this.cbDirection.Size = new System.Drawing.Size(198, 21);
            this.cbDirection.TabIndex = 4;
            this.cbDirection.SelectedIndexChanged += new System.EventHandler(this.cbDirection_SelectedIndexChanged);
            // 
            // lbGreetings
            // 
            this.lbGreetings.AutoSize = true;
            this.lbGreetings.Location = new System.Drawing.Point(12, 13);
            this.lbGreetings.Name = "lbGreetings";
            this.lbGreetings.Size = new System.Drawing.Size(17, 13);
            this.lbGreetings.TabIndex = 5;
            this.lbGreetings.Text = "Hi";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(700, 427);
            this.Controls.Add(this.lbGreetings);
            this.Controls.Add(this.cbDirection);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lbName);
            this.Controls.Add(this.dgvEvents);
            this.Controls.Add(this.backbtn);
            this.Name = "MainForm";
            this.Text = "Главное окно";
            ((System.ComponentModel.ISupportInitialize)(this.dgvEvents)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button backbtn;
        private System.Windows.Forms.DataGridView dgvEvents;
        private System.Windows.Forms.Label lbName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbDirection;
        private System.Windows.Forms.Label lbGreetings;
    }
}