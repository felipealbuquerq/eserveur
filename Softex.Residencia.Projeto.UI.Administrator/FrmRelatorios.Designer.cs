namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmRelatorios {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmRelatorios));
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.btnGerarRelatorioOperacional = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dateFimRelatorioOperancional = new System.Windows.Forms.DateTimePicker();
            this.dateInicioRelatorioOperancional = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dateFimRelatorioGerencial = new System.Windows.Forms.DateTimePicker();
            this.dateInicioRelatorioGerencial = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnGerarRelatorioGerencial = new System.Windows.Forms.Button();
            this.cboListaDeRelatoriosGerenciais = new System.Windows.Forms.ComboBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(7, 35);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(624, 28);
            this.comboBox1.TabIndex = 0;
            // 
            // btnGerarRelatorioOperacional
            // 
            this.btnGerarRelatorioOperacional.ImageKey = "(aucun)";
            this.btnGerarRelatorioOperacional.Location = new System.Drawing.Point(489, 92);
            this.btnGerarRelatorioOperacional.Name = "btnGerarRelatorioOperacional";
            this.btnGerarRelatorioOperacional.Size = new System.Drawing.Size(142, 30);
            this.btnGerarRelatorioOperacional.TabIndex = 1;
            this.btnGerarRelatorioOperacional.Text = "Gerar relatório";
            this.btnGerarRelatorioOperacional.UseVisualStyleBackColor = true;
            this.btnGerarRelatorioOperacional.Click += new System.EventHandler(this.btnGerarRelatorioOperacional_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dateFimRelatorioOperancional);
            this.groupBox1.Controls.Add(this.dateInicioRelatorioOperancional);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnGerarRelatorioOperacional);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(13, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(641, 142);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Relatórios operacionais";
            // 
            // dateFimRelatorioOperancional
            // 
            this.dateFimRelatorioOperancional.Location = new System.Drawing.Point(269, 92);
            this.dateFimRelatorioOperancional.Name = "dateFimRelatorioOperancional";
            this.dateFimRelatorioOperancional.Size = new System.Drawing.Size(200, 26);
            this.dateFimRelatorioOperancional.TabIndex = 5;
            // 
            // dateInicioRelatorioOperancional
            // 
            this.dateInicioRelatorioOperancional.Location = new System.Drawing.Point(39, 92);
            this.dateInicioRelatorioOperancional.Name = "dateInicioRelatorioOperancional";
            this.dateInicioRelatorioOperancional.Size = new System.Drawing.Size(200, 26);
            this.dateInicioRelatorioOperancional.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(245, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(18, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "a";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(27, 20);
            this.label1.TabIndex = 2;
            this.label1.Text = "de";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dateFimRelatorioGerencial);
            this.groupBox2.Controls.Add(this.dateInicioRelatorioGerencial);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.btnGerarRelatorioGerencial);
            this.groupBox2.Controls.Add(this.cboListaDeRelatoriosGerenciais);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(13, 174);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(641, 142);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Relatórios gerenciais";
            // 
            // dateFimRelatorioGerencial
            // 
            this.dateFimRelatorioGerencial.Location = new System.Drawing.Point(269, 92);
            this.dateFimRelatorioGerencial.Name = "dateFimRelatorioGerencial";
            this.dateFimRelatorioGerencial.Size = new System.Drawing.Size(200, 26);
            this.dateFimRelatorioGerencial.TabIndex = 5;
            // 
            // dateInicioRelatorioGerencial
            // 
            this.dateInicioRelatorioGerencial.Location = new System.Drawing.Point(39, 92);
            this.dateInicioRelatorioGerencial.Name = "dateInicioRelatorioGerencial";
            this.dateInicioRelatorioGerencial.Size = new System.Drawing.Size(200, 26);
            this.dateInicioRelatorioGerencial.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(245, 97);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(18, 20);
            this.label4.TabIndex = 3;
            this.label4.Text = "a";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 97);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(27, 20);
            this.label5.TabIndex = 2;
            this.label5.Text = "de";
            // 
            // btnGerarRelatorioGerencial
            // 
            this.btnGerarRelatorioGerencial.ImageKey = "(aucun)";
            this.btnGerarRelatorioGerencial.Location = new System.Drawing.Point(489, 92);
            this.btnGerarRelatorioGerencial.Name = "btnGerarRelatorioGerencial";
            this.btnGerarRelatorioGerencial.Size = new System.Drawing.Size(142, 30);
            this.btnGerarRelatorioGerencial.TabIndex = 1;
            this.btnGerarRelatorioGerencial.Text = "Gerar relatório";
            this.btnGerarRelatorioGerencial.UseVisualStyleBackColor = true;
            // 
            // cboListaDeRelatoriosGerenciais
            // 
            this.cboListaDeRelatoriosGerenciais.FormattingEnabled = true;
            this.cboListaDeRelatoriosGerenciais.Location = new System.Drawing.Point(7, 35);
            this.cboListaDeRelatoriosGerenciais.Name = "cboListaDeRelatoriosGerenciais";
            this.cboListaDeRelatoriosGerenciais.Size = new System.Drawing.Size(624, 28);
            this.cboListaDeRelatoriosGerenciais.TabIndex = 0;
            // 
            // FrmRelatorios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(666, 331);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmRelatorios";
            this.Text = "Relatórios";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button btnGerarRelatorioOperacional;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DateTimePicker dateFimRelatorioOperancional;
        private System.Windows.Forms.DateTimePicker dateInicioRelatorioOperancional;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DateTimePicker dateFimRelatorioGerencial;
        private System.Windows.Forms.DateTimePicker dateInicioRelatorioGerencial;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnGerarRelatorioGerencial;
        private System.Windows.Forms.ComboBox cboListaDeRelatoriosGerenciais;
    }
}