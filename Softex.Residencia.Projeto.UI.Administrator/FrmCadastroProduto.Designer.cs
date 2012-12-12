namespace Softex.Residencia.Projeto.UI.Administrator
{
    partial class FrmCadastroProduto
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtPrecoIngrediente = new System.Windows.Forms.TextBox();
            this.btnCadastrarIngrediente = new System.Windows.Forms.Button();
            this.chkDisponivelEmEstoque = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtNomeIngrediente = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cboIngredientes = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtNomePrato = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtPrecoPrato = new System.Windows.Forms.TextBox();
            this.txtDescricaoPrato = new System.Windows.Forms.RichTextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.picImagemPrato = new System.Windows.Forms.PictureBox();
            this.btnAdicionarImagemPrato = new System.Windows.Forms.Button();
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.btnSalvarPrato = new System.Windows.Forms.Button();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemPrato)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Location = new System.Drawing.Point(12, 122);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(594, 159);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Cadastro de Bebidas";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtPrecoIngrediente);
            this.groupBox2.Controls.Add(this.btnCadastrarIngrediente);
            this.groupBox2.Controls.Add(this.chkDisponivelEmEstoque);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.txtNomeIngrediente);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Location = new System.Drawing.Point(12, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(594, 104);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Cadastro de Ingredientes";
            // 
            // txtPrecoIngrediente
            // 
            this.txtPrecoIngrediente.Location = new System.Drawing.Point(345, 36);
            this.txtPrecoIngrediente.Name = "txtPrecoIngrediente";
            this.txtPrecoIngrediente.Size = new System.Drawing.Size(99, 20);
            this.txtPrecoIngrediente.TabIndex = 6;
            // 
            // btnCadastrarIngrediente
            // 
            this.btnCadastrarIngrediente.Location = new System.Drawing.Point(454, 75);
            this.btnCadastrarIngrediente.Name = "btnCadastrarIngrediente";
            this.btnCadastrarIngrediente.Size = new System.Drawing.Size(133, 23);
            this.btnCadastrarIngrediente.TabIndex = 5;
            this.btnCadastrarIngrediente.Text = "Cadastrar Ingrediente";
            this.btnCadastrarIngrediente.UseVisualStyleBackColor = true;
            this.btnCadastrarIngrediente.Click += new System.EventHandler(this.btnCadastrarIngrediente_Click);
            // 
            // chkDisponivelEmEstoque
            // 
            this.chkDisponivelEmEstoque.AutoSize = true;
            this.chkDisponivelEmEstoque.Checked = true;
            this.chkDisponivelEmEstoque.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkDisponivelEmEstoque.Location = new System.Drawing.Point(454, 38);
            this.chkDisponivelEmEstoque.Name = "chkDisponivelEmEstoque";
            this.chkDisponivelEmEstoque.Size = new System.Drawing.Size(135, 17);
            this.chkDisponivelEmEstoque.TabIndex = 4;
            this.chkDisponivelEmEstoque.Text = "Disponível em estoque";
            this.chkDisponivelEmEstoque.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(342, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Preço:";
            // 
            // txtNomeIngrediente
            // 
            this.txtNomeIngrediente.Location = new System.Drawing.Point(10, 36);
            this.txtNomeIngrediente.Name = "txtNomeIngrediente";
            this.txtNomeIngrediente.Size = new System.Drawing.Size(325, 20);
            this.txtNomeIngrediente.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "nome:";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnSalvarPrato);
            this.groupBox3.Controls.Add(this.btnAdicionarImagemPrato);
            this.groupBox3.Controls.Add(this.picImagemPrato);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.txtDescricaoPrato);
            this.groupBox3.Controls.Add(this.txtPrecoPrato);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.txtNomePrato);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.cboIngredientes);
            this.groupBox3.Location = new System.Drawing.Point(12, 287);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(594, 198);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Cadastro de Pratos";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(162, 53);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Ingredientes:";
            // 
            // cboIngredientes
            // 
            this.cboIngredientes.FormattingEnabled = true;
            this.cboIngredientes.Location = new System.Drawing.Point(236, 50);
            this.cboIngredientes.Name = "cboIngredientes";
            this.cboIngredientes.Size = new System.Drawing.Size(192, 21);
            this.cboIngredientes.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "nome:";
            // 
            // txtNomePrato
            // 
            this.txtNomePrato.Location = new System.Drawing.Point(54, 24);
            this.txtNomePrato.Name = "txtNomePrato";
            this.txtNomePrato.Size = new System.Drawing.Size(374, 20);
            this.txtNomePrato.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 53);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(38, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Preço:";
            // 
            // txtPrecoPrato
            // 
            this.txtPrecoPrato.Location = new System.Drawing.Point(54, 50);
            this.txtPrecoPrato.Name = "txtPrecoPrato";
            this.txtPrecoPrato.Size = new System.Drawing.Size(100, 20);
            this.txtPrecoPrato.TabIndex = 5;
            // 
            // txtDescricaoPrato
            // 
            this.txtDescricaoPrato.Location = new System.Drawing.Point(13, 95);
            this.txtDescricaoPrato.Name = "txtDescricaoPrato";
            this.txtDescricaoPrato.Size = new System.Drawing.Size(415, 71);
            this.txtDescricaoPrato.TabIndex = 6;
            this.txtDescricaoPrato.Text = "";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 79);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(58, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Descrição:";
            // 
            // picImagemPrato
            // 
            this.picImagemPrato.Location = new System.Drawing.Point(467, 19);
            this.picImagemPrato.Name = "picImagemPrato";
            this.picImagemPrato.Size = new System.Drawing.Size(96, 111);
            this.picImagemPrato.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picImagemPrato.TabIndex = 8;
            this.picImagemPrato.TabStop = false;
            // 
            // btnAdicionarImagemPrato
            // 
            this.btnAdicionarImagemPrato.Location = new System.Drawing.Point(457, 136);
            this.btnAdicionarImagemPrato.Name = "btnAdicionarImagemPrato";
            this.btnAdicionarImagemPrato.Size = new System.Drawing.Size(117, 23);
            this.btnAdicionarImagemPrato.TabIndex = 9;
            this.btnAdicionarImagemPrato.Text = "Adicionar Imagem";
            this.btnAdicionarImagemPrato.UseVisualStyleBackColor = true;
            this.btnAdicionarImagemPrato.Click += new System.EventHandler(this.btnAdicionarImagemPrato_Click);
            // 
            // openFileDialog
            // 
            this.openFileDialog.FileName = "openFileDialog1";
            // 
            // btnSalvarPrato
            // 
            this.btnSalvarPrato.Location = new System.Drawing.Point(457, 175);
            this.btnSalvarPrato.Name = "btnSalvarPrato";
            this.btnSalvarPrato.Size = new System.Drawing.Size(117, 23);
            this.btnSalvarPrato.TabIndex = 10;
            this.btnSalvarPrato.Text = "Salvar";
            this.btnSalvarPrato.UseVisualStyleBackColor = true;
            this.btnSalvarPrato.Click += new System.EventHandler(this.btnSalvarPrato_Click);
            // 
            // FrmCadastroProduto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(618, 497);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Name = "FrmCadastroProduto";
            this.Text = "Cadastro de Produtos";
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemPrato)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnCadastrarIngrediente;
        private System.Windows.Forms.CheckBox chkDisponivelEmEstoque;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNomeIngrediente;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboIngredientes;
        private System.Windows.Forms.TextBox txtPrecoIngrediente;
        private System.Windows.Forms.TextBox txtPrecoPrato;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtNomePrato;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnAdicionarImagemPrato;
        private System.Windows.Forms.PictureBox picImagemPrato;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RichTextBox txtDescricaoPrato;
        private System.Windows.Forms.OpenFileDialog openFileDialog;
        private System.Windows.Forms.Button btnSalvarPrato;
    }
}