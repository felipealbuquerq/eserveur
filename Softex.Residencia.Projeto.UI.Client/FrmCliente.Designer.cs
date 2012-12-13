namespace Softex.Residencia.Projeto.UI.Client
{
    partial class FrmCliente
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
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPratos = new System.Windows.Forms.TabPage();
            this.tabBebidas = new System.Windows.Forms.TabPage();
            this.lstBebidas = new System.Windows.Forms.ListView();
            this.tabPromocoes = new System.Windows.Forms.TabPage();
            this.lstPromocoes = new System.Windows.Forms.ListView();
            this.btnRealizarPedido = new System.Windows.Forms.Button();
            this.lblValorTotalPedido = new System.Windows.Forms.Label();
            this.lstProdutos = new System.Windows.Forms.ListView();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabBebidas.SuspendLayout();
            this.tabPromocoes.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPratos);
            this.tabControl1.Controls.Add(this.tabBebidas);
            this.tabControl1.Controls.Add(this.tabPromocoes);
            this.tabControl1.Location = new System.Drawing.Point(12, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(951, 530);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPratos
            // 
            this.tabPratos.Location = new System.Drawing.Point(4, 22);
            this.tabPratos.Name = "tabPratos";
            this.tabPratos.Padding = new System.Windows.Forms.Padding(3);
            this.tabPratos.Size = new System.Drawing.Size(943, 504);
            this.tabPratos.TabIndex = 0;
            this.tabPratos.Text = "Pratos";
            this.tabPratos.UseVisualStyleBackColor = true;
            // 
            // tabBebidas
            // 
            this.tabBebidas.Controls.Add(this.lstBebidas);
            this.tabBebidas.Location = new System.Drawing.Point(4, 22);
            this.tabBebidas.Name = "tabBebidas";
            this.tabBebidas.Padding = new System.Windows.Forms.Padding(3);
            this.tabBebidas.Size = new System.Drawing.Size(943, 504);
            this.tabBebidas.TabIndex = 1;
            this.tabBebidas.Text = "Bebidas";
            this.tabBebidas.UseVisualStyleBackColor = true;
            // 
            // lstBebidas
            // 
            this.lstBebidas.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lstBebidas.Location = new System.Drawing.Point(3, 3);
            this.lstBebidas.Name = "lstBebidas";
            this.lstBebidas.Size = new System.Drawing.Size(937, 498);
            this.lstBebidas.TabIndex = 0;
            this.lstBebidas.UseCompatibleStateImageBehavior = false;
            // 
            // tabPromocoes
            // 
            this.tabPromocoes.Controls.Add(this.lstPromocoes);
            this.tabPromocoes.Location = new System.Drawing.Point(4, 22);
            this.tabPromocoes.Name = "tabPromocoes";
            this.tabPromocoes.Padding = new System.Windows.Forms.Padding(3);
            this.tabPromocoes.Size = new System.Drawing.Size(444, 420);
            this.tabPromocoes.TabIndex = 2;
            this.tabPromocoes.Text = "Promoções";
            this.tabPromocoes.UseVisualStyleBackColor = true;
            // 
            // lstPromocoes
            // 
            this.lstPromocoes.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lstPromocoes.Location = new System.Drawing.Point(3, 3);
            this.lstPromocoes.Name = "lstPromocoes";
            this.lstPromocoes.Size = new System.Drawing.Size(438, 414);
            this.lstPromocoes.TabIndex = 0;
            this.lstPromocoes.UseCompatibleStateImageBehavior = false;
            // 
            // btnRealizarPedido
            // 
            this.btnRealizarPedido.Location = new System.Drawing.Point(996, 519);
            this.btnRealizarPedido.Name = "btnRealizarPedido";
            this.btnRealizarPedido.Size = new System.Drawing.Size(218, 23);
            this.btnRealizarPedido.TabIndex = 2;
            this.btnRealizarPedido.Text = "Realizar Pedido";
            this.btnRealizarPedido.UseVisualStyleBackColor = true;
            // 
            // lblValorTotalPedido
            // 
            this.lblValorTotalPedido.AutoSize = true;
            this.lblValorTotalPedido.Location = new System.Drawing.Point(993, 485);
            this.lblValorTotalPedido.Name = "lblValorTotalPedido";
            this.lblValorTotalPedido.Size = new System.Drawing.Size(85, 13);
            this.lblValorTotalPedido.TabIndex = 3;
            this.lblValorTotalPedido.Text = "Valor do Pedido:";
            // 
            // lstProdutos
            // 
            this.lstProdutos.Location = new System.Drawing.Point(996, 74);
            this.lstProdutos.Margin = new System.Windows.Forms.Padding(30, 3, 3, 3);
            this.lstProdutos.Name = "lstProdutos";
            this.lstProdutos.Size = new System.Drawing.Size(218, 384);
            this.lstProdutos.TabIndex = 1;
            this.lstProdutos.UseCompatibleStateImageBehavior = false;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(1084, 482);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(130, 20);
            this.textBox1.TabIndex = 4;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(1035, 41);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(179, 20);
            this.textBox2.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(993, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(36, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Mesa:";
            // 
            // FrmCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1227, 569);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.lblValorTotalPedido);
            this.Controls.Add(this.btnRealizarPedido);
            this.Controls.Add(this.lstProdutos);
            this.Controls.Add(this.tabControl1);
            this.Name = "FrmCliente";
            this.Text = "E-Serveur";
            this.tabControl1.ResumeLayout(false);
            this.tabBebidas.ResumeLayout(false);
            this.tabPromocoes.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPratos;
        private System.Windows.Forms.TabPage tabBebidas;
        private System.Windows.Forms.TabPage tabPromocoes;
        private System.Windows.Forms.ListView lstBebidas;
        private System.Windows.Forms.ListView lstPromocoes;
        private System.Windows.Forms.Button btnRealizarPedido;
        private System.Windows.Forms.Label lblValorTotalPedido;
        private System.Windows.Forms.ListView lstProdutos;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label1;

    }
}

