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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmProduto));
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtDescricaoProdutoSelecionado = new System.Windows.Forms.TextBox();
            this.picProdutoSelecionado = new System.Windows.Forms.PictureBox();
            this.cboListaDeProdutos = new System.Windows.Forms.ComboBox();
            this.btnRemoverProduto = new System.Windows.Forms.Button();
            this.btnCancelarRegistroNovoProduto = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.cboCategoria = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.chkListaDeIngredientesNovoProduto = new System.Windows.Forms.CheckedListBox();
            this.btnAdicionarImagemNovoProduto = new System.Windows.Forms.Button();
            this.picImagemNovoProduto = new System.Windows.Forms.PictureBox();
            this.btnSalvarNovoProduto = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDescricaoNovoProduto = new System.Windows.Forms.RichTextBox();
            this.txtPrecoNovoProduto = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtNomeNovoProduto = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picProdutoSelecionado)).BeginInit();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemNovoProduto)).BeginInit();
            this.SuspendLayout();
            // 
            // openFileDialog
            // 
            this.openFileDialog.FileName = "openFileDialog1";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtDescricaoProdutoSelecionado);
            this.groupBox1.Controls.Add(this.picProdutoSelecionado);
            this.groupBox1.Controls.Add(this.cboListaDeProdutos);
            this.groupBox1.Controls.Add(this.btnRemoverProduto);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 14);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(708, 176);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Lista de produtos";
            // 
            // txtDescricaoProdutoSelecionado
            // 
            this.txtDescricaoProdutoSelecionado.Enabled = false;
            this.txtDescricaoProdutoSelecionado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDescricaoProdutoSelecionado.Location = new System.Drawing.Point(150, 79);
            this.txtDescricaoProdutoSelecionado.Multiline = true;
            this.txtDescricaoProdutoSelecionado.Name = "txtDescricaoProdutoSelecionado";
            this.txtDescricaoProdutoSelecionado.Size = new System.Drawing.Size(492, 67);
            this.txtDescricaoProdutoSelecionado.TabIndex = 13;
            // 
            // picProdutoSelecionado
            // 
            this.picProdutoSelecionado.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picProdutoSelecionado.Location = new System.Drawing.Point(13, 35);
            this.picProdutoSelecionado.Name = "picProdutoSelecionado";
            this.picProdutoSelecionado.Size = new System.Drawing.Size(116, 111);
            this.picProdutoSelecionado.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picProdutoSelecionado.TabIndex = 12;
            this.picProdutoSelecionado.TabStop = false;
            // 
            // cboListaDeProdutos
            // 
            this.cboListaDeProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeProdutos.FormattingEnabled = true;
            this.cboListaDeProdutos.Location = new System.Drawing.Point(150, 42);
            this.cboListaDeProdutos.Name = "cboListaDeProdutos";
            this.cboListaDeProdutos.Size = new System.Drawing.Size(492, 23);
            this.cboListaDeProdutos.TabIndex = 3;
            this.cboListaDeProdutos.SelectedIndexChanged += new System.EventHandler(this.cboListaDeProdutos_SelectedIndexChanged);
            // 
            // btnRemoverProduto
            // 
            this.btnRemoverProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverProduto.BackgroundImage")));
            this.btnRemoverProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverProduto.Location = new System.Drawing.Point(648, 35);
            this.btnRemoverProduto.Name = "btnRemoverProduto";
            this.btnRemoverProduto.Size = new System.Drawing.Size(36, 33);
            this.btnRemoverProduto.TabIndex = 2;
            this.btnRemoverProduto.UseMnemonic = false;
            this.btnRemoverProduto.UseVisualStyleBackColor = true;
            // 
            // btnCancelarRegistroNovoProduto
            // 
            this.btnCancelarRegistroNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelarRegistroNovoProduto.Location = new System.Drawing.Point(579, 369);
            this.btnCancelarRegistroNovoProduto.Name = "btnCancelarRegistroNovoProduto";
            this.btnCancelarRegistroNovoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnCancelarRegistroNovoProduto.TabIndex = 19;
            this.btnCancelarRegistroNovoProduto.Text = "Cancelar";
            this.btnCancelarRegistroNovoProduto.UseVisualStyleBackColor = true;
            this.btnCancelarRegistroNovoProduto.Click += new System.EventHandler(this.btnCancelarRegistroNovoProduto_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.cboCategoria);
            this.groupBox3.Controls.Add(this.label1);
            this.groupBox3.Controls.Add(this.chkListaDeIngredientesNovoProduto);
            this.groupBox3.Controls.Add(this.btnCancelarRegistroNovoProduto);
            this.groupBox3.Controls.Add(this.btnAdicionarImagemNovoProduto);
            this.groupBox3.Controls.Add(this.picImagemNovoProduto);
            this.groupBox3.Controls.Add(this.btnSalvarNovoProduto);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.txtDescricaoNovoProduto);
            this.groupBox3.Controls.Add(this.txtPrecoNovoProduto);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.txtNomeNovoProduto);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(11, 196);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(708, 404);
            this.groupBox3.TabIndex = 16;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Cadastrar novo produto";
            // 
            // cboCategoria
            // 
            this.cboCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboCategoria.FormattingEnabled = true;
            this.cboCategoria.Location = new System.Drawing.Point(94, 56);
            this.cboCategoria.Name = "cboCategoria";
            this.cboCategoria.Size = new System.Drawing.Size(342, 23);
            this.cboCategoria.TabIndex = 21;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(10, 56);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 15);
            this.label1.TabIndex = 20;
            this.label1.Text = "Categoria:";
            // 
            // chkListaDeIngredientesNovoProduto
            // 
            this.chkListaDeIngredientesNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkListaDeIngredientesNovoProduto.FormattingEnabled = true;
            this.chkListaDeIngredientesNovoProduto.Location = new System.Drawing.Point(94, 95);
            this.chkListaDeIngredientesNovoProduto.Name = "chkListaDeIngredientesNovoProduto";
            this.chkListaDeIngredientesNovoProduto.Size = new System.Drawing.Size(342, 132);
            this.chkListaDeIngredientesNovoProduto.TabIndex = 12;
            // 
            // btnAdicionarImagemNovoProduto
            // 
            this.btnAdicionarImagemNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdicionarImagemNovoProduto.Location = new System.Drawing.Point(579, 27);
            this.btnAdicionarImagemNovoProduto.Name = "btnAdicionarImagemNovoProduto";
            this.btnAdicionarImagemNovoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnAdicionarImagemNovoProduto.TabIndex = 9;
            this.btnAdicionarImagemNovoProduto.Text = "Upload imagem";
            this.btnAdicionarImagemNovoProduto.UseVisualStyleBackColor = true;
            this.btnAdicionarImagemNovoProduto.Click += new System.EventHandler(this.btnAdicionarImagemNovoProduto_Click);
            // 
            // picImagemNovoProduto
            // 
            this.picImagemNovoProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picImagemNovoProduto.Location = new System.Drawing.Point(449, 24);
            this.picImagemNovoProduto.Name = "picImagemNovoProduto";
            this.picImagemNovoProduto.Size = new System.Drawing.Size(116, 111);
            this.picImagemNovoProduto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picImagemNovoProduto.TabIndex = 8;
            this.picImagemNovoProduto.TabStop = false;
            // 
            // btnSalvarNovoProduto
            // 
            this.btnSalvarNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalvarNovoProduto.Location = new System.Drawing.Point(449, 369);
            this.btnSalvarNovoProduto.Name = "btnSalvarNovoProduto";
            this.btnSalvarNovoProduto.Size = new System.Drawing.Size(117, 23);
            this.btnSalvarNovoProduto.TabIndex = 18;
            this.btnSalvarNovoProduto.Text = "Salvar";
            this.btnSalvarNovoProduto.UseVisualStyleBackColor = true;
            this.btnSalvarNovoProduto.Click += new System.EventHandler(this.btnSalvarProduto_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(10, 276);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(65, 15);
            this.label6.TabIndex = 7;
            this.label6.Text = "Descrição:";
            // 
            // txtDescricaoNovoProduto
            // 
            this.txtDescricaoNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDescricaoNovoProduto.Location = new System.Drawing.Point(94, 276);
            this.txtDescricaoNovoProduto.Name = "txtDescricaoNovoProduto";
            this.txtDescricaoNovoProduto.Size = new System.Drawing.Size(342, 116);
            this.txtDescricaoNovoProduto.TabIndex = 6;
            this.txtDescricaoNovoProduto.Text = "";
            // 
            // txtPrecoNovoProduto
            // 
            this.txtPrecoNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPrecoNovoProduto.Location = new System.Drawing.Point(94, 243);
            this.txtPrecoNovoProduto.Name = "txtPrecoNovoProduto";
            this.txtPrecoNovoProduto.Size = new System.Drawing.Size(87, 21);
            this.txtPrecoNovoProduto.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(10, 246);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 15);
            this.label5.TabIndex = 4;
            this.label5.Text = "Preço:";
            // 
            // txtNomeNovoProduto
            // 
            this.txtNomeNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNomeNovoProduto.Location = new System.Drawing.Point(94, 24);
            this.txtNomeNovoProduto.Name = "txtNomeNovoProduto";
            this.txtNomeNovoProduto.Size = new System.Drawing.Size(342, 21);
            this.txtNomeNovoProduto.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(10, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(44, 15);
            this.label4.TabIndex = 2;
            this.label4.Text = "Nome:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(10, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 15);
            this.label3.TabIndex = 1;
            this.label3.Text = "Ingredientes:";
            // 
            // FrmProduto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(730, 612);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmProduto";
            this.Text = "Produtos";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picProdutoSelecionado)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemNovoProduto)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.OpenFileDialog openFileDialog;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtDescricaoProdutoSelecionado;
        private System.Windows.Forms.PictureBox picProdutoSelecionado;
        private System.Windows.Forms.ComboBox cboListaDeProdutos;
        private System.Windows.Forms.Button btnRemoverProduto;
        private System.Windows.Forms.Button btnCancelarRegistroNovoProduto;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.CheckedListBox chkListaDeIngredientesNovoProduto;
        private System.Windows.Forms.Button btnAdicionarImagemNovoProduto;
        private System.Windows.Forms.PictureBox picImagemNovoProduto;
        private System.Windows.Forms.Button btnSalvarNovoProduto;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RichTextBox txtDescricaoNovoProduto;
        private System.Windows.Forms.TextBox txtPrecoNovoProduto;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtNomeNovoProduto;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboCategoria;
        private System.Windows.Forms.Label label1;
    }
}