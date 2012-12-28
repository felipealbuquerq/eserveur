namespace Softex.Residencia.Projeto.UI.Client
{
    partial class FrmVerConta
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
        private void InitializeComponent()
        {
            this.gpbNomeMesa = new System.Windows.Forms.GroupBox();
            this.ckbListaPedidos = new System.Windows.Forms.CheckedListBox();
            this.btnPagarPedidosSelecionados = new System.Windows.Forms.Button();
            this.btnPagarConta = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtValorTotalConta = new System.Windows.Forms.TextBox();
            this.gpbNomeMesa.SuspendLayout();
            this.SuspendLayout();
            // 
            // gpbNomeMesa
            // 
            this.gpbNomeMesa.Controls.Add(this.txtValorTotalConta);
            this.gpbNomeMesa.Controls.Add(this.label1);
            this.gpbNomeMesa.Controls.Add(this.btnPagarConta);
            this.gpbNomeMesa.Controls.Add(this.btnPagarPedidosSelecionados);
            this.gpbNomeMesa.Controls.Add(this.ckbListaPedidos);
            this.gpbNomeMesa.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gpbNomeMesa.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbNomeMesa.Location = new System.Drawing.Point(0, 0);
            this.gpbNomeMesa.Name = "gpbNomeMesa";
            this.gpbNomeMesa.Size = new System.Drawing.Size(1062, 583);
            this.gpbNomeMesa.TabIndex = 0;
            this.gpbNomeMesa.TabStop = false;
            this.gpbNomeMesa.Text = "NomeDaMesa";
            // 
            // ckbListaPedidos
            // 
            this.ckbListaPedidos.FormattingEnabled = true;
            this.ckbListaPedidos.Location = new System.Drawing.Point(13, 26);
            this.ckbListaPedidos.Name = "ckbListaPedidos";
            this.ckbListaPedidos.Size = new System.Drawing.Size(1037, 487);
            this.ckbListaPedidos.TabIndex = 0;
            // 
            // btnPagarPedidosSelecionados
            // 
            this.btnPagarPedidosSelecionados.Location = new System.Drawing.Point(13, 530);
            this.btnPagarPedidosSelecionados.Name = "btnPagarPedidosSelecionados";
            this.btnPagarPedidosSelecionados.Size = new System.Drawing.Size(135, 30);
            this.btnPagarPedidosSelecionados.TabIndex = 1;
            this.btnPagarPedidosSelecionados.Text = "Fechar seleção";
            this.btnPagarPedidosSelecionados.UseVisualStyleBackColor = true;
            // 
            // btnPagarConta
            // 
            this.btnPagarConta.Location = new System.Drawing.Point(169, 530);
            this.btnPagarConta.Name = "btnPagarConta";
            this.btnPagarConta.Size = new System.Drawing.Size(135, 30);
            this.btnPagarConta.TabIndex = 2;
            this.btnPagarConta.Text = "Fechar conta";
            this.btnPagarConta.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(762, 531);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 25);
            this.label1.TabIndex = 3;
            this.label1.Text = "Total:";
            // 
            // txtValorTotalConta
            // 
            this.txtValorTotalConta.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtValorTotalConta.Location = new System.Drawing.Point(863, 528);
            this.txtValorTotalConta.Name = "txtValorTotalConta";
            this.txtValorTotalConta.Size = new System.Drawing.Size(187, 30);
            this.txtValorTotalConta.TabIndex = 4;
            this.txtValorTotalConta.Text = "0,00";
            this.txtValorTotalConta.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // FrmVerConta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1062, 583);
            this.Controls.Add(this.gpbNomeMesa);
            this.Name = "FrmVerConta";
            this.Text = "FrmVerConta";
            this.gpbNomeMesa.ResumeLayout(false);
            this.gpbNomeMesa.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpbNomeMesa;
        private System.Windows.Forms.TextBox txtValorTotalConta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnPagarConta;
        private System.Windows.Forms.Button btnPagarPedidosSelecionados;
        private System.Windows.Forms.CheckedListBox ckbListaPedidos;
    }
}