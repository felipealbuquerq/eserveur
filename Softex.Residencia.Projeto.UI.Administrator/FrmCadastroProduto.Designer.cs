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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCadastroProduto));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnSalvarPrato = new System.Windows.Forms.Button();
            this.btnAdicionarImagemPrato = new System.Windows.Forms.Button();
            this.picImagemPrato = new System.Windows.Forms.PictureBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDescricaoPrato = new System.Windows.Forms.RichTextBox();
            this.txtPrecoPrato = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtNomePrato = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cboIngredientes = new System.Windows.Forms.ComboBox();
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemPrato)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.button1);
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
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox3.Location = new System.Drawing.Point(0, 0);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(708, 286);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Cadastro de Produtos";
            // 
            // btnSalvarPrato
            // 
            this.btnSalvarPrato.Location = new System.Drawing.Point(449, 251);
            this.btnSalvarPrato.Name = "btnSalvarPrato";
            this.btnSalvarPrato.Size = new System.Drawing.Size(117, 23);
            this.btnSalvarPrato.TabIndex = 10;
            this.btnSalvarPrato.Text = "Salvar";
            this.btnSalvarPrato.UseVisualStyleBackColor = true;
            this.btnSalvarPrato.Click += new System.EventHandler(this.btnSalvarPrato_Click);
            // 
            // btnAdicionarImagemPrato
            // 
            this.btnAdicionarImagemPrato.Location = new System.Drawing.Point(579, 27);
            this.btnAdicionarImagemPrato.Name = "btnAdicionarImagemPrato";
            this.btnAdicionarImagemPrato.Size = new System.Drawing.Size(117, 23);
            this.btnAdicionarImagemPrato.TabIndex = 9;
            this.btnAdicionarImagemPrato.Text = "Upload imagem";
            this.btnAdicionarImagemPrato.UseVisualStyleBackColor = true;
            this.btnAdicionarImagemPrato.Click += new System.EventHandler(this.btnAdicionarImagemPrato_Click);
            // 
            // picImagemPrato
            // 
            this.picImagemPrato.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picImagemPrato.Location = new System.Drawing.Point(449, 24);
            this.picImagemPrato.Name = "picImagemPrato";
            this.picImagemPrato.Size = new System.Drawing.Size(116, 111);
            this.picImagemPrato.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picImagemPrato.TabIndex = 8;
            this.picImagemPrato.TabStop = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 125);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(58, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Descrição:";
            // 
            // txtDescricaoPrato
            // 
            this.txtDescricaoPrato.Location = new System.Drawing.Point(86, 125);
            this.txtDescricaoPrato.Name = "txtDescricaoPrato";
            this.txtDescricaoPrato.Size = new System.Drawing.Size(342, 116);
            this.txtDescricaoPrato.TabIndex = 6;
            this.txtDescricaoPrato.Text = "";
            // 
            // txtPrecoPrato
            // 
            this.txtPrecoPrato.Location = new System.Drawing.Point(86, 93);
            this.txtPrecoPrato.Name = "txtPrecoPrato";
            this.txtPrecoPrato.Size = new System.Drawing.Size(87, 20);
            this.txtPrecoPrato.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 96);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(38, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Preço:";
            // 
            // txtNomePrato
            // 
            this.txtNomePrato.Location = new System.Drawing.Point(86, 24);
            this.txtNomePrato.Name = "txtNomePrato";
            this.txtNomePrato.Size = new System.Drawing.Size(342, 20);
            this.txtNomePrato.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "Nome:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 60);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Ingredientes:";
            // 
            // cboIngredientes
            // 
            this.cboIngredientes.FormattingEnabled = true;
            this.cboIngredientes.Location = new System.Drawing.Point(86, 57);
            this.cboIngredientes.Name = "cboIngredientes";
            this.cboIngredientes.Size = new System.Drawing.Size(342, 21);
            this.cboIngredientes.TabIndex = 0;
            // 
            // openFileDialog
            // 
            this.openFileDialog.FileName = "openFileDialog1";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(579, 251);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(117, 23);
            this.button1.TabIndex = 11;
            this.button1.Text = "Cancelar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FrmCadastroProduto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(708, 286);
            this.Controls.Add(this.groupBox3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmCadastroProduto";
            this.Text = "Cadastro de Produtos";
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picImagemPrato)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboIngredientes;
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
        private System.Windows.Forms.Button button1;
    }
}