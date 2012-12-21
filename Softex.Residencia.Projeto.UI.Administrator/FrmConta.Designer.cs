namespace Softex.Residencia.Projeto.UI.Administrator
{
    partial class FrmConta
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmConta));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnConsultarMesa = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.lblTotal = new System.Windows.Forms.Label();
            this.lsbListaDeProdutos = new System.Windows.Forms.ListBox();
            this.txtNumeroDaMesa = new System.Windows.Forms.MaskedTextBox();
            this.txtNumeroMesa = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtNumeroMesa);
            this.groupBox1.Controls.Add(this.txtNumeroDaMesa);
            this.groupBox1.Controls.Add(this.btnConsultarMesa);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(715, 112);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Procurar conta";
            // 
            // btnConsultarMesa
            // 
            this.btnConsultarMesa.Location = new System.Drawing.Point(600, 42);
            this.btnConsultarMesa.Name = "btnConsultarMesa";
            this.btnConsultarMesa.Size = new System.Drawing.Size(98, 26);
            this.btnConsultarMesa.TabIndex = 2;
            this.btnConsultarMesa.Text = "Consultar";
            this.btnConsultarMesa.UseVisualStyleBackColor = true;
            this.btnConsultarMesa.Click += new System.EventHandler(this.btnConsultarMesa_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(134, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Numero da mesa:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.lsbListaDeProdutos);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(12, 130);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(715, 404);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Detalhes";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.lblTotal);
            this.groupBox3.Location = new System.Drawing.Point(456, 143);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(204, 110);
            this.groupBox3.TabIndex = 1;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Total";
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(46, 42);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(109, 31);
            this.lblTotal.TabIndex = 0;
            this.lblTotal.Text = "R$ 0.00";
            // 
            // lsbListaDeProdutos
            // 
            this.lsbListaDeProdutos.FormattingEnabled = true;
            this.lsbListaDeProdutos.ItemHeight = 20;
            this.lsbListaDeProdutos.Location = new System.Drawing.Point(15, 37);
            this.lsbListaDeProdutos.Name = "lsbListaDeProdutos";
            this.lsbListaDeProdutos.Size = new System.Drawing.Size(370, 344);
            this.lsbListaDeProdutos.TabIndex = 0;
            // 
            // txtNumeroDaMesa
            // 
            this.txtNumeroDaMesa.Location = new System.Drawing.Point(162, 74);
            this.txtNumeroDaMesa.Mask = "00";
            this.txtNumeroDaMesa.Name = "txtNumeroDaMesa";
            this.txtNumeroDaMesa.Size = new System.Drawing.Size(420, 26);
            this.txtNumeroDaMesa.TabIndex = 3;
            // 
            // txtNumeroMesa
            // 
            this.txtNumeroMesa.Location = new System.Drawing.Point(162, 42);
            this.txtNumeroMesa.Name = "txtNumeroMesa";
            this.txtNumeroMesa.Size = new System.Drawing.Size(420, 26);
            this.txtNumeroMesa.TabIndex = 4;
            // 
            // FrmConta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(742, 546);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmConta";
            this.Text = "Consultar conta";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnConsultarMesa;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.ListBox lsbListaDeProdutos;
        private System.Windows.Forms.MaskedTextBox txtNumeroDaMesa;
        private System.Windows.Forms.TextBox txtNumeroMesa;
    }
}