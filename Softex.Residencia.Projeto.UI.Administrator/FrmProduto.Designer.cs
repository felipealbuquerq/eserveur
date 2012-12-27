namespace Softex.Residencia.Projeto.UI.Administrator
{
    partial class FrmProduto
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmProduto));
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.btnSalvarModificacaoProduto = new System.Windows.Forms.Button();
            this.btnCancelarModificacaoProduto = new System.Windows.Forms.Button();
            this.btnAdicionarProduto = new System.Windows.Forms.Button();
            this.dlgUploadImagem = new System.Windows.Forms.OpenFileDialog();
            this.lblIngredientes = new System.Windows.Forms.Label();
            this.lblNome = new System.Windows.Forms.Label();
            this.txtNomeProduto = new System.Windows.Forms.TextBox();
            this.lblPreco = new System.Windows.Forms.Label();
            this.txtPrecoProduto = new System.Windows.Forms.TextBox();
            this.txtDescricaoProduto = new System.Windows.Forms.RichTextBox();
            this.lblDescricao = new System.Windows.Forms.Label();
            this.chkListaDeIngredientesProduto = new System.Windows.Forms.CheckedListBox();
            this.lblCategoria = new System.Windows.Forms.Label();
            this.cboCategoria = new System.Windows.Forms.ComboBox();
            this.btnRemoverProduto = new System.Windows.Forms.Button();
            this.cboListaDeProdutos = new System.Windows.Forms.ComboBox();
            this.picImagemProduto = new System.Windows.Forms.PictureBox();
            this.btnAdicionarImagemNovoProduto = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnSalvarModificacaoProduto
            // 
            this.btnSalvarModificacaoProduto.Enabled = false;
            this.btnSalvarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalvarModificacaoProduto.Location = new System.Drawing.Point(431, 419);
            this.btnSalvarModificacaoProduto.Name = "btnSalvarModificacaoProduto";
            this.btnSalvarModificacaoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnSalvarModificacaoProduto.TabIndex = 18;
            this.btnSalvarModificacaoProduto.Text = "Salvar";
            this.toolTip1.SetToolTip(this.btnSalvarModificacaoProduto, "Salvar modificações");
            this.btnSalvarModificacaoProduto.UseVisualStyleBackColor = true;
            this.btnSalvarModificacaoProduto.Click += new System.EventHandler(this.btnSalvarModificacaoProduto_Click);
            // 
            // btnCancelarModificacaoProduto
            // 
            this.btnCancelarModificacaoProduto.Enabled = false;
            this.btnCancelarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelarModificacaoProduto.Location = new System.Drawing.Point(554, 419);
            this.btnCancelarModificacaoProduto.Name = "btnCancelarModificacaoProduto";
            this.btnCancelarModificacaoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnCancelarModificacaoProduto.TabIndex = 19;
            this.btnCancelarModificacaoProduto.Text = "Cancelar";
            this.toolTip1.SetToolTip(this.btnCancelarModificacaoProduto, "Cancelar modificações");
            this.btnCancelarModificacaoProduto.UseVisualStyleBackColor = true;
            this.btnCancelarModificacaoProduto.Click += new System.EventHandler(this.btnCancelarModificacaoProduto_Click);
            // 
            // btnAdicionarProduto
            // 
            this.btnAdicionarProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarProduto.BackgroundImage")));
            this.btnAdicionarProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdicionarProduto.Location = new System.Drawing.Point(593, 19);
            this.btnAdicionarProduto.Name = "btnAdicionarProduto";
            this.btnAdicionarProduto.Size = new System.Drawing.Size(36, 33);
            this.btnAdicionarProduto.TabIndex = 26;
            this.toolTip1.SetToolTip(this.btnAdicionarProduto, "Adicionar novo produto");
            this.btnAdicionarProduto.UseMnemonic = false;
            this.btnAdicionarProduto.UseVisualStyleBackColor = true;
            this.btnAdicionarProduto.Click += new System.EventHandler(this.btnAdicionarProduto_Click);
            // 
            // dlgUploadImagem
            // 
            this.dlgUploadImagem.FileName = "[imagem do produto]";
            this.dlgUploadImagem.Title = "Escolha uma image para o produto";
            // 
            // lblIngredientes
            // 
            this.lblIngredientes.AutoSize = true;
            this.lblIngredientes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIngredientes.Location = new System.Drawing.Point(140, 164);
            this.lblIngredientes.Name = "lblIngredientes";
            this.lblIngredientes.Size = new System.Drawing.Size(102, 20);
            this.lblIngredientes.TabIndex = 1;
            this.lblIngredientes.Text = "Ingredientes:";
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNome.Location = new System.Drawing.Point(140, 68);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(55, 20);
            this.lblNome.TabIndex = 2;
            this.lblNome.Text = "Nome:";
            // 
            // txtNomeProduto
            // 
            this.txtNomeProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNomeProduto.Location = new System.Drawing.Point(329, 62);
            this.txtNomeProduto.Name = "txtNomeProduto";
            this.txtNomeProduto.Size = new System.Drawing.Size(342, 26);
            this.txtNomeProduto.TabIndex = 3;
            this.txtNomeProduto.Click += new System.EventHandler(this.formatarNomeNovoProduto);
            this.txtNomeProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao_Event);
            this.txtNomeProduto.Leave += new System.EventHandler(this.testeNomeDoProdutoModificado);
            // 
            // lblPreco
            // 
            this.lblPreco.AutoSize = true;
            this.lblPreco.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPreco.Location = new System.Drawing.Point(140, 134);
            this.lblPreco.Name = "lblPreco";
            this.lblPreco.Size = new System.Drawing.Size(54, 20);
            this.lblPreco.TabIndex = 4;
            this.lblPreco.Text = "Preço:";
            // 
            // txtPrecoProduto
            // 
            this.txtPrecoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPrecoProduto.Location = new System.Drawing.Point(329, 128);
            this.txtPrecoProduto.Name = "txtPrecoProduto";
            this.txtPrecoProduto.Size = new System.Drawing.Size(87, 26);
            this.txtPrecoProduto.TabIndex = 5;
            this.txtPrecoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao_Event);
            // 
            // txtDescricaoProduto
            // 
            this.txtDescricaoProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtDescricaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDescricaoProduto.Location = new System.Drawing.Point(329, 297);
            this.txtDescricaoProduto.Name = "txtDescricaoProduto";
            this.txtDescricaoProduto.Size = new System.Drawing.Size(342, 116);
            this.txtDescricaoProduto.TabIndex = 6;
            this.txtDescricaoProduto.Text = "";
            this.txtDescricaoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao_Event);
            // 
            // lblDescricao
            // 
            this.lblDescricao.AutoSize = true;
            this.lblDescricao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDescricao.Location = new System.Drawing.Point(140, 300);
            this.lblDescricao.Name = "lblDescricao";
            this.lblDescricao.Size = new System.Drawing.Size(84, 20);
            this.lblDescricao.TabIndex = 7;
            this.lblDescricao.Text = "Descrição:";
            // 
            // chkListaDeIngredientesProduto
            // 
            this.chkListaDeIngredientesProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkListaDeIngredientesProduto.FormattingEnabled = true;
            this.chkListaDeIngredientesProduto.Location = new System.Drawing.Point(329, 161);
            this.chkListaDeIngredientesProduto.Name = "chkListaDeIngredientesProduto";
            this.chkListaDeIngredientesProduto.Size = new System.Drawing.Size(342, 130);
            this.chkListaDeIngredientesProduto.TabIndex = 12;
            this.chkListaDeIngredientesProduto.EnabledChanged += new System.EventHandler(this.AtivarSalvarModificacao);
            // 
            // lblCategoria
            // 
            this.lblCategoria.AutoSize = true;
            this.lblCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCategoria.Location = new System.Drawing.Point(139, 100);
            this.lblCategoria.Name = "lblCategoria";
            this.lblCategoria.Size = new System.Drawing.Size(82, 20);
            this.lblCategoria.TabIndex = 20;
            this.lblCategoria.Text = "Categoria:";
            // 
            // cboCategoria
            // 
            this.cboCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboCategoria.FormattingEnabled = true;
            this.cboCategoria.Location = new System.Drawing.Point(329, 94);
            this.cboCategoria.Name = "cboCategoria";
            this.cboCategoria.Size = new System.Drawing.Size(342, 28);
            this.cboCategoria.TabIndex = 21;
            this.cboCategoria.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao_Event);
            // 
            // btnRemoverProduto
            // 
            this.btnRemoverProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverProduto.BackgroundImage")));
            this.btnRemoverProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverProduto.Location = new System.Drawing.Point(635, 19);
            this.btnRemoverProduto.Name = "btnRemoverProduto";
            this.btnRemoverProduto.Size = new System.Drawing.Size(36, 33);
            this.btnRemoverProduto.TabIndex = 22;
            this.btnRemoverProduto.UseMnemonic = false;
            this.btnRemoverProduto.UseVisualStyleBackColor = true;
            this.btnRemoverProduto.Click += new System.EventHandler(this.btnRemoverProduto_Click);
            // 
            // cboListaDeProdutos
            // 
            this.cboListaDeProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeProdutos.FormattingEnabled = true;
            this.cboListaDeProdutos.Location = new System.Drawing.Point(17, 22);
            this.cboListaDeProdutos.Name = "cboListaDeProdutos";
            this.cboListaDeProdutos.Size = new System.Drawing.Size(570, 28);
            this.cboListaDeProdutos.TabIndex = 23;
            this.cboListaDeProdutos.SelectedIndexChanged += new System.EventHandler(this.cboListaDeProdutos_SelectedIndexChanged);
            // 
            // picImagemProduto
            // 
            this.picImagemProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picImagemProduto.Location = new System.Drawing.Point(17, 65);
            this.picImagemProduto.Name = "picImagemProduto";
            this.picImagemProduto.Size = new System.Drawing.Size(116, 111);
            this.picImagemProduto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picImagemProduto.TabIndex = 24;
            this.picImagemProduto.TabStop = false;
            this.picImagemProduto.LoadCompleted += new System.ComponentModel.AsyncCompletedEventHandler(this.AtivarSalvarModificacao_Event);
            // 
            // btnAdicionarImagemNovoProduto
            // 
            this.btnAdicionarImagemNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdicionarImagemNovoProduto.Location = new System.Drawing.Point(17, 182);
            this.btnAdicionarImagemNovoProduto.Name = "btnAdicionarImagemNovoProduto";
            this.btnAdicionarImagemNovoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnAdicionarImagemNovoProduto.TabIndex = 25;
            this.btnAdicionarImagemNovoProduto.Text = "Upload imagem";
            this.btnAdicionarImagemNovoProduto.UseVisualStyleBackColor = true;
            this.btnAdicionarImagemNovoProduto.Click += new System.EventHandler(this.btnAdicionarImagemNovoProduto_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnAdicionarProduto);
            this.groupBox3.Controls.Add(this.btnAdicionarImagemNovoProduto);
            this.groupBox3.Controls.Add(this.picImagemProduto);
            this.groupBox3.Controls.Add(this.cboListaDeProdutos);
            this.groupBox3.Controls.Add(this.btnRemoverProduto);
            this.groupBox3.Controls.Add(this.cboCategoria);
            this.groupBox3.Controls.Add(this.lblCategoria);
            this.groupBox3.Controls.Add(this.chkListaDeIngredientesProduto);
            this.groupBox3.Controls.Add(this.btnCancelarModificacaoProduto);
            this.groupBox3.Controls.Add(this.btnSalvarModificacaoProduto);
            this.groupBox3.Controls.Add(this.lblDescricao);
            this.groupBox3.Controls.Add(this.txtDescricaoProduto);
            this.groupBox3.Controls.Add(this.txtPrecoProduto);
            this.groupBox3.Controls.Add(this.lblPreco);
            this.groupBox3.Controls.Add(this.txtNomeProduto);
            this.groupBox3.Controls.Add(this.lblNome);
            this.groupBox3.Controls.Add(this.lblIngredientes);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(12, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(689, 465);
            this.groupBox3.TabIndex = 17;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Lista de produtos";
            // 
            // FrmProduto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(714, 490);
            this.Controls.Add(this.groupBox3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmProduto";
            this.Text = "Produtos";
            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.OpenFileDialog dlgUploadImagem;
        private System.Windows.Forms.Label lblIngredientes;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.TextBox txtNomeProduto;
        private System.Windows.Forms.Label lblPreco;
        private System.Windows.Forms.TextBox txtPrecoProduto;
        private System.Windows.Forms.RichTextBox txtDescricaoProduto;
        private System.Windows.Forms.Label lblDescricao;
        private System.Windows.Forms.Button btnSalvarModificacaoProduto;
        private System.Windows.Forms.Button btnCancelarModificacaoProduto;
        private System.Windows.Forms.CheckedListBox chkListaDeIngredientesProduto;
        private System.Windows.Forms.Label lblCategoria;
        private System.Windows.Forms.ComboBox cboCategoria;
        private System.Windows.Forms.Button btnRemoverProduto;
        private System.Windows.Forms.ComboBox cboListaDeProdutos;
        private System.Windows.Forms.PictureBox picImagemProduto;
        private System.Windows.Forms.Button btnAdicionarImagemNovoProduto;
        private System.Windows.Forms.Button btnAdicionarProduto;
        private System.Windows.Forms.GroupBox groupBox3;
    }
}