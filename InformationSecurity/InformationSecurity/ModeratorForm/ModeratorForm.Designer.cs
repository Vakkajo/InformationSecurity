namespace InformationSecurity
{
    partial class ModeratorForm
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
            this.lbModer = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEvents)).BeginInit();
            this.SuspendLayout();
            // 
            // backbtn
            // 
            this.backbtn.Location = new System.Drawing.Point(608, 412);
            this.backbtn.Name = "backbtn";
            this.backbtn.Size = new System.Drawing.Size(80, 26);
            this.backbtn.TabIndex = 12;
            this.backbtn.Text = "Назад";
            this.backbtn.UseVisualStyleBackColor = true;
            this.backbtn.Click += new System.EventHandler(this.backbtn_Click);
            // 
            // dgvEvents
            // 
            this.dgvEvents.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvEvents.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEvents.Location = new System.Drawing.Point(12, 69);
            this.dgvEvents.Name = "dgvEvents";
            this.dgvEvents.ReadOnly = true;
            this.dgvEvents.Size = new System.Drawing.Size(676, 317);
            this.dgvEvents.TabIndex = 13;
            // 
            // lbModer
            // 
            this.lbModer.AutoSize = true;
            this.lbModer.Location = new System.Drawing.Point(251, 36);
            this.lbModer.Name = "lbModer";
            this.lbModer.Size = new System.Drawing.Size(175, 13);
            this.lbModer.TabIndex = 14;
            this.lbModer.Text = "Ваши активности для модерации";
            // 
            // ModeratorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(702, 450);
            this.Controls.Add(this.lbModer);
            this.Controls.Add(this.dgvEvents);
            this.Controls.Add(this.backbtn);
            this.Name = "ModeratorForm";
            this.Text = "Окно модератора";
            ((System.ComponentModel.ISupportInitialize)(this.dgvEvents)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button backbtn;
        private System.Windows.Forms.DataGridView dgvEvents;
        private System.Windows.Forms.Label lbModer;
    }
}