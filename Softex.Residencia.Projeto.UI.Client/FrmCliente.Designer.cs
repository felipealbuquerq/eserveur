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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCliente));
            this.tabCategorias = new System.Windows.Forms.TabControl();
            this.txtNumeroDaMesa = new System.Windows.Forms.TextBox();
            this.btnCancelarPedido = new System.Windows.Forms.Button();
            this.btnRealizarPedido = new System.Windows.Forms.Button();
            this.btnAdicionarProduto = new System.Windows.Forms.Button();
            this.btnRemoverProduto = new System.Windows.Forms.Button();
            this.txtTotalDoPedido = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnValorDaConta = new System.Windows.Forms.Button();
            this.btnFecharConta = new System.Windows.Forms.Button();
            this.btnAbrirCalculadora = new System.Windows.Forms.Button();
            this.lstViewProdutos = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // tabCategorias
            // 
            this.tabCategorias.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabCategorias.Location = new System.Drawing.Point(12, 12);
            this.tabCategorias.Name = "tabCategorias";
            this.tabCategorias.SelectedIndex = 0;
            this.tabCategorias.Size = new System.Drawing.Size(841, 519);
            this.tabCategorias.TabIndex = 0;
            // 
            // txtNumeroDaMesa
            // 
            this.txtNumeroDaMesa.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNumeroDaMesa.ForeColor = System.Drawing.Color.ForestGreen;
            this.txtNumeroDaMesa.Location = new System.Drawing.Point(1079, 24);
            this.txtNumeroDaMesa.Multiline = true;
            this.txtNumeroDaMesa.Name = "txtNumeroDaMesa";
            this.txtNumeroDaMesa.Size = new System.Drawing.Size(136, 25);
            this.txtNumeroDaMesa.TabIndex = 23;
            this.txtNumeroDaMesa.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnCancelarPedido
            // 
            this.btnCancelarPedido.Location = new System.Drawing.Point(1075, 546);
            this.btnCancelarPedido.Name = "btnCancelarPedido";
            this.btnCancelarPedido.Size = new System.Drawing.Size(140, 36);
            this.btnCancelarPedido.TabIndex = 22;
            this.btnCancelarPedido.Text = "Cancelar pedido";
            this.btnCancelarPedido.UseVisualStyleBackColor = true;
            // 
            // btnRealizarPedido
            // 
            this.btnRealizarPedido.Location = new System.Drawing.Point(918, 546);
            this.btnRealizarPedido.Name = "btnRealizarPedido";
            this.btnRealizarPedido.Size = new System.Drawing.Size(140, 36);
            this.btnRealizarPedido.TabIndex = 21;
            this.btnRealizarPedido.Text = "Realizar pedido";
            this.btnRealizarPedido.UseVisualStyleBackColor = true;
            this.btnRealizarPedido.Click += new System.EventHandler(this.btnRealizarPedido_Click);
            // 
            // btnAdicionarProduto
            // 
            this.btnAdicionarProduto.Location = new System.Drawing.Point(859, 203);
            this.btnAdicionarProduto.Name = "btnAdicionarProduto";
            this.btnAdicionarProduto.Size = new System.Drawing.Size(51, 45);
            this.btnAdicionarProduto.TabIndex = 20;
            this.btnAdicionarProduto.Text = ">>";
            this.btnAdicionarProduto.UseVisualStyleBackColor = true;
            this.btnAdicionarProduto.Click += new System.EventHandler(this.btnAdicionarProduto_Click);
            // 
            // btnRemoverProduto
            // 
            this.btnRemoverProduto.Location = new System.Drawing.Point(859, 254);
            this.btnRemoverProduto.Name = "btnRemoverProduto";
            this.btnRemoverProduto.Size = new System.Drawing.Size(51, 45);
            this.btnRemoverProduto.TabIndex = 19;
            this.btnRemoverProduto.Text = "<<";
            this.btnRemoverProduto.UseVisualStyleBackColor = true;
            this.btnRemoverProduto.Click += new System.EventHandler(this.btnRemoverProduto_Click);
            // 
            // txtTotalDoPedido
            // 
            this.txtTotalDoPedido.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTotalDoPedido.ForeColor = System.Drawing.Color.ForestGreen;
            this.txtTotalDoPedido.Location = new System.Drawing.Point(1079, 507);
            this.txtTotalDoPedido.Multiline = true;
            this.txtTotalDoPedido.Name = "txtTotalDoPedido";
            this.txtTotalDoPedido.ReadOnly = true;
            this.txtTotalDoPedido.Size = new System.Drawing.Size(136, 25);
            this.txtTotalDoPedido.TabIndex = 18;
            this.txtTotalDoPedido.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(913, 506);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(160, 25);
            this.label2.TabIndex = 17;
            this.label2.Text = "Total do Pedido: ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(913, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 25);
            this.label1.TabIndex = 16;
            this.label1.Text = "Mesa: ";
            // 
            // btnValorDaConta
            // 
            this.btnValorDaConta.Location = new System.Drawing.Point(918, 588);
            this.btnValorDaConta.Name = "btnValorDaConta";
            this.btnValorDaConta.Size = new System.Drawing.Size(140, 36);
            this.btnValorDaConta.TabIndex = 24;
            this.btnValorDaConta.Text = "Valor da conta";
            this.btnValorDaConta.UseVisualStyleBackColor = true;
            this.btnValorDaConta.Click += new System.EventHandler(this.btnValorDaConta_Click);
            // 
            // btnFecharConta
            // 
            this.btnFecharConta.Location = new System.Drawing.Point(1075, 588);
            this.btnFecharConta.Name = "btnFecharConta";
            this.btnFecharConta.Size = new System.Drawing.Size(140, 36);
            this.btnFecharConta.TabIndex = 28;
            this.btnFecharConta.Text = "Fechar conta";
            this.btnFecharConta.UseVisualStyleBackColor = true;
            // 
            // btnAbrirCalculadora
            // 
            this.btnAbrirCalculadora.Location = new System.Drawing.Point(12, 551);
            this.btnAbrirCalculadora.Name = "btnAbrirCalculadora";
            this.btnAbrirCalculadora.Size = new System.Drawing.Size(110, 60);
            this.btnAbrirCalculadora.TabIndex = 31;
            this.btnAbrirCalculadora.Text = "Calculadora";
            this.btnAbrirCalculadora.UseVisualStyleBackColor = true;
            this.btnAbrirCalculadora.Click += new System.EventHandler(this.btnAbrirCalculadora_Click);
            // 
            // lstViewProdutos
            // 
            this.lstViewProdutos.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.lstViewProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstViewProdutos.Location = new System.Drawing.Point(918, 55);
            this.lstViewProdutos.Name = "lstViewProdutos";
            this.lstViewProdutos.Size = new System.Drawing.Size(297, 446);
            this.lstViewProdutos.TabIndex = 32;
            this.lstViewProdutos.UseCompatibleStateImageBehavior = false;
            this.lstViewProdutos.View = System.Windows.Forms.View.Details;
            this.lstViewProdutos.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.pedidoDoubleClick);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Nome";
            this.columnHeader1.Width = 199;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Qtd.";
            this.columnHeader2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.columnHeader2.Width = 35;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Valor";
            this.columnHeader3.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // FrmCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1227, 636);
            this.Controls.Add(this.lstViewProdutos);
            this.Controls.Add(this.btnAbrirCalculadora);
            this.Controls.Add(this.btnFecharConta);
            this.Controls.Add(this.btnValorDaConta);
            this.Controls.Add(this.txtNumeroDaMesa);
            this.Controls.Add(this.btnCancelarPedido);
            this.Controls.Add(this.btnRealizarPedido);
            this.Controls.Add(this.btnAdicionarProduto);
            this.Controls.Add(this.btnRemoverProduto);
            this.Controls.Add(this.txtTotalDoPedido);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tabCategorias);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmCliente";
            this.Text = "E-Serveur";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabCategorias;
        private System.Windows.Forms.TextBox txtNumeroDaMesa;
        private System.Windows.Forms.Button btnCancelarPedido;
        private System.Windows.Forms.Button btnRealizarPedido;
        private System.Windows.Forms.Button btnAdicionarProduto;
        private System.Windows.Forms.Button btnRemoverProduto;
        private System.Windows.Forms.TextBox txtTotalDoPedido;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnValorDaConta;
        private System.Windows.Forms.Button btnFecharConta;
        private System.Windows.Forms.Button btnAbrirCalculadora;
        private System.Windows.Forms.ListView lstViewProdutos;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;

    }
}

