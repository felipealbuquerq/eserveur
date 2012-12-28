namespace Softex.Residencia.Projeto.UI.Client
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmConta));
            this.gpbNomeDaParcial = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtTotalDaConta = new System.Windows.Forms.TextBox();
            this.btnFecharConta = new System.Windows.Forms.Button();
            this.ckbListaDePedidosAbertos = new System.Windows.Forms.CheckedListBox();
            this.btnFecharPedidosSelecionados = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.gpbNomeDaParcial.SuspendLayout();
            this.SuspendLayout();
            // 
            // gpbNomeDaParcial
            // 
            this.gpbNomeDaParcial.Controls.Add(this.btnFecharPedidosSelecionados);
            this.gpbNomeDaParcial.Controls.Add(this.ckbListaDePedidosAbertos);
            this.gpbNomeDaParcial.Controls.Add(this.btnFecharConta);
            this.gpbNomeDaParcial.Controls.Add(this.txtTotalDaConta);
            this.gpbNomeDaParcial.Controls.Add(this.label1);
            this.gpbNomeDaParcial.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gpbNomeDaParcial.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbNomeDaParcial.Location = new System.Drawing.Point(0, 0);
            this.gpbNomeDaParcial.Name = "gpbNomeDaParcial";
            this.gpbNomeDaParcial.Size = new System.Drawing.Size(1000, 527);
            this.gpbNomeDaParcial.TabIndex = 3;
            this.gpbNomeDaParcial.TabStop = false;
            this.gpbNomeDaParcial.Text = "Parcial da conta";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(722, 484);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 20);
            this.label1.TabIndex = 3;
            this.label1.Text = "Total:";
            // 
            // txtTotalDaConta
            // 
            this.txtTotalDaConta.Location = new System.Drawing.Point(791, 481);
            this.txtTotalDaConta.Name = "txtTotalDaConta";
            this.txtTotalDaConta.Size = new System.Drawing.Size(194, 26);
            this.txtTotalDaConta.TabIndex = 4;
            // 
            // btnFecharConta
            // 
            this.btnFecharConta.Location = new System.Drawing.Point(162, 481);
            this.btnFecharConta.Name = "btnFecharConta";
            this.btnFecharConta.Size = new System.Drawing.Size(141, 26);
            this.btnFecharConta.TabIndex = 5;
            this.btnFecharConta.Text = "Fechar conta";
            this.btnFecharConta.UseVisualStyleBackColor = true;
            // 
            // ckbListaDePedidosAbertos
            // 
            this.ckbListaDePedidosAbertos.FormattingEnabled = true;
            this.ckbListaDePedidosAbertos.Location = new System.Drawing.Point(12, 26);
            this.ckbListaDePedidosAbertos.Name = "ckbListaDePedidosAbertos";
            this.ckbListaDePedidosAbertos.Size = new System.Drawing.Size(973, 445);
            this.ckbListaDePedidosAbertos.TabIndex = 6;
            // 
            // btnFecharPedidosSelecionados
            // 
            this.btnFecharPedidosSelecionados.Location = new System.Drawing.Point(12, 481);
            this.btnFecharPedidosSelecionados.Name = "btnFecharPedidosSelecionados";
            this.btnFecharPedidosSelecionados.Size = new System.Drawing.Size(134, 26);
            this.btnFecharPedidosSelecionados.TabIndex = 7;
            this.btnFecharPedidosSelecionados.Text = "Fechar Pedidos Selecionados";
            this.toolTip1.SetToolTip(this.btnFecharPedidosSelecionados, "Clique para fechar pedidos selecionados");
            this.btnFecharPedidosSelecionados.UseVisualStyleBackColor = true;
            // 
            // FrmConta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1000, 527);
            this.Controls.Add(this.gpbNomeDaParcial);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmConta";
            this.Text = "Conta";
            this.gpbNomeDaParcial.ResumeLayout(false);
            this.gpbNomeDaParcial.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpbNomeDaParcial;
        private System.Windows.Forms.Button btnFecharConta;
        private System.Windows.Forms.TextBox txtTotalDaConta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnFecharPedidosSelecionados;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.CheckedListBox ckbListaDePedidosAbertos;

    }
}