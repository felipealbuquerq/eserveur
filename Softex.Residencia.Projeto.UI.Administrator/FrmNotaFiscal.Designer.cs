namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmNotaFiscal {
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmNotaFiscal));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtCodigoNotaFiscal = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnGerarNotaFiscal = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtCodigoNotaFiscal);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnGerarNotaFiscal);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(13, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(677, 87);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Gerar nota fiscal";
            // 
            // txtCodigoNotaFiscal
            // 
            this.txtCodigoNotaFiscal.Location = new System.Drawing.Point(107, 33);
            this.txtCodigoNotaFiscal.Name = "txtCodigoNotaFiscal";
            this.txtCodigoNotaFiscal.Size = new System.Drawing.Size(413, 26);
            this.txtCodigoNotaFiscal.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Cód. fiscal:";
            // 
            // btnGerarNotaFiscal
            // 
            this.btnGerarNotaFiscal.Location = new System.Drawing.Point(526, 33);
            this.btnGerarNotaFiscal.Name = "btnGerarNotaFiscal";
            this.btnGerarNotaFiscal.Size = new System.Drawing.Size(145, 26);
            this.btnGerarNotaFiscal.TabIndex = 0;
            this.btnGerarNotaFiscal.Text = "Gerar";
            this.btnGerarNotaFiscal.UseVisualStyleBackColor = true;
            // 
            // FrmNotaFiscal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(702, 121);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmNotaFiscal";
            this.Text = "Nota Fiscal";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtCodigoNotaFiscal;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnGerarNotaFiscal;
    }
}