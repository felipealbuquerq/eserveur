[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmPrincipal.cs b/Softex.Residencia.Projeto.UI.Administrator/FrmPrincipal.cs[m
[1mindex 00e5a08..ca0edbd 100644[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmPrincipal.cs[m
[1m+++ b/Softex.Residencia.Projeto.UI.Administrator/FrmPrincipal.cs[m
[36m@@ -47,10 +47,10 @@[m [mnamespace Softex.Residencia.Projeto.UI.Administrator[m
         }[m
 [m
         private void toolStripButton3_Click(object sender, EventArgs e) {[m
[31m-            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmProduto);[m
[32m+[m[32m            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBackupProduto);[m
 [m
             if (frmCliente == null) {[m
[31m-                frmCliente = new FrmProduto() { MdiParent = this }; // test[m
[32m+[m[32m                frmCliente = new FrmBackupProduto() { MdiParent = this }; // test[m
             }[m
 [m
             frmCliente.Focus();[m
[36m@@ -226,9 +226,9 @@[m [mnamespace Softex.Residencia.Projeto.UI.Administrator[m
 [m
         private void produtoTesteToolStripMenuItem_Click(object sender, EventArgs e)[m
         {[m
[31m-            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmTestProduto);[m
[32m+[m[32m            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmProduto);[m
             if (frmCliente == null) {[m
[31m-                frmCliente = new FrmTestProduto() { MdiParent = this };[m
[32m+[m[32m                frmCliente = new FrmProduto() { MdiParent = this };[m
             }[m
             frmCliente.Focus();[m
         }[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.Designer.cs b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.Designer.cs[m
[1mindex 26173c6..41c17bf 100644[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.Designer.cs[m
[1m+++ b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.Designer.cs[m
[36m@@ -28,296 +28,279 @@[m
         /// </summary>[m
         private void InitializeComponent()[m
         {[m
[32m+[m[32m            this.components = new System.ComponentModel.Container();[m
             System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmProduto));[m
[31m-            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();[m
[31m-            this.groupBox1 = new System.Windows.Forms.GroupBox();[m
[31m-            this.txtDescricaoProdutoSelecionado = new System.Windows.Forms.TextBox();[m
[31m-            this.picProdutoSelecionado = new System.Windows.Forms.PictureBox();[m
[31m-            this.cboListaDeProdutos = new System.Windows.Forms.ComboBox();[m
[31m-            this.btnRemoverProduto = new System.Windows.Forms.Button();[m
[31m-            this.btnCancelarRegistroNovoProduto = new System.Windows.Forms.Button();[m
[31m-            this.groupBox3 = new System.Windows.Forms.GroupBox();[m
[32m+[m[32m            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);[m
[32m+[m[32m            this.dlgUploadImagem = new System.Windows.Forms.OpenFileDialog();[m
[32m+[m[32m            this.lblIngredientes = new System.Windows.Forms.Label();[m
[32m+[m[32m            this.lblNome = new System.Windows.Forms.Label();[m
[32m+[m[32m            this.txtNomeProduto = new System.Windows.Forms.TextBox();[m
[32m+[m[32m            this.lblPreco = new System.Windows.Forms.Label();[m
[32m+[m[32m            this.txtPrecoProduto = new System.Windows.Forms.TextBox();[m
[32m+[m[32m            this.txtDescricaoProduto = new System.Windows.Forms.RichTextBox();[m
[32m+[m[32m            this.lblDescricao = new System.Windows.Forms.Label();[m
[32m+[m[32m            this.btnSalvarModificacaoProduto = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.btnCancelarModificacaoProduto = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.chkListaDeIngredientesProduto = new System.Windows.Forms.CheckedListBox();[m
[32m+[m[32m            this.lblCategoria = new System.Windows.Forms.Label();[m
             this.cboCategoria = new System.Windows.Forms.ComboBox();[m
[31m-            this.label1 = new System.Windows.Forms.Label();[m
[31m-            this.chkListaDeIngredientesNovoProduto = new System.Windows.Forms.CheckedListBox();[m
[32m+[m[32m            this.btnRemoverProduto = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.cboListaDeProdutos = new System.Windows.Forms.ComboBox();[m
[32m+[m[32m            this.picImagemProduto = new System.Windows.Forms.PictureBox();[m
             this.btnAdicionarImagemNovoProduto = new System.Windows.Forms.Button();[m
[31m-            this.picImagemNovoProduto = new System.Windows.Forms.PictureBox();[m
[31m-            this.btnSalvarNovoProduto = new System.Windows.Forms.Button();[m
[31m-            this.label6 = new System.Windows.Forms.Label();[m
[31m-            this.txtDescricaoNovoProduto = new System.Windows.Forms.RichTextBox();[m
[31m-            this.txtPrecoNovoProduto = new System.Windows.Forms.TextBox();[m
[31m-            this.label5 = new System.Windows.Forms.Label();[m
[31m-            this.txtNomeNovoProduto = new System.Windows.Forms.TextBox();[m
[31m-            this.label4 = new System.Windows.Forms.Label();[m
[31m-            this.label3 = new System.Windows.Forms.Label();[m
[31m-            this.groupBox1.SuspendLayout();[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picProdutoSelecionado)).BeginInit();[m
[32m+[m[32m            this.btnAdicionarProduto = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.groupBox3 = new System.Windows.Forms.GroupBox();[m
[32m+[m[32m            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).BeginInit();[m
             this.groupBox3.SuspendLayout();[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picImagemNovoProduto)).BeginInit();[m
             this.SuspendLayout();[m
             // [m
[31m-            // openFileDialog[m
[31m-            // [m
[31m-            this.openFileDialog.FileName = "openFileDialog1";[m
[31m-            // [m
[31m-            // groupBox1[m
[32m+[m[32m            // dlgUploadImagem[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.dlgUploadImagem.FileName = "[imagem do produto]";[m
[32m+[m[32m            this.dlgUploadImagem.Title = "Escolha uma image para o produto";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // lblIngredientes[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.lblIngredientes.AutoSize = true;[m
[32m+[m[32m            this.lblIngredientes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.lblIngredientes.Location = new System.Drawing.Point(140, 164);[m
[32m+[m[32m            this.lblIngredientes.Name = "lblIngredientes";[m
[32m+[m[32m            this.lblIngredientes.Size = new System.Drawing.Size(102, 20);[m
[32m+[m[32m            this.lblIngredientes.TabIndex = 1;[m
[32m+[m[32m            this.lblIngredientes.Text = "Ingredientes:";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // lblNome[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.lblNome.AutoSize = true;[m
[32m+[m[32m            this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.lblNome.Location = new System.Drawing.Point(140, 68);[m
[32m+[m[32m            this.lblNome.Name = "lblNome";[m
[32m+[m[32m            this.lblNome.Size = new System.Drawing.Size(55, 20);[m
[32m+[m[32m            this.lblNome.TabIndex = 2;[m
[32m+[m[32m            this.lblNome.Text = "Nome:";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // txtNomeProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.txtNomeProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.txtNomeProduto.Location = new System.Drawing.Point(329, 62);[m
[32m+[m[32m            this.txtNomeProduto.Name = "txtNomeProduto";[m
[32m+[m[32m            this.txtNomeProduto.Size = new System.Drawing.Size(342, 26);[m
[32m+[m[32m            this.txtNomeProduto.TabIndex = 3;[m
[32m+[m[32m            this.txtNomeProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // lblPreco[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.lblPreco.AutoSize = true;[m
[32m+[m[32m            this.lblPreco.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.lblPreco.Location = new System.Drawing.Point(140, 134);[m
[32m+[m[32m            this.lblPreco.Name = "lblPreco";[m
[32m+[m[32m            this.lblPreco.Size = new System.Drawing.Size(54, 20);[m
[32m+[m[32m            this.lblPreco.TabIndex = 4;[m
[32m+[m[32m            this.lblPreco.Text = "Preço:";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // txtPrecoProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.txtPrecoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.txtPrecoProduto.Location = new System.Drawing.Point(329, 128);[m
[32m+[m[32m            this.txtPrecoProduto.Name = "txtPrecoProduto";[m
[32m+[m[32m            this.txtPrecoProduto.Size = new System.Drawing.Size(87, 26);[m
[32m+[m[32m            this.txtPrecoProduto.TabIndex = 5;[m
[32m+[m[32m            this.txtPrecoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // txtDescricaoProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.txtDescricaoProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[32m+[m[32m            this.txtDescricaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.txtDescricaoProduto.Location = new System.Drawing.Point(329, 297);[m
[32m+[m[32m            this.txtDescricaoProduto.Name = "txtDescricaoProduto";[m
[32m+[m[32m            this.txtDescricaoProduto.Size = new System.Drawing.Size(342, 116);[m
[32m+[m[32m            this.txtDescricaoProduto.TabIndex = 6;[m
[32m+[m[32m            this.txtDescricaoProduto.Text = "";[m
[32m+[m[32m            this.txtDescricaoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // lblDescricao[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.lblDescricao.AutoSize = true;[m
[32m+[m[32m            this.lblDescricao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.lblDescricao.Location = new System.Drawing.Point(140, 300);[m
[32m+[m[32m            this.lblDescricao.Name = "lblDescricao";[m
[32m+[m[32m            this.lblDescricao.Size = new System.Drawing.Size(84, 20);[m
[32m+[m[32m            this.lblDescricao.TabIndex = 7;[m
[32m+[m[32m            this.lblDescricao.Text = "Descrição:";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // btnSalvarModificacaoProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Enabled = false;[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Location = new System.Drawing.Point(431, 419);[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Name = "btnSalvarModificacaoProduto";[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Size = new System.Drawing.Size(117, 23);[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.TabIndex = 18;[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Text = "Salvar";[m
[32m+[m[32m            this.toolTip1.SetToolTip(this.btnSalvarModificacaoProduto, "Salvar modificações");[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.btnSalvarModificacaoProduto.Click += new System.EventHandler(this.btnSalvarModificacaoProduto_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // btnCancelarModificacaoProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Enabled = false;[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Location = new System.Drawing.Point(554, 419);[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Name = "btnCancelarModificacaoProduto";[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Size = new System.Drawing.Size(117, 23);[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.TabIndex = 19;[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Text = "Cancelar";[m
[32m+[m[32m            this.toolTip1.SetToolTip(this.btnCancelarModificacaoProduto, "Cancelar modificações");[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.btnCancelarModificacaoProduto.Click += new System.EventHandler(this.btnCancelarModificacaoProduto_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // chkListaDeIngredientesProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.chkListaDeIngredientesProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.FormattingEnabled = true;[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.Location = new System.Drawing.Point(329, 161);[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.Name = "chkListaDeIngredientesProduto";[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.Size = new System.Drawing.Size(342, 130);[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.TabIndex = 12;[m
[32m+[m[32m            this.chkListaDeIngredientesProduto.EnabledChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // lblCategoria[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.lblCategoria.AutoSize = true;[m
[32m+[m[32m            this.lblCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.lblCategoria.Location = new System.Drawing.Point(139, 100);[m
[32m+[m[32m            this.lblCategoria.Name = "lblCategoria";[m
[32m+[m[32m            this.lblCategoria.Size = new System.Drawing.Size(82, 20);[m
[32m+[m[32m            this.lblCategoria.TabIndex = 20;[m
[32m+[m[32m            this.lblCategoria.Text = "Categoria:";[m
             // [m
[31m-            this.groupBox1.Controls.Add(this.txtDescricaoProdutoSelecionado);[m
[31m-            this.groupBox1.Controls.Add(this.picProdutoSelecionado);[m
[31m-            this.groupBox1.Controls.Add(this.cboListaDeProdutos);[m
[31m-            this.groupBox1.Controls.Add(this.btnRemoverProduto);[m
[31m-            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.groupBox1.Location = new System.Drawing.Point(11, 14);[m
[31m-            this.groupBox1.Name = "groupBox1";[m
[31m-            this.groupBox1.Size = new System.Drawing.Size(708, 176);[m
[31m-            this.groupBox1.TabIndex = 17;[m
[31m-            this.groupBox1.TabStop = false;[m
[31m-            this.groupBox1.Text = "Lista de produtos";[m
[31m-            // [m
[31m-            // txtDescricaoProdutoSelecionado[m
[31m-            // [m
[31m-            this.txtDescricaoProdutoSelecionado.Enabled = false;[m
[31m-            this.txtDescricaoProdutoSelecionado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtDescricaoProdutoSelecionado.Location = new System.Drawing.Point(150, 79);[m
[31m-            this.txtDescricaoProdutoSelecionado.Multiline = true;[m
[31m-            this.txtDescricaoProdutoSelecionado.Name = "txtDescricaoProdutoSelecionado";[m
[31m-            this.txtDescricaoProdutoSelecionado.Size = new System.Drawing.Size(492, 67);[m
[31m-            this.txtDescricaoProdutoSelecionado.TabIndex = 13;[m
[31m-            // [m
[31m-            // picProdutoSelecionado[m
[31m-            // [m
[31m-            this.picProdutoSelecionado.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[31m-            this.picProdutoSelecionado.Location = new System.Drawing.Point(13, 35);[m
[31m-            this.picProdutoSelecionado.Name = "picProdutoSelecionado";[m
[31m-            this.picProdutoSelecionado.Size = new System.Drawing.Size(116, 111);[m
[31m-            this.picProdutoSelecionado.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;[m
[31m-            this.picProdutoSelecionado.TabIndex = 12;[m
[31m-            this.picProdutoSelecionado.TabStop = false;[m
[31m-            // [m
[31m-            // cboListaDeProdutos[m
[32m+[m[32m            // cboCategoria[m
             // [m
[31m-            this.cboListaDeProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.cboListaDeProdutos.FormattingEnabled = true;[m
[31m-            this.cboListaDeProdutos.Location = new System.Drawing.Point(150, 42);[m
[31m-            this.cboListaDeProdutos.Name = "cboListaDeProdutos";[m
[31m-            this.cboListaDeProdutos.Size = new System.Drawing.Size(492, 23);[m
[31m-            this.cboListaDeProdutos.TabIndex = 3;[m
[31m-            this.cboListaDeProdutos.SelectedIndexChanged += new System.EventHandler(this.cboListaDeProdutos_SelectedIndexChanged);[m
[32m+[m[32m            this.cboCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.cboCategoria.FormattingEnabled = true;[m
[32m+[m[32m            this.cboCategoria.Location = new System.Drawing.Point(329, 94);[m
[32m+[m[32m            this.cboCategoria.Name = "cboCategoria";[m
[32m+[m[32m            this.cboCategoria.Size = new System.Drawing.Size(342, 28);[m
[32m+[m[32m            this.cboCategoria.TabIndex = 21;[m
[32m+[m[32m            this.cboCategoria.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
             // [m
             // btnRemoverProduto[m
             // [m
             this.btnRemoverProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverProduto.BackgroundImage")));[m
             this.btnRemoverProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;[m
[31m-            this.btnRemoverProduto.Location = new System.Drawing.Point(648, 35);[m
[32m+[m[32m            this.btnRemoverProduto.Location = new System.Drawing.Point(635, 19);[m
             this.btnRemoverProduto.Name = "btnRemoverProduto";[m
             this.btnRemoverProduto.Size = new System.Drawing.Size(36, 33);[m
[31m-            this.btnRemoverProduto.TabIndex = 2;[m
[32m+[m[32m            this.btnRemoverProduto.TabIndex = 22;[m
             this.btnRemoverProduto.UseMnemonic = false;[m
             this.btnRemoverProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnRemoverProduto.Click += new System.EventHandler(this.btnRemoverProduto_Click);[m
[31m-            // [m
[31m-            // btnCancelarRegistroNovoProduto[m
             // [m
[31m-            this.btnCancelarRegistroNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnCancelarRegistroNovoProduto.Location = new System.Drawing.Point(579, 369);[m
[31m-            this.btnCancelarRegistroNovoProduto.Name = "btnCancelarRegistroNovoProduto";[m
[31m-            this.btnCancelarRegistroNovoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnCancelarRegistroNovoProduto.TabIndex = 19;[m
[31m-            this.btnCancelarRegistroNovoProduto.Text = "Cancelar";[m
[31m-            this.btnCancelarRegistroNovoProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnCancelarRegistroNovoProduto.Click += new System.EventHandler(this.btnCancelarRegistroNovoProduto_Click);[m
[31m-            // [m
[31m-            // groupBox3[m
[31m-            // [m
[31m-            this.groupBox3.Controls.Add(this.cboCategoria);[m
[31m-            this.groupBox3.Controls.Add(this.label1);[m
[31m-            this.groupBox3.Controls.Add(this.chkListaDeIngredientesNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnCancelarRegistroNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnAdicionarImagemNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.picImagemNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnSalvarNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.label6);[m
[31m-            this.groupBox3.Controls.Add(this.txtDescricaoNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.txtPrecoNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.label5);[m
[31m-            this.groupBox3.Controls.Add(this.txtNomeNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.label4);[m
[31m-            this.groupBox3.Controls.Add(this.label3);[m
[31m-            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.groupBox3.Location = new System.Drawing.Point(11, 196);[m
[31m-            this.groupBox3.Name = "groupBox3";[m
[31m-            this.groupBox3.Size = new System.Drawing.Size(708, 404);[m
[31m-            this.groupBox3.TabIndex = 16;[m
[31m-            this.groupBox3.TabStop = false;[m
[31m-            this.groupBox3.Text = "Cadastrar novo produto";[m
[31m-            // [m
[31m-            // cboCategoria[m
[31m-            // [m
[31m-            this.cboCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.cboCategoria.FormattingEnabled = true;[m
[31m-            this.cboCategoria.Location = new System.Drawing.Point(94, 56);[m
[31m-            this.cboCategoria.Name = "cboCategoria";[m
[31m-            this.cboCategoria.Size = new System.Drawing.Size(342, 23);[m
[31m-            this.cboCategoria.TabIndex = 21;[m
[31m-            // [m
[31m-            // label1[m
[32m+[m[32m            // cboListaDeProdutos[m
             // [m
[31m-            this.label1.AutoSize = true;[m
[31m-            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.label1.Location = new System.Drawing.Point(10, 56);[m
[31m-            this.label1.Name = "label1";[m
[31m-            this.label1.Size = new System.Drawing.Size(63, 15);[m
[31m-            this.label1.TabIndex = 20;[m
[31m-            this.label1.Text = "Categoria:";[m
[32m+[m[32m            this.cboListaDeProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.cboListaDeProdutos.FormattingEnabled = true;[m
[32m+[m[32m            this.cboListaDeProdutos.Location = new System.Drawing.Point(17, 22);[m
[32m+[m[32m            this.cboListaDeProdutos.Name = "cboListaDeProdutos";[m
[32m+[m[32m            this.cboListaDeProdutos.Size = new System.Drawing.Size(570, 28);[m
[32m+[m[32m            this.cboListaDeProdutos.TabIndex = 23;[m
[32m+[m[32m            this.cboListaDeProdutos.SelectedIndexChanged += new System.EventHandler(this.cboListaDeProdutos_SelectedIndexChanged);[m
             // [m
[31m-            // chkListaDeIngredientesNovoProduto[m
[32m+[m[32m            // picImagemProduto[m
             // [m
[31m-            this.chkListaDeIngredientesNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.chkListaDeIngredientesNovoProduto.FormattingEnabled = true;[m
[31m-            this.chkListaDeIngredientesNovoProduto.Location = new System.Drawing.Point(94, 95);[m
[31m-            this.chkListaDeIngredientesNovoProduto.Name = "chkListaDeIngredientesNovoProduto";[m
[31m-            this.chkListaDeIngredientesNovoProduto.Size = new System.Drawing.Size(342, 132);[m
[31m-            this.chkListaDeIngredientesNovoProduto.TabIndex = 12;[m
[32m+[m[32m            this.picImagemProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[32m+[m[32m            this.picImagemProduto.Location = new System.Drawing.Point(17, 65);[m
[32m+[m[32m            this.picImagemProduto.Name = "picImagemProduto";[m
[32m+[m[32m            this.picImagemProduto.Size = new System.Drawing.Size(116, 111);[m
[32m+[m[32m            this.picImagemProduto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;[m
[32m+[m[32m            this.picImagemProduto.TabIndex = 24;[m
[32m+[m[32m            this.picImagemProduto.TabStop = false;[m
             // [m
             // btnAdicionarImagemNovoProduto[m
             // [m
             this.btnAdicionarImagemNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnAdicionarImagemNovoProduto.Location = new System.Drawing.Point(579, 27);[m
[32m+[m[32m            this.btnAdicionarImagemNovoProduto.Location = new System.Drawing.Point(17, 182);[m
             this.btnAdicionarImagemNovoProduto.Name = "btnAdicionarImagemNovoProduto";[m
             this.btnAdicionarImagemNovoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnAdicionarImagemNovoProduto.TabIndex = 9;[m
[32m+[m[32m            this.btnAdicionarImagemNovoProduto.TabIndex = 25;[m
             this.btnAdicionarImagemNovoProduto.Text = "Upload imagem";[m
             this.btnAdicionarImagemNovoProduto.UseVisualStyleBackColor = true;[m
             this.btnAdicionarImagemNovoProduto.Click += new System.EventHandler(this.btnAdicionarImagemNovoProduto_Click);[m
             // [m
[31m-            // picImagemNovoProduto[m
[31m-            // [m
[31m-            this.picImagemNovoProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[31m-            this.picImagemNovoProduto.Location = new System.Drawing.Point(449, 24);[m
[31m-            this.picImagemNovoProduto.Name = "picImagemNovoProduto";[m
[31m-            this.picImagemNovoProduto.Size = new System.Drawing.Size(116, 111);[m
[31m-            this.picImagemNovoProduto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;[m
[31m-            this.picImagemNovoProduto.TabIndex = 8;[m
[31m-            this.picImagemNovoProduto.TabStop = false;[m
[31m-            // [m
[31m-            // btnSalvarNovoProduto[m
[31m-            // [m
[31m-            this.btnSalvarNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnSalvarNovoProduto.Location = new System.Drawing.Point(449, 369);[m
[31m-            this.btnSalvarNovoProduto.Name = "btnSalvarNovoProduto";[m
[31m-            this.btnSalvarNovoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnSalvarNovoProduto.TabIndex = 18;[m
[31m-            this.btnSalvarNovoProduto.Text = "Salvar";[m
[31m-            this.btnSalvarNovoProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnSalvarNovoProduto.Click += new System.EventHandler(this.btnSalvarProduto_Click);[m
[31m-            // [m
[31m-            // label6[m
[31m-            // [m
[31m-            this.label6.AutoSize = true;[m
[31m-            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.label6.Location = new System.Drawing.Point(10, 276);[m
[31m-            this.label6.Name = "label6";[m
[31m-            this.label6.Size = new System.Drawing.Size(65, 15);[m
[31m-            this.label6.TabIndex = 7;[m
[31m-            this.label6.Text = "Descrição:";[m
[31m-            // [m
[31m-            // txtDescricaoNovoProduto[m
[31m-            // [m
[31m-            this.txtDescricaoNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtDescricaoNovoProduto.Location = new System.Drawing.Point(94, 276);[m
[31m-            this.txtDescricaoNovoProduto.Name = "txtDescricaoNovoProduto";[m
[31m-            this.txtDescricaoNovoProduto.Size = new System.Drawing.Size(342, 116);[m
[31m-            this.txtDescricaoNovoProduto.TabIndex = 6;[m
[31m-            this.txtDescricaoNovoProduto.Text = "";[m
[31m-            // [m
[31m-            // txtPrecoNovoProduto[m
[31m-            // [m
[31m-            this.txtPrecoNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtPrecoNovoProduto.Location = new System.Drawing.Point(94, 243);[m
[31m-            this.txtPrecoNovoProduto.Name = "txtPrecoNovoProduto";[m
[31m-            this.txtPrecoNovoProduto.Size = new System.Drawing.Size(87, 21);[m
[31m-            this.txtPrecoNovoProduto.TabIndex = 5;[m
[31m-            // [m
[31m-            // label5[m
[31m-            // [m
[31m-            this.label5.AutoSize = true;[m
[31m-            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.label5.Location = new System.Drawing.Point(10, 246);[m
[31m-            this.label5.Name = "label5";[m
[31m-            this.label5.Size = new System.Drawing.Size(42, 15);[m
[31m-            this.label5.TabIndex = 4;[m
[31m-            this.label5.Text = "Preço:";[m
[31m-            // [m
[31m-            // txtNomeNovoProduto[m
[31m-            // [m
[31m-            this.txtNomeNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtNomeNovoProduto.Location = new System.Drawing.Point(94, 24);[m
[31m-            this.txtNomeNovoProduto.Name = "txtNomeNovoProduto";[m
[31m-            this.txtNomeNovoProduto.Size = new System.Drawing.Size(342, 21);[m
[31m-            this.txtNomeNovoProduto.TabIndex = 3;[m
[31m-            // [m
[31m-            // label4[m
[31m-            // [m
[31m-            this.label4.AutoSize = true;[m
[31m-            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.label4.Location = new System.Drawing.Point(10, 27);[m
[31m-            this.label4.Name = "label4";[m
[31m-            this.label4.Size = new System.Drawing.Size(44, 15);[m
[31m-            this.label4.TabIndex = 2;[m
[31m-            this.label4.Text = "Nome:";[m
[31m-            // [m
[31m-            // label3[m
[31m-            // [m
[31m-            this.label3.AutoSize = true;[m
[31m-            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.label3.Location = new System.Drawing.Point(10, 95);[m
[31m-            this.label3.Name = "label3";[m
[31m-            this.label3.Size = new System.Drawing.Size(78, 15);[m
[31m-            this.label3.TabIndex = 1;[m
[31m-            this.label3.Text = "Ingredientes:";[m
[31m-            // [m
[31m-            // FrmProduto[m
[32m+[m[32m            // btnAdicionarProduto[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.btnAdicionarProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarProduto.BackgroundImage")));[m
[32m+[m[32m            this.btnAdicionarProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;[m
[32m+[m[32m            this.btnAdicionarProduto.Location = new System.Drawing.Point(593, 19);[m
[32m+[m[32m            this.btnAdicionarProduto.Name = "btnAdicionarProduto";[m
[32m+[m[32m            this.btnAdicionarProduto.Size = new System.Drawing.Size(36, 33);[m
[32m+[m[32m            this.btnAdicionarProduto.TabIndex = 26;[m
[32m+[m[32m            this.btnAdicionarProduto.UseMnemonic = false;[m
[32m+[m[32m            this.btnAdicionarProduto.UseVisualStyleBackColor = true;[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // groupBox3[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.groupBox3.Controls.Add(this.btnAdicionarProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.btnAdicionarImagemNovoProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.picImagemProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.cboListaDeProdutos);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.btnRemoverProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.cboCategoria);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.lblCategoria);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.chkListaDeIngredientesProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.btnCancelarModificacaoProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.btnSalvarModificacaoProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.lblDescricao);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.txtDescricaoProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.txtPrecoProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.lblPreco);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.txtNomeProduto);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.lblNome);[m
[32m+[m[32m            this.groupBox3.Controls.Add(this.lblIngredientes);[m
[32m+[m[32m            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[32m+[m[32m            this.groupBox3.Location = new System.Drawing.Point(12, 12);[m
[32m+[m[32m            this.groupBox3.Name = "groupBox3";[m
[32m+[m[32m            this.groupBox3.Size = new System.Drawing.Size(689, 465);[m
[32m+[m[32m            this.groupBox3.TabIndex = 17;[m
[32m+[m[32m            this.groupBox3.TabStop = false;[m
[32m+[m[32m            this.groupBox3.Text = "Lista de produtos";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // FrmTestProduto[m
             // [m
             this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);[m
             this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;[m
[31m-            this.ClientSize = new System.Drawing.Size(730, 612);[m
[31m-            this.Controls.Add(this.groupBox1);[m
[32m+[m[32m            this.ClientSize = new System.Drawing.Size(714, 490);[m
             this.Controls.Add(this.groupBox3);[m
             this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));[m
[31m-            this.Name = "FrmProduto";[m
[32m+[m[32m            this.Name = "FrmTestProduto";[m
             this.Text = "Produtos";[m
[31m-            this.groupBox1.ResumeLayout(false);[m
[31m-            this.groupBox1.PerformLayout();[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picProdutoSelecionado)).EndInit();[m
[32m+[m[32m            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).EndInit();[m
             this.groupBox3.ResumeLayout(false);[m
             this.groupBox3.PerformLayout();[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picImagemNovoProduto)).EndInit();[m
             this.ResumeLayout(false);[m
 [m
         }[m
 [m
         #endregion[m
 [m
[31m-        private System.Windows.Forms.OpenFileDialog openFileDialog;[m
[31m-        private System.Windows.Forms.GroupBox groupBox1;[m
[31m-        private System.Windows.Forms.TextBox txtDescricaoProdutoSelecionado;[m
[31m-        private System.Windows.Forms.PictureBox picProdutoSelecionado;[m
[31m-        private System.Windows.Forms.ComboBox cboListaDeProdutos;[m
[32m+[m[32m        private System.Windows.Forms.ToolTip toolTip1;[m
[32m+[m[32m        private System.Windows.Forms.OpenFileDialog dlgUploadImagem;[m
[32m+[m[32m        private System.Windows.Forms.Label lblIngredientes;[m
[32m+[m[32m        private System.Windows.Forms.Label lblNome;[m
[32m+[m[32m        private System.Windows.Forms.TextBox txtNomeProduto;[m
[32m+[m[32m        private System.Windows.Forms.Label lblPreco;[m
[32m+[m[32m        private System.Windows.Forms.TextBox txtPrecoProduto;[m
[32m+[m[32m        private System.Windows.Forms.RichTextBox txtDescricaoProduto;[m
[32m+[m[32m        private System.Windows.Forms.Label lblDescricao;[m
[32m+[m[32m        private System.Windows.Forms.Button btnSalvarModificacaoProduto;[m
[32m+[m[32m        private System.Windows.Forms.Button btnCancelarModificacaoProduto;[m
[32m+[m[32m        private System.Windows.Forms.CheckedListBox chkListaDeIngredientesProduto;[m
[32m+[m[32m        private System.Windows.Forms.Label lblCategoria;[m
[32m+[m[32m        private System.Windows.Forms.ComboBox cboCategoria;[m
         private System.Windows.Forms.Button btnRemoverProduto;[m
[31m-        private System.Windows.Forms.Button btnCancelarRegistroNovoProduto;[m
[31m-        private System.Windows.Forms.GroupBox groupBox3;[m
[31m-        private System.Windows.Forms.CheckedListBox chkListaDeIngredientesNovoProduto;[m
[32m+[m[32m        private System.Windows.Forms.ComboBox cboListaDeProdutos;[m
[32m+[m[32m        private System.Windows.Forms.PictureBox picImagemProduto;[m
         private System.Windows.Forms.Button btnAdicionarImagemNovoProduto;[m
[31m-        private System.Windows.Forms.PictureBox picImagemNovoProduto;[m
[31m-        private System.Windows.Forms.Button btnSalvarNovoProduto;[m
[31m-        private System.Windows.Forms.Label label6;[m
[31m-        private System.Windows.Forms.RichTextBox txtDescricaoNovoProduto;[m
[31m-        private System.Windows.Forms.TextBox txtPrecoNovoProduto;[m
[31m-        private System.Windows.Forms.Label label5;[m
[31m-        private System.Windows.Forms.TextBox txtNomeNovoProduto;[m
[31m-        private System.Windows.Forms.Label label4;[m
[31m-        private System.Windows.Forms.Label label3;[m
[31m-        private System.Windows.Forms.ComboBox cboCategoria;[m
[31m-        private System.Windows.Forms.Label label1;[m
[32m+[m[32m        private System.Windows.Forms.Button btnAdicionarProduto;[m
[32m+[m[32m        private System.Windows.Forms.GroupBox groupBox3;[m
     }[m
 }[m
\ No newline at end of file[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.cs b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.cs[m
[1mindex f1a73aa..240ba9a 100644[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.cs[m
[1m+++ b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.cs[m
[36m@@ -4,11 +4,13 @@[m [musing System.Drawing.Imaging;[m
 using System.IO;[m
 using System.Linq;[m
 using System.Windows.Forms;[m
[32m+[m[32musing System.Collections;[m
[32m+[m[32musing System.Collections.Generic;[m
[32m+[m
 using Softex.Residencia.EServeur.Business;[m
 using Softex.Residencia.EServeur.Business.Exceptions;[m
 using Softex.Residencia.EServeur.Model;[m
[31m-using System.Collections;[m
[31m-using System.Collections.Generic;[m
[32m+[m
 [m
 namespace Softex.Residencia.Projeto.UI.Administrator[m
 {[m
[36m@@ -26,15 +28,23 @@[m [mnamespace Softex.Residencia.Projeto.UI.Administrator[m
             this.produtoBusiness = new ProdutoBusiness();[m
             this.categoriaBusiness = new CategoriaBusiness();[m
 [m
[31m-            this.PreencherCamposFormulario();[m
[32m+[m[32m            // Modificações de formato das strings[m
[32m+[m[32m            this.lblPreco.Text = String.Format("Preço ({0:C}): ", 0);[m
[32m+[m
[32m+[m[32m            AtualizarCamposFormulario();[m
[32m+[m[32m            DesativarSalvarModificacao();[m
         }[m
 [m
[31m-        private void PreencherCamposFormulario()[m
[32m+[m[32m        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[32m+[m[32m        // [Métodos][m
[32m+[m[32m        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[32m+[m
[32m+[m[32m        private void AtualizarCamposFormulario()[m
         {[m
             try[m
             {[m
[32m+[m[32m                // 1. Limpar e atualizar lista de produtos do BD[m
                 this.cboListaDeProdutos.Items.Clear();[m
[31m-[m
                 foreach (Produto produto in this.produtoBusiness.RecuperarProdutos())[m
                 {[m
                     this.cboListaDeProdutos.Items.Add(produto);[m
[36m@@ -48,12 +58,16 @@[m [mnamespace Softex.Residencia.Projeto.UI.Administrator[m
                     this.cboListaDeProdutos.SelectedIndex = 0;[m
                 }[m
 [m
[32m+[m[32m                // 2. Atualizar lista de categorias[m
                 this.cboCategoria.DisplayMember = "Nome";[m
                 this.cboCategoria.ValueMember = "Id";[m
                 this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();[m
 [m
[31m-                this.chkListaDeIngredientesNovoProduto.DataSource = null;[m
[31m-                this.chkListaDeIngredientesNovoProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();[m
[32m+[m[32m                // 3. Atualizar lista de ingredientes[m
[32m+[m[32m                this.chkListaDeIngredientesProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();[m
[32m+[m
[32m+[m
[32m+[m[32m                // 4. Preencher os campos com informações do produto selecionado necessários[m
             }[m
             catch (Exception)[m
             {[m
[36m@@ -62,173 +76,158 @@[m [mnamespace Softex.Residencia.Projeto.UI.Administrator[m
         }[m
 [m
         //[m
[32m+[m[32m        private void PreencherFormularioProduto(Produto produto)[m[41m [m
[32m+[m[32m        {[m
[32m+[m[32m            // 1. Preencher nome do produto[m
[32m+[m[32m            this.txtNomeProduto.Text = produto.Nome;[m
[32m+[m
[32m+[m[32m            // 2. Preencher categoria do produto[m
[32m+[m[32m            this.cboCategoria.SelectedValue = produto.CategoriaId;[m
[32m+[m
[32m+[m[32m            // 3. Preencher preço do produto[m
[32m+[m[32m            Console.WriteLine("preço" + produto.Preco.ToString());[m
[32m+[m[32m            this.txtPrecoProduto.Text = Convert.ToString(produto.Preco);[m
[32m+[m
[32m+[m[32m            // 4. Selecionar ingredientes que compoem produto[m
[32m+[m[32m            /**** TODO: Falta implementar ****/[m
[32m+[m
[32m+[m[32m            // 5. Preencher descrição do produto[m
[32m+[m[32m            this.txtDescricaoProduto.Text = produto.Descricao;[m
[32m+[m
[32m+[m[32m            // 6. Adicionar imagem do produto[m
[32m+[m[32m            ImageConverter ic = new ImageConverter();[m
[32m+[m[32m            this.picImagemProduto.Image = (Image)ic.ConvertFrom(produto.Imagem);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        //[m
         private void LimparCamposFormulario()[m
         {[m
[31m-            this.txtNomeNovoProduto.Text = "";[m
[31m-            this.txtDescricaoNovoProduto.Text = "";[m
[31m-            this.txtPrecoNovoProduto.Text = "";[m
[32m+[m[32m            this.txtNomeProduto.Text = "";[m
[32m+[m[32m            this.txtDescricaoProduto.Text = "";[m
[32m+[m[32m            this.txtPrecoProduto.Text = "";[m
 [m
             if (this.cboCategoria.SelectedIndex > 0)[m
             {[m
                 this.cboCategoria.SelectedIndex = 0;[m
             }[m
[31m-            [m
[31m-            this.picImagemNovoProduto.Image = null;[m
[32m+[m
[32m+[m[32m            this.picImagemProduto.Image = null;[m
         }[m
[31m-		[m
[31m-        //[m
[31m-		private void limparCamposFormularioNovoProduto()[m
[31m-		{[m
[31m-			this.txtNomeNovoProduto.Text = "";[m
[31m-			this.txtDescricaoNovoProduto.Text = "";[m
[31m-		}[m
 [m
         //[m
         private void ValidarCamposFormulario()[m
         {[m
[31m-            if (string.IsNullOrWhiteSpace(this.txtNomeNovoProduto.Text))[m
[31m-            {[m
[32m+[m[32m            if (string.IsNullOrWhiteSpace(this.txtNomeProduto.Text)) {[m
                 throw new GenericWarningException("Informe o nome do produto!");[m
             }[m
 [m
             decimal d;[m
[31m-            [m
[31m-            if (!decimal.TryParse(this.txtPrecoNovoProduto.Text, out d))[m
[31m-            {[m
[32m+[m
[32m+[m[32m            if (!decimal.TryParse(this.txtPrecoProduto.Text, out d)) {[m
                 throw new GenericWarningException("Informe o preço do produto corretamente!");[m
             }[m
 [m
[31m-            if (this.cboCategoria.SelectedValue == null)[m
[31m-            {[m
[32m+[m[32m            if (this.cboCategoria.SelectedValue == null) {[m
                 throw new GenericWarningException("Informe a categoria do produto!");[m
             }[m
 [m
[31m-            if (this.picImagemNovoProduto.Image == null)[m
[31m-            {[m
[32m+[m[32m            if (this.picImagemProduto.Image == null) {[m
                 throw new GenericWarningException("Informe a imagem do produto!");[m
             }[m
 [m
[31m-            if (string.IsNullOrWhiteSpace(this.txtDescricaoNovoProduto.Text))[m
[31m-            {[m
[32m+[m[32m            if (string.IsNullOrWhiteSpace(this.txtDescricaoProduto.Text)) {[m
                 throw new GenericWarningException("Informe a descrição do produto!");[m
             }[m
         }[m
 [m
[31m-        //[m
[31m-        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)[m
[32m+[m[32m        private void AtivarSalvarModificacao(object sender, EventArgs e)[m
         {[m
[31m-            try[m
[31m-            {[m
[31m-                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[32m+[m[32m            btnSalvarModificacaoProduto.Enabled = true;[m
[32m+[m[32m            btnCancelarModificacaoProduto.Enabled = true;[m
[32m+[m[32m        }[m
 [m
[31m-                using (MemoryStream ms = new MemoryStream(produto.Imagem))[m
[31m-                {[m
[31m-                    this.picProdutoSelecionado.Image = new Bitmap(ms);[m
[31m-                }[m
[32m+[m[32m        private void DesativarSalvarModificacao()[m
[32m+[m[32m        {[m
[32m+[m[32m            btnSalvarModificacaoProduto.Enabled = false;[m
[32m+[m[32m            btnCancelarModificacaoProduto.Enabled = false;[m
[32m+[m[32m        }[m
 [m
[31m-                this.txtDescricaoProdutoSelecionado.Text = produto.Descricao;[m
[31m-            }[m
[31m-            catch (Exception)[m
[31m-            {[m
[31m-                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);[m
[31m-            }[m
[32m+[m[32m        private void RemoverProdutoSelecionado()[m
[32m+[m[32m        {[m
[32m+[m[32m            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[32m+[m[32m            this.produtoBusiness.RemoverProduto(produto.Id);[m
         }[m
 [m
[31m-        //[m
[32m+[m
[32m+[m[32m        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[32m+[m[32m        // [EVENTOS][m
[32m+[m[32m        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[32m+[m
         private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)[m
         {[m
[31m-            if (this.openFileDialog.ShowDialog() == DialogResult.OK)[m
[31m-            {[m
[31m-                this.picImagemNovoProduto.Image = new Bitmap(this.openFileDialog.FileName);[m
[32m+[m[32m            if (this.dlgUploadImagem.ShowDialog() == DialogResult.OK) {[m
[32m+[m[32m                this.picImagemProduto.Image = new Bitmap(this.dlgUploadImagem.FileName);[m
             }[m
         }[m
 [m
[31m-        //[m
[31m-        private void btnSalvarProduto_Click(object sender, EventArgs e)[m
[32m+[m[32m        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)[m
         {[m
[31m-            try[m
[31m-            {[m
[31m-                this.ValidarCamposFormulario();[m
[32m+[m[32m            try {[m
[32m+[m[32m                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[32m+[m[32m                PreencherFormularioProduto(produto);[m
[32m+[m[32m            }[m
[32m+[m[32m            catch (Exception) {[m
[32m+[m[32m                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);[m
[32m+[m[32m            }[m
[32m+[m[32m            DesativarSalvarModificacao();[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private void btnSalvarModificacaoProduto_Click(object sender, EventArgs e)[m
[32m+[m[32m        {[m
[32m+[m[32m            try{[m
[32m+[m[32m                // 1. Validar campos do formulário[m
[32m+[m[32m                ValidarCamposFormulario();[m
 [m
[31m-                Produto produto = new Produto()[m
[31m-                                      {[m
[31m-                                          Nome = this.txtNomeNovoProduto.Text,[m
[31m-                                          Descricao = this.txtDescricaoNovoProduto.Text,[m
[31m-                                          Preco = Convert.ToDecimal(this.txtPrecoNovoProduto.Text),[m
[31m-                                          CategoriaId = (int) cboCategoria.SelectedValue[m
[31m-                                      };[m
[32m+[m[32m                // 2. Remover o produto selecionado[m
[32m+[m[32m                RemoverProdutoSelecionado();[m
 [m
[31m-                using (MemoryStream ms = new MemoryStream())[m
[32m+[m[32m                // 3. Criar um novo produto a partir dos campos modificados[m
[32m+[m[32m                Produto novoProduto = new Produto()[m
                 {[m
[31m-                    Image image = this.picImagemNovoProduto.Image;[m
[32m+[m[32m                    Nome = this.txtNomeProduto.Text,[m
[32m+[m[32m                    Descricao = this.txtDescricaoProduto.Text,[m
[32m+[m[32m                    Preco = Convert.ToDecimal(this.txtPrecoProduto.Text),[m
[32m+[m[32m                    CategoriaId = (int)cboCategoria.SelectedValue[m
[32m+[m[32m                };[m
[32m+[m[41m               [m
[32m+[m[32m                using (MemoryStream ms = new MemoryStream()) {[m
[32m+[m[32m                    Image image = this.picImagemProduto.Image;[m
                     image.Save(ms, ImageFormat.Png);[m
 [m
[31m-                    produto.Imagem = ms.ToArray();[m
[32m+[m[32m                    novoProduto.Imagem = ms.ToArray();[m
                 }[m
 [m
[31m-                this.produtoBusiness.CadastrarProduto(produto);[m
[31m-[m
[31m-                this.PreencherCamposFormulario();[m
[31m-				this.limparCamposFormularioNovoProduto();[m
[31m-[m
[31m-                MessageBox.Show(Mensagens.CadastroProdutoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                MessageBoxIcon.Information);[m
[32m+[m[32m                // 4. Adicionar o novo produto ao banco de dados[m
[32m+[m[32m                this.produtoBusiness.CadastrarProduto(novoProduto);[m
 [m
[31m-[m
[31m-                this.LimparCamposFormulario();[m
[31m-                this.PreencherCamposFormulario();[m
[32m+[m[32m                // 5. Desativar os botoes de salvar e cancelar[m
[32m+[m[32m                DesativarSalvarModificacao();[m
             }[m
[31m-            catch (GenericWarningException ex)[m
[31m-            {[m
[32m+[m[32m            catch (GenericWarningException ex){[m
                 MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,[m
                                 MessageBoxIcon.Warning);[m
             }[m
[31m-            catch (Exception)[m
[31m-            {[m
[32m+[m[32m            catch (Exception){[m
                 MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK,[m
                                 MessageBoxIcon.Error);[m
             }[m
         }[m
 [m
[31m-        //[m
[31m-        private void btnCancelarRegistroNovoProduto_Click(object sender, EventArgs e)[m
[31m-        {[m
[31m-            this.Close();[m
[31m-        }[m
[31m-[m
[31m-        //[m
[31m-        private void btnRemoverProduto_Click(object sender, EventArgs e)[m
[32m+[m[32m        private void btnCancelarModificacaoProduto_Click(object sender, EventArgs e)[m
         {[m
[31m-            try[m
[31m-            {[m
[31m-                if (this.cboListaDeProdutos.SelectedItem == null)[m
[31m-                {[m
[31m-                    throw new GenericWarningException("Selecione o produto que deseja excluir!");[m
[31m-                }[m
[31m-[m
[31m-                Produto produto = (Produto) this.cboListaDeProdutos.SelectedItem;[m
[31m-[m
[31m-                if ([m
[31m-                    MessageBox.Show(Mensagens.ExcluirProduto, Mensagens.Mensagem, MessageBoxButtons.YesNo,[m
[31m-                                    MessageBoxIcon.Question) == DialogResult.Yes)[m
[31m-                {[m
[31m-                    this.produtoBusiness.RemoverProduto(produto.Id);[m
[31m-                    this.PreencherCamposFormulario();[m
[31m-[m
[31m-                    MessageBox.Show(Mensagens.ProdutoExcluidoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                    MessageBoxIcon.Information);[m
[31m-                }[m
[31m-            }[m
[31m-            catch (GenericWarningException ex)[m
[31m-            {[m
[31m-                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                MessageBoxIcon.Warning);[m
[31m-            }[m
[31m-            catch (Exception)[m
[31m-            {[m
[31m-                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                MessageBoxIcon.Error);[m
[31m-            }[m
[32m+[m[32m            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[32m+[m[32m            PreencherFormularioProduto(produto);[m
[32m+[m[32m            DesativarSalvarModificacao();[m
         }[m
     }[m
 }[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.resx b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.resx[m
[1mindex ffaa582..b87a183 100644[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.resx[m
[1m+++ b/Softex.Residencia.Projeto.UI.Administrator/FrmProduto.resx[m
[36m@@ -117,158 +117,304 @@[m
   <resheader name="writer">[m
     <value>System.Resources.ResXResourceWriter, System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089</value>[m
   </resheader>[m
[31m-  <metadata name="openFileDialog.TrayLocation" type="System.Drawing.Point, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a">[m
[32m+[m[32m  <metadata name="toolTip1.TrayLocation" type="System.Drawing.Point, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a">[m
     <value>17, 17</value>[m
   </metadata>[m
[32m+[m[32m  <metadata name="dlgUploadImagem.TrayLocation" type="System.Drawing.Point, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a">[m
[32m+[m[32m    <value>114, 17</value>[m
[32m+[m[32m  </metadata>[m
   <assembly alias="System.Drawing" name="System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" />[m
   <data name="btnRemoverProduto.BackgroundImage" type="System.Drawing.Bitmap, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
     <value>[m
         iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8[m
[31m-        YQUAACHLSURBVHhe7V0JdFXVua6iz2expYqKShF9KA6t4vDWoj7ro9aqr8t2WWuttWpttc51aLW6HBAV[m
[31m-        VBAoOJQwmEAIZLqZ54HM80wSQggJCSETc1BUqgz7fd/m7HTncO6U3JvcG2/W+ta5Sc495+z/+/a//z39[m
[31m-        51vfCvwELDCWLdC7c9dkYCowA5jV2+cEPGfnrmn8zs5duyeMZdv4ddn6du46rad35wzgzu7evhe6unuX[m
[31m-        dHb12IAifO7o7uk72NO3U+A80bdrtwCZYveevS6B5xMQi+A1unr6+nZ09zbj2nnAalx/Lu75OO59CzDN[m
[31m-        rw3pDw/f1dM7Gbgbxp/b0dmVvH1HdwdIkATt2r1H7Nm7T+zf3y/6DxwQn332mdfw6aefiv7+frFv334p[m
[31m-        JIoKAhAQxyE8Vx0Qhud6Ac9KYYz3B9v65DPu6Oq5DHh6W0enrX37DtS+HlmTSTQJcIdkRZoibu++fcIR[m
[31m-        9u/fL+8xlPtQhLshSHqNzq5ugeevA4JQlnu7e3oDzYk9tcFA47Z3dt3Suq0jCOhCDQfhO2VNI4H2CD+A[m
[31m-        Gk8y6QV6pavulYbv6Nwh2rd3Clxr2Ghr3y6vtX1HF2p6jwCRUoz0AK483x6ch+YI19jBZymDIF5DWQPN[m
[31m-        BsXQ3tE5s6V1W1BLa/seGEW6VJJqRTiNzf+TgI7jxhT4rk+AIumEQHp6+6QHsOc99sG78JxtOB/PXte2[m
[31m-        reNlfG+ST7phbz0USD8NhX+ouaW1bmtbuzSIlcH2wt3zf6x9JBrn+xVYNoqC3mK/RbPF8nXC023Z2nYY[m
[31m-        ZbO1tXfM9JbNfeK6UPu45pa2x5uat/bRODt37Rrk3unqWcPpCZq3tgmcN6bAMrMJIfG6h2PgyqaLAkeZ[m
[31m-        87a2tt/oE4R58iG2tLTNamza0rx5S6tsq3UD7Nm7V7p0Eo5zvhFArRfsxeiej00f44xNm6UNIra2bvP/[m
[31m-        pmFLS+s4FOaj+sbN0pXr7TtdIw3B/31T0bCpWcYDDGRVpdiLCkFvAJv0w3Z3erIijui1mppbJtU1bCra[m
[31m-        2Ngk23JVQLr+pi0tAv8LQLMBYgDBIJF2OoDmkL/TRvWbNs8dUeI8cbPGpuYJNRsbmlmAXWjXWSj2r7ds[m
[31m-        bRX4ewB2bFBb3ygDR9X13daxXdoKdlzoCV5G7BpVtRuTAdllI/ls91k4/i0A5zZgHMAKQ9s1t2yVNoMQ[m
[31m-        7h8xAodzo+q6+nsrqmtF85atsgCdXV2isqZO8G8BuG4D1nwGyOxCVkMAsF1/TV29748mllVWFwHS9ffA[m
[31m-        A5RX1Qj+HoD7NkBlknMcrW3bpP1gy+eGUzm9/l2odHxxeaUknQFNGY78PYCh26CxabMMog0bxnudxOHc[m
[31m-        oLqmdmphaYWoqKoV6AIKfg5g+DbYgfkN2jE+MSVvOPx4/bsUQFFJuSgprxJlFdUiv6gsAA/YoLK6Ttox[m
[31m-        aPlKXxdAzdQyuPy8guIAPGyD3PwiMfuNN3xcANU1U2tqa0U+Cp+TVxiAB22wJjRMvPTSS74vgFoIoLqm[m
[31m-        RmzILRDZOfkBeMAG8YnJ4o033vADAdTUTKUA6uvrRU1tncjKyROZG3IDGIYNEpNSxfz588Xrr7/u+wKo[m
[31m-        QRCoBLBpE8ax6xtEdm6+SM/aEMAQbGCLjROLFi0Sc+fO9Q8BgPxBAtiyZYtoaWkRJaXlIjUjKwAXbZCS[m
[31m-        liHWrQ8XS5cuFe+//77/CKCuru4EAbS2tor29naxublZbMgrEMkoXAD2bRAXnyjWrFkjgoKCxpYAduzY[m
[31m-        gaHhHtHc3ILeQYFITEkPQLNBUnKqiImNFevXrxchISFjVwA7sdp3z549WPrVKcorq6QI4hHofBORhLJn[m
[31m-        ZGaLjIxMkZycLGJiYr45AtiHVTBcIcQ1cW3b2kUx4oQECCE2IXlMIyE5DV3jPFFaVi7KyjBSmp8vMjO/[m
[31m-        wQI4ePCg+OKLL8ShQ4fElwDHvWsw/ZmWkS1scYl+jxi06YkpJD0XwXCpQJwku8k8BgSA2q8L4OuvvxZH[m
[31m-        jhwRR48eleDSKE6FlmMqNDM7R8TEJ4momHifhi0uAZ4sRaSmZ4gNOTmiqKhIlJeXi8rKSlFdXR0QgIoB[m
[31m-        VBPgSABfffWV+Pzzz2VTwcWS/O5W9Cpq6zaKopJSKYpEuFQaPSI6dkQRaYsT0TFxIoaEJyaJ5JRU2ZZn[m
[31m-        Z2eL3Nxc6doLCwtFcXFxQADsBqpewHAF0N3dLbZv3y7a2toExxmODzjVo3bViJKSEpGbhzY1K1ukoQYy[m
[31m-        sk7AMGpsfIIkioRF2WJFJAHBREbHiIgowiYRTkRGi/CIKLFeIlJ+DscxMjJKREVHC5vNJmIRrcfHx4vE[m
[31m-        xEQZvKWmpor09HTZlgcEYAwFkxgSpMYBvC2AGsw/0M2Wop2l22UNzIELzsrKkuSQJJKVkJAg4uLiJIkk[m
[31m-        MyoqCuRGioiICBEeHi6j8HXr1g2Av/PvPCc6IADHSwocDQQFBBCIAeRAkLeagIAH8Pp6H+c3CHiAQAxg[m
[31m-        dy4g0AQEmoBAEzDWxwHYSGBK+CC7ZYFegFfGAVY5b4hH+QwIYFVAAN4ZCJo9e/bto0yv89tv3LhxGgRw[m
[31m-        KOABPO4Bipxb30fOqG9oeCQgAI8KYM/SpR9M9RF6XXsMCOC1wEigR+YCDi5atNg/08ZgZXBeYCh46JNB[m
[31m-        QUHLRWxc/EOuVTkfO6uwpGxJflEJct4wDYr3J4PG2khgQkKinAbPKyw+hAUkd/gYvY4fJ7+wZA63MtVh[m
[31m-        j3sLsoLUI1NILbY670D2i8BQsOMFITYsC9uAFUObm7GiGrYrxVY72PIgltfP8AsRQLEzNuQVHuaDc4cw[m
[31m-        khpgNXChBP4nGpAziCIY6noAe9PB/u4BUtOwPjArR7MVvGdTM4TQInKx1Q72q8N2u3E+L4Ls3AIbIImm[m
[31m-        B+BnMyiGOqSM6e3rc7giyGpByFgTQB7WL3CNoJWduMm2Celi2BTw/1hWf7dPCwCualxWTv4hEtyEtp/7[m
[31m-        A/G7Q5SUVYitWPbFVT/mJWFjVQBVWLxSVFwqd005s09RSRkqS4M6b7VPC6CgqGQq9wJy3T+bAHf3BVIM[m
[31m-        La1tMm8e1waOFQFw8WcxVivlFxbJ2u6uXWqwBI7fSUxO9e3dwWXlFVIAVDVdVgbW7A0VrB0VSDHDYKgD[m
[31m-        SSaZPZyxgz80ATlYAZyTmwcPmCeyYI+h2kB9Lye/UF4jZM1a3xZAOQSQh+g/PRObQb0ANincP1CBNpG7[m
[31m-        jzfCNTY0NBzfjTwKS8KSkpJFCpaacf1hOvb9pWOThzfKra45f8H7Pi6AisqpFViXxzX9IwkaiCuEszcg[m
[31m-        mIKL3YAamL0B6wGzN2DnDdcEZojUtDSsCUzBQs4kLOg8vi6QW7G4LpBr/SKNtYFc/BkZdfz3aFuMsMXE[m
[31m-        ijicz8WlcMEiOTVdpKRnjmj5aMsY7JF4+eWXfVsAlZVVckEI27qU9KwAPGSD5LRMsQC7hH0+Q0hV1XEB[m
[31m-        YEZQBoJ88ACGb4NlGBL2iwQR2PkyaElYHoKXpFSszw9gSDbgxtnlK1b6T34ABGInrAksr6iShR8L28Hj[m
[31m-        I6JFzKuvC9ufH5OIxecEbC7xRtliE5KwRXy5ywkiMq+9dnzy5Zffm3TZZXMSp0+fkzB9+kMpV101su8c[m
[31m-        sMoQwtnAZnTlNqBbl8CdOn6IeOxYjnz0cRF96XRRfe+9ov2FF0Q3cva0PvOMKP75z0Xc03/xWLm4TT4C[m
[31m-        Qejy5ctdThCReNFFT5f87Gf9LU8+KXrwXNtfeknU3XefiL/00kORkye/l3DFFSMzhOxsWXjjps2I1nNF[m
[31m-        XGKK/wAbUtfffrso/sUvxP7Fi0UNBJB9ww0i9eqrRcFPfiJo9N3z5omshx9BbyFpWOWKxU7i8PAItxJE[m
[31m-        bLj++iW7kEOoDWIsxPOkz5ghsmfOFFV33y32LFggBbv27LNtcZdf7n0ROBOA2hiyBSnQOTHk87kA0PVa[m
[31m-        d9vtovRXvxKbn3hCrD/vPLHu7LPF+nPOEeFABBB57rki7Qc/ECQhF2KIxXfcKRcrQxK2jyclJbmdICJz[m
[31m-        5swlfXPmiKxrrhHReI4oINJ4Lj5fOH5veOgh0finP4nQiRNtsdOne1cErgqAGUI4G8iRvdqN9SIN/Xhu[m
[31m-        /fYpxCaItQb5DTQgiEdNshQAjZ80bZoUQd4TT2J8AZtRnZSHYwkcKczLw9DwEBJEZNxww5Le2bNFCu4b[m
[31m-        M2mSpQAo1jCgHAJmGdZABDHeFIG7AuAEkNoevhPvEKpv3CSbiNFODBGNrd+ht94mSv5tOKcCsEEEyYYI[m
[31m-        ciECG66hl4MDOcz+lV9QJEcth5MgIuPGGyX5qQb5vLeVB1ACoHDLjLKEQAQ2b4lgOAJghhA1G/jFl1+K[m
[31m-        drwuhUO+TC8XjRo1UojCtvE1t94qiu+8U9Sj1qyeOJE1x6EA6HpJAmsia6RsDiCCeLTpacgZkJdfICoq[m
[31m-        KjySICLjppuW9IH8tEsuEbG4H+9pJQA2U7oA0ATIpoxlCoYIoi+91PPNgacEoDKEqNlAvn6ViSGq8NYR[m
[31m-        OcCEbiUFwSQNnsbqO34hikD+xuOG+rcA8Jk1iS51UAwAQ1MArIEkg6SwZu6GCMqee04UI0mEpzKEhN1z[m
[31m-        z2GSnw7y44x7mQXAuITtv5UAKGaKgGX7ZOLECI9PLXtLAHqGEH02kJlIMQMJt1qIcf8c6WKZV5fuNjo2[m
[31m-        3u2MIevmvSsyZ81SBpICgMs87gE0AbBmDQSBmgCUF6AIWEMpgvLnnxdlmAoeboqYcHTrFPnxCEatBMCA[m
[31m-        1EoAjF9YBgqA5Sn99a9F0S9/KcKmTLnXoyIYaQHoGULszQZmIkGEnAhKScGETiImgeIRpKF9xiRPNCaC[m
[31m-        5MQPJoAikAUk5Kc/FZufflqsgpFQQwYEQMOZBaB7AeUBdAGQICWCir/+VVRiTcBQcwRFPfCAJD8DokoA[m
[31m-        +fG4Nq9vz/0rD0BvRa9lFgDL1vDoo2L1+ed7drOJLwrAnQwhyRBA9BVXWArAlThANQOqKSBRdNf0BJV/[m
[31m-        +5uoRhzgbpawGHTjBpFvp/brXUAr9688AL0aBbD+4otF+k03HR7zHsAtAWCAZ8VZZ4mVgPICdJkDgaCb[m
[31m-        zQBrKd21EkEVRFCLHcKupomLf/hhh+QP6v7Zcf/SA2juXwmA5UvGgFFAAFqOoPUYUDELwFEcYB4QstcU[m
[31m-        DBIBhpHrMWPqrBuYBBdtrvnK9TuK/p25f5aH5BOrL7jgUEAAmgCCMeS73OQBlADM3UFHvQEVC6imwOwJ[m
[31m-        ql98UdRW4b1KdjKFpmDU0S3yndR+s/sn+fRyEHt6QACaAMIwdk4BWHkBe82AvS6hpQi0wJAxQRlyCJpT[m
[31m-        xaYjCFXRvgz4jDbfXrdPRf569G8v+NPdv9HMeXa7ORaCTNBfGOGPm0NDfvc7u82AlRewmhswNwW6J9B7[m
[31m-        B+wi5iOVnRoKznr2WUk+ew8kXnf5ZrdvNfLnKPhjLMPgT9V+CMA77yOGAOr8PUFEyF13uRUM6l5ATRDp[m
[31m-        ItC7hySSIlCDRSUgPRN5DDegq8jhXZLP/6sar4jXu3wukW/q++u1f9VZZy3xqOvXL4bg5iF/FwATRVIE[m
[31m-        em/ghFjA1CNwJAISpjcJyiOoYeOqP/5Rkk9RkHAFnqeI14d7zbN+J9R8I/LXB39U7fcq+RQCyB8HFI2F[m
[31m-        BBFORWAMtLDNNTcF0hMYo4RW3kCRywmkTgSFPKq/WRE/UOtNU74k35nrH6j93qz5uhdoaGycBAF0+GMM[m
[31m-        YE4VuxrDplYjg2p4WE0TOxIBAzWKQAlBeQTWakfgeYp4WeuNaF8P+FwlHx7Ae27fqj1pbNw0ubm5GSvC[m
[31m-        jr8zyJ/zBA5VBGq+QHkDKyEoks1HJRhFvFroYR7rHzTjZ6fdH3HyKYjyypq7SyuqD3M9oL8LgMmi12CJ[m
[31m-        lTueQG8SrISgi0Ene4BwzdWTdEW8eaZvoMtnTFqxp6Imfej6gZGt+SS/pKLqlqKyysN86TFf+NC2bZvo[m
[31m-        6Ojw+0SRob/5jcsi0JsEFSDqQlCksmbrUH/Xj3J5l9bW67VeDfWqgG/0yS+vmlBYUr6npKxSZrho2dom[m
[31m-        yrHJsxivP29s2ix6envlS6P8NUHE2nvucUkEau0AyVLeQBeCItVMuPq7Trpq5xXx+kAPx/l9hnzW/oLi[m
[31m-        0oX5RXg3DhJAbIEAKAT+rlCEzZ3MG7Rz1y6ZE8DdN4b4wu7gsN/+Vg6qmKeMSYRVcKi8gVkMKoJ3dFTf[m
[31m-        4TUU8WqKVyefAz3EqLl9FQgiq0UfV/xy5W8ZNoXYfZV8YQkWhDaILrwk6iBeC6MvCTOvCLK3IMSV9QDu[m
[31m-        zAa688IIisAqJtCHjEmQ6iUoj6CIVMQ6Oqpz7RGv9/MN4kenzR8gv7B4Ug62h+cj+8XGhkbBz66gsLgM[m
[31m-        zUMzcgDskkkh/EEAfGXMOqy510WgDxY5EgLFYBaETrZOuF7bVY23cvmGRxr5gE/vApZjezj38OcVlOCl[m
[31m-        TuUyRYy7YHaxarw2rr2jU+xGrPDZZ58NemmULzQB+juD1mPuQIlAbxLUOgIlhIGmwfAK9Ay6d1CiGCDc[m
[31m-        GM3TSbfT1qvmaHTJl10/CCAXG0KZ3eN4/htkyBgmKCCmjmHCKWYLacXLotitNL80ajQSRKiXRnG9nppj[m
[31m-        VyJQ3kAXgi6GQfGCseRMNhlGHKH+byZda+f/HYecffbok08BIDnE1GIkNeLafm8DKdNEIRJR8n58C2cp[m
[31m-        5tb5Ysbi4hL5ujZPvzQqCmsHY7COkMklEmVmkDRkBsmUGUGYviXygQcHicBKCGYxqD67o6MK7qyIl57n[m
[31m-        nHN8g3wKgAkiWBNZ69OR8260wbx76VlMV4OMJUAqCOPK4RRk+WCmD7klC+/7Y+aPRGQP4QsfE/E73+nL[m
[31m-        /6UiwQP3JbhajvD7HxiYQNI9gi4G3TPo5Fp91gI7Gd2rnsfAtX2JfCkAI0FEVVW1rBmpSG3yTULys8+J[m
[31m-        tVOnShGomUSzEPTuo5lge4QPzORp8/khWC9g++EPbWu+/33Pb/AY6lyxniCiGp6AuW24B+6bgOTnnhfb[m
[31m-        X3tNhEIAalWRWllkFoM9UZhruDpPW8ShlnIJEC963n5bxF9/vW3tRRf5hgjMCSI2Ghs/x3yGkGePk7/6[m
[31m-        wgtF0JlniiB4AIpAF4IuBisPYY9sdS6/T6jr8rgGYut+6y0Rd911tjBvbPVy1xNYJYhoaWmRwZo3smj4[m
[31m-        wjUTnnlOdID8EJD/T5C/zIASgi4GsyAUqUoc+u/6Z510Xo/XVvfhfSmCGIhg3UjkAHAkCkcbQ5o2IzkE[m
[31m-        kiYyA8aYwTPPSvI/mTJFfPy974mPQQxFoDBIDCbPoJPq6LMk3EQ6r6vfJ9gQgY2e4LLLRq85cGVn0GbM[m
[31m-        A2Qhn18c9vD5M2L/8oxoB/mrQP6HIP8jA1ZC0D0DyZPewQyDZP3vSkDqqJNOsRHqvhQhPUE0RBA6WiJw[m
[31m-        RQDqfQFM/8p8wsyQ4SyZgs/9HzmB2l99VaxEILYUxH9ggEIYJAaDJLNnMHsIM9HmGq7OV6RTZIp4dU8+[m
[31m-        w0qIoAsiiLr2Wtsab+UAGGoTYG9FUH//AZktHLOIMrXKaCeHcHr/p56W5C8H+UsmTJBYSjgQAslSnmGA[m
[31m-        RJMb12s3P+vn6YTzWop0HpX45DMAK/BcFEEkRBAy0iJwxwNYrQf48stDohNvFamuqcOATaaIion3LTz5[m
[31m-        lNgG8oMmTxaLYex/GBgkBPxNkcKjTpaqteajFIdWq63OsyQd3yHp6v7qeYIMEYRfc40teCR7B8MVgPl9[m
[31m-        AQcOfIrEEG1yWpkjekwKEYEMHqOByCeOk/9PkL/wu98Vi4DFhIUQBryCSQxmQeikOvqsC4qeRtV2M/EU[m
[31m-        AJ+Jz7YMz7kDngD7HW2fjJQIPC0Aq/cFMFMI8+cXYcw/A6Jg3kGvC+PxJ0UbyP/oggvE+zAuoURgJQQS[m
[31m-        ocjRxWBuKnRi7X3WCbeq7ZJ0jXg+D5+N+NgQwTqIYNVIiGAkBGBvOrgab+EoQSaOXLyCJTMLY//IEJ7E[m
[31m-        pJTobcRiAicmDnmGYuJElC0WaWUAeJJIZPmMiCJsEuFEZLQIj4gS6yUiRfjjT0jyPwT587/zHbHAgJUQ[m
[31m-        7InBLIgTRKHiCO2oC8iqpjsiXj0bn5WipScImzHDtuKSS7zbRRxNAXhlOvjPfxZtr7wiPoAR34MxCYrA[m
[31m-        nhBO8AqmJkK10eajTra9cwYIN9V2vcbrxJN89ax8/k6IIBQiWO5NEYwpAYD8VpC/5PzzxTtnnCHeNeCq[m
[31m-        EHQxDHgGLW6QbtvAMmQdVcTrf1euXbXrvI6CcvNm0nXi1bPy2ZeiHJ1vvinWXH21bdm0ad7xBGNFAGFI[m
[31m-        zkDy/wGjzYXx5hkYEILhDaw8AglQpKhYQZGlE6g+r73/frk7OARrDK3+r9dwM+m8vmqSVG3nUSeez0yw[m
[31m-        DCwPRbAaIvj44os9L4KxIIA1IH8ryF+E6da3xo8XbwMUgRKCMqg9j6A3D2YxmAWx/g9/GJQfYCU2nyiS[m
[31m-        rcjWCddr+iDSIQA+m048yefzsyyLUa7tEMGKyy9f5e5cj9Pz/V0AwWgnqx57TPwD0TPJV6DhnAnhXQuv[m
[31m-        YI4XVG3lMQK5+qwyhCxDHj8rt+6oprPG8/72iJ9rPL8qD8Vdj+TSCydN8uwraf1dACFY5Rt7882DyHcm[m
[31m-        BNYus1fQxaA3E0oQkUj+5ChH0IfITK67dCv3rpPujHiKVy8HP4f/6Eci+Kqrsp3WandPwJTwQX/NDxCB[m
[31m-        NHFvoyaZjWX+3coj6ELQg0bZVGjeIRw135UsYUvwHgLVlg+06UYt1wlX7bty87K5Mmq8FfF6WSJvvNGz[m
[31m-        SaIoFghglb8KYOWVVzol39IjmOIEPWhU3oHH9UgE4U6ewIW33TbQ+9Cvo5OuE6+E6UzA6v8fYEGJuxXc[m
[31m-        6fkgfxpwyB8TRMzFjlxXjWfXK2hi0HsQYQj4hpIp9L1bbhnohShhqaBUr+nOarudcnk2UaRSB17m+Ig/[m
[31m-        CmDxTTcNWQBWnkEGjkAoyB9OruB5s2YdNrt2d2u7HQF4NlWs7h6amppe87cMIZ/g7RtD9QD2vrcaeX6H[m
[31m-        mS384Lt///uNcydNWuLpZ8P17nTq0odzAgTwCDKEHPanBBFL77jDYyIIxiBPMXIBDkMArUtffPEyxcHb[m
[31m-        SPbgQRF4Pl28lVjQFMyAABr9JUXMurVrxSIPNAWf/P73cofSMASwesXSpePNNp2LzSAeEIEN1/D8SKA9[m
[31m-        b4GJmnHwBC/gpVH9akmYTyeIoAh+/OMhe4JV2CvIrWlDFEBeaGjoTEeed9555w1HBCNLvipIQUHBSYiC[m
[31m-        z0SqmDeRIaTfpwWAPIFhoaFDEsFK7BbOzc0digDy8SLrmyMiIk5CprKTwsLCTnIogsmThyIC75GP5Ion[m
[31m-        AScTKMC4yMjIU6Kiok7Fm7lPjYmJOQ376U/HbtpvJycnj8/Ozp6InsLz+/fvb/DlDCFSBG40Byv4TsHs[m
[31m-        bHcEcDgnJwcvMo+7EckpzgD542G78bDht4HTIYLTwtauPTU0OPjU1R9+eMon7747bsUrr5y87KmnTv7o[m
[31m-        gQdOeufCC90RgWfJNwgfh+MpwGl8YOAMYAJwFnAOMAk4H5gC/BdwKXC5gStx/CE8w33YPBIFIew0Lwmz[m
[31m-        WhE00vkB1oWFCVe6h8sxm8dZPVcEAE/YhMwlH6Fy3A4bXEs7ALSHsg3tRHvRbrQf7Uh70q4TQpcvPyN4[m
[31m-        /vzTP3nrrdMWXHfdhy7EBB4nn8T/J/Bd48G+bzzwFTheA8wEbgJuBm4F7gDuBu4DHgT+APwReAR4Cvgb[m
[31m-        8AqMtxyeoQjNQ9eRI0eO+oIAmDiSqWOWYRRvLpI2mI09D9m7gpHePR35fu0JoLS09F94P+CWVPzAK76P[m
[31m-        ss5meY1ys/y0A+1Bu9A+tBPtRbvRfrQj7Um70r60MwVCu5+zaNasZ/Fc/RZCOIS/zfVowIcbkny6KSqT[m
[31m-        qv0fgErmA7MATxgFexXHN4B5wELgI2AlEAKsBkIB/tiAJCAD2ADkEDBUAdrSBgSQ3Qgg+/v6+g4zgBxp[m
[31m-        D6AEgCZNRCI4DMZ7eYPQt1/+4IMiFEvFEvHeIfA6SAAQ8r/S0tL2o8nrQLtejfLkGpBlM8rJ8rLcLD9/[m
[31m-        aA/ahfahnWgv2m0eQDvSnqwotC/tTHvT7rT/lcELFlz04X33/W7+VVfNfg8vj37noovuf2fKlInD6caf[m
[31m-        8F3ciO083f25AJV4J/A0MAdYAqwCwoEEIA0goflACVAF1AObgCYDzTi2AtuBbqAX6DOwE0cdu2HMftS0[m
[31m-        L1CbvkKtOgxXehQp6o9x7sErS8IQDOoCgMvGCyFtQqWIQVxzFDiC3w8jzvkKIvkC5x/Ac+8Fdpuen2VR[m
[31m-        ZWM5WV6Wm+WnHZRNaB/aifai3Wg/2pH2pF1pX9qZ9qbdaX/yQD7OXTVnzmlL77rLYQA5ZFHgBgzyGKBc[m
[31m-        CNAtPQksNh4qHccioMYozFYc24EdQA+wC9gD7Af6ARrqU+Ag8DnwJXDIwL9w/MoCX+Nvh4EjOuCij4Ac[m
[31m-        EnE0ISHhKN7De4xAwCmPBGrjMfzvGAg7hvOOgchj+M4xkHYMwdcxXOMYyDuG654A/p3AOUdxJAbd3/Q8[m
[31m-        fD4+p9Xzs1yqjCwvy83y0w60B+1C+9BOtBftRvvRjrQnRUL70s60N8VA+5MH8nFhyMKF3/7n44+fPGSS[m
[31m-        HX0RN6AHYLDH4OR/gUeB+QDdF91ZHlAO1BkPy4fuMArRjSNrAGvGPkAXAQ3wGUBjfAHQSPZEoAxLI1tB[m
[31m-        CeQo/u9JKNIVwVb3tiJd/U2Rz/KxnCwvy62TT7vQPrQT7UXyaT9FPu1K+9LOtDftTvuTB/IxBQHi6cHv[m
[31m-        vecdD0Bx4Cb/AUwEGIgwQGHw8iIwD1gKsP1aC0QBiQDbumyA7SCVWwHUAo3AJkBvDlrwu+41VJNgbg6s[m
[31m-        fqfh6HopLF1QNPZwQbII1lK9hrryXCST5dBrM8tpdvu0B+1C+9BOtBftRvvRjrQn7Ur70s7zgBcB2p88[m
[31m-        kA/y8h9eqf3qorgBmwH2AHiziwG2PYxQ/w/4NfB74GFARfcqGHwLf3sPYNsVBAQDDHrWGGDhIoA4IBXI[m
[31m-        AlRQqIIoe0fWCCUu1hIaUwlrMz4PF7zWJoBtM4O6UqAAcPZc/L8K+lgelovlYzlZXlV22oH2oF1oH9qJ[m
[31m-        9tKDP9qTdqV9aWfam3an/ckD+SAv3nH/uqp4E+BUgPHA9wAGhaorOB2ffwCwf6u6gz/B51uMh2bA8lvg[m
[31m-        fkB1CR/C5z8BjwHPAi8BrxsGYKDjDG/jHEfiUoYe6tFedP6mC8/GZyeRLA/LxfKxnCwvy82InnagPWgX[m
[31m-        2ofk0l60m+r+0Z60K+2ruoC0O+1PHsiH98k3CYExgXkwiF3E7wATADUgxAc9D5gMTAUuAS4D1MAH3RcL[m
[31m-        dzXw3wC7NmzTaAAGN87gTFw09HCgSDL3z3/qwrPx2VkOloflYvlYTpaX5VY2oD1oF9qHdqK9aLeBASB8[m
[31m-        pl1pX8Zh7I2dAtD+3mvz3WlP+CAG6CEIJQ4+KBXK+IFuigVgQXRwFPG7wJnA2UbBOQLmChyJSxnYE0fz[m
[31m-        CB3v68rz8RwSyXKxfCwny2u2Ae1C+9BOtBftRtCOyqbSxu7w4nPnsgAGVKH0o1k0NIQrcCQus6GH+jtd[m
[31m-        rap9rjyTfo4VmXq5R4XY/wf1dFbyP+gANwAAAABJRU5ErkJggg==[m
[32m+[m[32m        YQUAACKXSURBVHhe7Z0HnFTlucaFpcPCdrY3qoAUxYgihmhursm9iabYYkUFy9UkaEDpohFFERBFAdEg[m
[32m+[m[32m        IF26gNSld6yIiqJIEemgVNH3Pv/ZGZxdZuucmdmNc36/57ezM+d83/s+7/P175xz3nnhI8yAQwxUUDoV[m
[32m+[m[32m        hQihkhuV9Tc/qui7MArnwBdvHk7hF55DfmAEgawlxAiJQqqQKdQTGggNhUZCY+F8LzTRZ19oqu9/LiiI[m
[32m+[m[32m        Aw9PcAbgDx7rC1lCupAkxAm1hWoCogjagRJrCvFCmtu4Zvp7kdBGaCe0F64SfiP8t3C18Fvhd278j/6C[m
[32m+[m[32m        /y0Ev9dv/2kozF8PJx6O4Ave4O+/hCuFXwqXCRcLLQQEkilQ+BADBTJgB1U8aiMz1IgBBPxXbkP/oL9/[m
[32m+[m[32m        EW4SbhU6CHcLnYR7hHuF+4T7hf/zwgP6XBAe1G//KSjMT28+4Aee4AveOgp3CbcLtwg3CH8SEMyvhbYC[m
[32m+[m[32m        hQ8xUCARguM1AgmSMFV8cwEVosprhBuFO92B6qq/PYW+wpPC08IzwgDhOWGgMMiNwfrrwfP6XBSG6Jzy[m
[32m+[m[32m        hqJ84ndvHjzcwBN8Pevm7yn9fULoI3QTOgsULATxZ4Fag9oBIdD80iTTj3DkoFqJFSj1ZEC1jgLvEB4S[m
[32m+[m[32m        CO5IYaIwS5gvLBGWCyuF1cIaYa2wzo31+uvBBn3+ucObDw9H8AVvq9w85ujvQmGO8KYwWnhB6CEghusF[m
[32m+[m[32m        agVqBPoR1NTVBb8Ogp8g0Am5RKA9ulkg8Kh1nNqFhTEVzns3u2KFL5pGVNzTLKLiPuGAPh8UDgmHvXBE[m
[32m+[m[32m        nz04qs9h5OXAmx9v3g7BKdyKs2/E9XZx/oG4X6YYTBOGCdS81MTUyvTD6Jel+CMCT/BRE1U+6qJdp1of[m
[32m+[m[32m        F1nhvBXNIyruvKZKxPfXV61kNwq3gGq5uLWYuE3nFYXbdU5RuEPnFIUOOicXlX9Cda/P7t+LSoffi7KH[m
[32m+[m[32m        34vyi9+Ly5OHVziGaziHe8Xg69oVXLXpVIEagb7GH4X2Av00RFCjpNUAbT7VPiXfE3yqmQH6YbZU+MW1[m
[32m+[m[32m        yvwGGdGxeoR1rhFhXWtWtG5C91q+0UPf5yKiUPTU70Whl84pCr11TlHoo3P6RBZ9HukUlZ/n96Js5/ei[m
[32m+[m[32m        OPBw5ZNLcQzXcA73xIBYKCZfKTY0ESPcNbRHBNQEDBuLPUKgt0+Hjzafap+ST/BfVIOy4MrKEUfI9B5l[m
[32m+[m[32m        3o1gicAwQscBMSAWxESx+VYxWqFYjRIedtcEl+svtTgFulijA4Z69Pbp8NHmU+0PIPi/UQY3Vo2wf9QM[m
[32m+[m[32m        ncNhsfnmnpgQG8XomFsE1AQMLynADNeZRGLSrtCDSR56jwz16O3T4Xuaav+qyhFHyaBLOPhltsYjNsSI[m
[32m+[m[32m        mkAxW6TYDXUXYCaVLhSYJ6hamAKY4aPqp91nqEdvfxxtPlUMKuulKj+MsssBMSJWitkOxW6G0Fu4TmBk[m
[32m+[m[32m        wLRyHYFm/pyDuX2md+k5MslzhzCI3j6djE5qZ8KBLx8c0CcgZordRsXwVYE+HNPKrQQ6hNT05xz0Eqki[m
[32m+[m[32m        aC8YS7pKP0M9FNWdXjU95jDKPAfEipgpdnsUw5lCL+FagZqdvoDPYSEdBIZ9zO0zvTuASR7Gmgw3woEv[m
[32m+[m[32m        XxwQM2KnGDKTOFxgjYYFJdYMonzVAMwfM2akqmBGaSQzfEw4PKR2JSyA8sUBMSN2iuFHiuV4gUUlYksH[m
[32m+[m[32m        n9ndPP0A/qH3z9CPVT1W4CYyvUuvkrEmEyZhlB8OiBmxUwzpDLJGQ5NObIlxspBnToAOIGN/2n+WdFnV[m
[32m+[m[32m        m8Xc/s1KhFmucPDLFwfEjNgphnsVSxbougvMDjK5R18vT0cQNWQKDBVoK1hYmM/iA3PQvWpVssciQ4vn[m
[32m+[m[32m        o2uG3IbiclAWbO2tmBE7FpEUyxyBpWSGg5cKGfkFgBpYR24vsJmD9fwlXMyiRt8QBp+8x9eta1OTMu3V[m
[32m+[m[32m        +OgyLwJsnC5bJ8jmUPNG7BTDg4ol08PsJ2AzCcvFFPY8+wUQAHv4rhKY+mUzx3KWdEnk8doSQQjwhPKc[m
[32m+[m[32m        kZRqw+KS7ZmoeAkh3cbVTQiZPYVxAEfYNkk2DoyOt1dkM7bjQ6i4Y9WSJXnFkj0Z/dy1O2sDDAXzCIB/[m
[32m+[m[32m        GAIy/cs2LpZ8V3IxAsAJHAwmyHNqUooNjU22fnXiXAJ4TpiMCBLig2pLcfzGpqmJGTYkOsElAOxFuNPk[m
[32m+[m[32m        Q6j4cwvgsGLJ5hJiytT+FUK2LwEwTcjiD7NGbONazUYOEgm2A0/WrmxvqvQ8G1PXnlDwx/z297ZzzVp7[m
[32m+[m[32m        rXUbe14Ej09IVW2QYP8Ksih9CQEbsGVSQpq9JNtGt77UdsnWcb/7vT0VFWeDYxIl5FTDp+IIyalziJmX[m
[32m+[m[32m        ANhl1F9gCxlbx3wKgAkCxolsRGSb1xqPAHCSBIOBfiJqVnK69Y+ua73rxNr46/9qxw8cNI7DX37pInio[m
[32m+[m[32m        iJ6immBqYlJQbCrM72lJSTZNtgyXWMddfKkdkY0c2Dzphr9KwLH2nH6bLZ/wLRgckgcxyycA9hfSv0MA[m
[32m+[m[32m        9PfOaQJYM2bViN2obEhc6xHAk+4ESTSQeEoETaG0KMA9asfa2Otvsu9PnHQR6jmOfrXDJl5xpYvwN0X8[m
[32m+[m[32m        lMREla7A2uXLZ/Ik7xmy4VWV8jd/eZVhm/eB7RMk4D4SAYKmVsPHQHLoSRv73AI4oliyY8gjgPaFCYDd[m
[32m+[m[32m        pWxJZlfqOvbvkUgwCO5fp4rNUCnprWrzkdoxNuHOjnb84KE8hHqLYIoIH4kI1BzMTk4JCqnegZudnGrT[m
[32m+[m[32m        Ve2/Hpto02TLt/mC77EVHybLl57yqa/6BTOp3eRroEXgQwDU6rcJHgHk2SHEP9QACIB96Wz49BJAZVcb[m
[32m+[m[32m        Fig8U6eqTU/OsO5q77uotEy853774cwZn8H3fHli/3576/d/tFEEQIGYk5ym0lUlYDZ6fCePucprVt00[m
[32m+[m[32m        GxubZPP+8EfDlsIOfJly7/3WTb71lo8z5Ss+B4pPT7peNQC7rhEA9xaw1sOS/zkC4FYldo+wiwQBrPfU[m
[32m+[m[32m        AP3qBC74A6Kq2cSkNPunSsg/IqNtvIJ/6rtjhRLqLYLZv75agVBVLBHMVhUbSFtJ+y3lMTsh3SbEJdnc[m
[32m+[m[32m        X/+2yOB7bMWnSfLtn/LxUTVvk+QzvgdKBNiaTwA068UWwGC3AI6SyFNKjASdxsDo6jY1OdP+Hhljf4+K[m
[32m+[m[32m        tek9ehVZ8vMr4+Shw5ZzawdXQGaqOVicmqkhWFXHbSXNJUp7joQ2RcO7Fbd1sFPKuyQHNcEs+fiQmrmH[m
[32m+[m[32m        Jfhp8h0OnOaV9IhZaQTAvWvUAOcIgASdxCA5PjEp3R5Qibi3VpRN697Tvj95qiR8nj339LffWs51N9lk[m
[32m+[m[32m        SqU6ZYtSMuxpB+0lrcVKc4HSnq7gL7/ur0aepTnwcYZE8KB8RviTxAFcOMmtJ63SCoB95QhgAzdukAgE[m
[32m+[m[32m        OIkXY2ra6MQ061gzyu6LibdpffqWhss81xCQtZ3ut2kK0BzVBEtSMm2Qqlh/7SaNHJX8+Sr5s+JTbP3d[m
[32m+[m[32m        95Y6+N4Gz5TPD8Qk2H0SwtjEdIMTf23Nf30+AdCxv6OoPgA1AALgnrWzAujvoACGytHxSRl2Z8061qFm[m
[32m+[m[32m        bZs3eIid+f57vwVAAmc07Npw3wOuQC1UaV2ZVs+eVY+7tMRy7SqlkaO05irNTfc9aGdO5h2WltZwfJ4v[m
[32m+[m[32m        3zvWqmOdJIKJ4gRuSmtr/uuImZcA2BrmnwBI0F8Mjallw1U6b61R2+6MjrO5g58vLX8FXkeA3nuoq81R[m
[32m+[m[32m        wBapp748NcsGR1Uvse1cs0LXLlXwF8jmDx/u6ljwvY1/GxFo6pgC8UrdVHtJHPnLs+d6twCOKvjeAmBX[m
[32m+[m[32m        kM9RQFP94LMGeEYlgbGrPxgRW9tGKiA31oi0m6X4Ja+Ncqzk51cDItjcrafNV34EcG1afbcIiucDwV+v[m
[32m+[m[32m        a1aqal6sNLY80j0gwXfVWqoJcsTFHZFRdosKxmvKD6784ZpriZkjAuBeOqpCf4BDw+TYddUj7da4urZ0[m
[32m+[m[32m        7BuOl/z8Cf4gYrf26+8K4HJhQ3p9VbE1ivSDczbq3NUSzjIJ4HOl8aNDTVRhTi8TJx3iEl0FZLjyhjN/[m
[32m+[m[32m        OOdaYkc/zq8awCWAKAnADwyJjbZrq9ey62pHW87YsfbDDz8EXABkQOC29u5ry9S+rtZK3Tq15y8iggJ8[m
[32m+[m[32m        4bcNOme9zl2lNf3PdW0wgo+tcELBuEkc/VlcwZk/nHNtaQTAI1nydAJJZIAS8xe94mNt7fQZQQm8dyY/[m
[32m+[m[32m        itidw0faquQsW6sS/X56Q5WuWuf4w3cfZjS0jQglJct26xquDfaxThz1SYj1m2/iVVoBsCH07CiARJ5T[m
[32m+[m[32m        Yv5iYGx1m/+3oqd4A0G4SwSDX3AFdlNipkTQwF5Wj9vjE58/1Hfvq9RvSsm2XTo3FMFnomhh5wcNrvzl[m
[32m+[m[32m        m+sdE8BAJeYU3r6/k50+9l0g4lxomgT0m9fH2iYF+l2V8s2qCUbF1XFhiz5vVvDfz2hge3VOKIJ/+tgx[m
[32m+[m[32m        gxuneCYdxwQwSNOgAx0Cs144eub06aCLgAz3jX7DFWgC/mlGI9ua0dg+UfPwkar//WMC3zn15TQlf744[m
[32m+[m[32m        gRvHeFa8/BEAD2NyTQR1qF5JM2pVHcf0G/9kxw/lbvQI9nFwylTbnNXIPpYItir4n2Y1tsP6LhTHCXEw[m
[32m+[m[32m        Q1wEgmNiV9JRAJ1A+gB5BDA4uqoFAjief8NHsIJweOZs+7RBU/u8QTM7qs+hOPAdDgLBLWk6JoDnlVig[m
[32m+[m[32m        MP0vf7Bvv/46FPzbd0ty7JgQiuO7PXtsxnXXBIxX4uWIAO5UNTJEiQUSk67+lZ08fCQUcQhJnvg6WT4H[m
[32m+[m[32m        klPSJnZ+NwEk8kJ0tYBj8tVX2re7d4ckIMHM9DvVdlPkazA4LVcCgJAJ7S6xYyFqDoIhAnybeMWlQQk+[m
[32m+[m[32m        fDomgKFKLFiYcFlrO7Lt82DEI6h54BO+BYtH8nFOADHVtEwZPExs29qOuvfXBzVKAcoMX/ApmBwOVbwc[m
[32m+[m[32m        E0AwDffkNbZFI9v//nsBCknwksWHN+RLKDh0TAAvS00vx1QPOsa10ATNZ1uDFy2Hc8J2fAgFd8TMEQHc[m
[32m+[m[32m        pVHAMCU2TAIIBd5oWt92r1zhcGgCnxw2Y3soOMvNs5oRO7+HgSQyXIkNV6KhwuiGabZ308bAR82hHLB1[m
[32m+[m[32m        jGwOFV+5+TomgMpaP69ur4QYELpr6RKHQhS4ZLARW0PNFzG7S09Cd6AGKBsCgNDXM+vazkULAxc9P1Pe[m
[32m+[m[32m        JduwMdTBJ39HBTBSCY6MrVEm8HpGgm2fPdPPUDl/+fbZs2y0bCsrPBEzx2oAEntVAigrgOivZgZ/e1lB[m
[32m+[m[32m        ssEWbCor/GCHowJ4VQJ4TYmWFYyOq2VLshvaJ6+Pcb4olzDFrbJhaXYjw6aywg92EDPHaoDX4qrbv+Nq[m
[32m+[m[32m        lAmMia9ly9OydVt4kv1b99Xtf+fdEobMudP3v/OejdH9/mP0HKOVsgnbygpPxMwRAdytniROjSoDeCM+[m
[32m+[m[32m        0hbqPr1X9ESOEbolfFXXbs5Fs5Qpre3WQ6VNYhQW604ibCwLXBEzYuf3KIBEcOj1uJohxYT42pajPfsv[m
[32m+[m[32m        6akgPCNole6wZSNlqA9sWNOjt+uRNSMkzKWyEVtDzRcxc0wAryux0RJAqAChi1Pr2RCR/IJuAV/Z67FQ[m
[32m+[m[32m        x/2c/FfLppfjk10CXSJbsTlUfJEvMXNMAKOV2BglGgpMSahj83Sr93NRCa7nBK7o87idOVW65wgEUjXY[m
[32m+[m[32m        tOqxx13PCeRRdm/LZmwPBWfkScwcE8CY+Jo2NgR4s26UzVdp6s9DIhOSbf2QFwMZQ0fS3jhkqD2fkOIS[m
[32m+[m[32m        7ALZjg+h4I6YOSaAN5TYOPVwg4mpdaP19K9MPT4l3vWk0LUKPjd8lvUDGxEqTwoFc+QDvgSTO/IiZo4I[m
[32m+[m[32m        oKM6gSQ2XokGC7MSY/WI1Ux7TE/VelpDvQ0jXinrcT/Hvo0jRtoADRGfdD0VLMvwKVj8kQ8xI3Z+jwJI[m
[32m+[m[32m        ZLwSm6BEg4HZImqGCOulJ2n10YMT3n1jfEhu1fJXcdxe9v648fYv9Qf6Ssizk7MN34LBIXkQM2cEUKOy[m
[32m+[m[32m        TUioaRMTagUcbyXp6aC6g/dRHqqox6i9o+CX9wMBP6magAdFjpNvbyXFBZxHYkXMOip2/tcALgHU0sOQ[m
[32m+[m[32m        A4t5yXoItO7j5zl6PeKT7KO35pTLkp9fsNQEW+RLH/mEsCeqacPXQPNJzBwTAMZOSYgMGOYlJdgoPRWD[m
[32m+[m[32m        B0X2StONmnPnlfeCf479W+RT3/Rs6yIfR6smwOdAckrMHBPAZCX2pgQQCCxMTnQ9OOoBPTfoUT2Lb7OI[m
[32m+[m[32m        +vHHH//jBIBPCLun5gcQ+ivyGd8DwSlpEjNHBNBJTcAUJTZViTqNRSlJ9pKI4EGRPeo3ts9Xr/mPC3x+[m
[32m+[m[32m        h7bJx94NGrseFDlMzx5cLA6c5pX0iBmx87sPQCIoalrd2o5igdQ/UA915Dl5ndVJ+jkE3yMGRNAlJd31[m
[32m+[m[32m        kMjnxQFcOM0vMXNMAFPrRtp0CcAJzFA6S1NTrJ9Wz3hQZPfmLe3LTe+EpOSf2LHDTgqhOLbL517NW7kK[m
[32m+[m[32m        QH8tJ8MJ3DjBMWkQM8cEME2JYZwTWCJHn1Lwb1PwO9draDs3fxQK/u34Z5/Z8qvaucDnUBy75Ps/6zdy[m
[32m+[m[32m        PSTyGS1ywY0THJMGMXNMANOV2Ewl6g9m6Xoc7Krp0Zv0LLyuLS8KWfCPffyxLWze6Kw/fOa7UBwUgO6t[m
[32m+[m[32m        WrsKRDetH8ARXPnDNdcSM8cEQIKzE+v4heVpmuDRrNj1Cv5DzS+0vV9uDwXfrkDntGl1ji98FyoR7BMX[m
[32m+[m[32m        XVtcaH/Vk0J7iCO48pdvYuaYAFDkWxJAabEgJdn+pjnxP+kBiF3btLV9278KSfCPrFtniy5oWKAfi/Ub[m
[32m+[m[32m        54TigJNu4oYC0lkLYAvFWWn55jpi5ogA7tEoYLYSm6NES4spWg27pWakdbmsne0NYfCX6D69onzI0Tmh[m
[32m+[m[32m        FMGjbdvZ7WoO3hRnRdla2O/EjNj5PQy8p0YVlxLn+Ympmcm2c23wx/lMwBxevdoWN8wotg+cyzWhmJCC[m
[32m+[m[32m        o2niyl++iRmxc0QAKG1eUpTfWPKLlnYkyD3u/Qvm25Lzs0tsO9dwbTAPuIEjJ7gmZo4JADXOlwCcQE7r[m
[32m+[m[32m        5nbog/cDziullwAuykwstd1cSxrBqAngBG6c4Jg0iJmjAligRJ3C0iCIYM+0qba0cZbfNpMGaQXyIPhw[m
[32m+[m[32m        4hS/pOOYAO5VO4KiFiVFO4oc3Tu/NwD3/bP8+vXECdpFHOuYvYtT4+zrSRMCsjwNB3DhNL/EjNj53Qcg[m
[32m+[m[32m        ERS1ODnacSxtVt8ObNrkaOHareAvrZfivK1KE2E5eeA7HASCW2LmmAAWKrElEkAgsExV7O45b/nNKy92[m
[32m+[m[32m        +OrlF/WGr9iA2InvpE0eTrxEAp/xPRCckiYx80cAZ98XQCKLVf0vVaKBwvIGabZn8SK/RPDVy0NtWYZe[m
[32m+[m[32m        RxNAO0mbPMjLn+Mb+YrPgbSVmDkmABS1LDkmoFjRIN12zZhWYl5/0A0Z24cMDqhtvnwnT/Iu6bFbPuJr[m
[32m+[m[32m        oPkkZo4JIEeJLU+JCThWZCXZrimTS8TptscfsxXp8QG3Lb//5EneJTl2yzd8DAaXxKy0AsjzzqD71ARQ[m
[32m+[m[32m        Va2UAIICEbRzzOgieaX0EYCg2FSI79hQnJoAn1bKt2DZS8yIXUlHAee8N5BElqv6XyUSgoXVWZo2HvXv[m
[32m+[m[32m        AoddP+oNG1u7PGSr0nWXcBDt8pmXbMAWbPJ1uN5XJF/wKZi2EjNnBFCziq0QyavVAw4m1vAsoCGDzhHB[m
[32m+[m[32m        Gd2O/ek/HgiqLcXxe2vnBwzbvA+Cjw/4Upw0nDyHmN2n2PlfAygRqq01EkCwsVbE7Xxl2FkR/KD3DG1V[m
[32m+[m[32m        8NemxQXdlqJ8xyZsw0YOV8mX7fhQ1LWB+J2YlVQATXy9OpZEVqfE2joJICQQsdv69LST+/fblttvDo0N[m
[32m+[m[32m        JfAdG7EVm9fJ9pBwRm2tmDkigPvdAliv6dCQIS3e3tNz9kOWfwl9d9kqm0NpLwIgdmoCjuR7deyvCnp5[m
[32m+[m[32m        tHcNMNjz1jASWStFbZSawyg/HBAzLwFsKMnr4/9PJyOA9XQgWFKkjdokAYRRfjggZu7lYGoABPCccIdQ[m
[32m+[m[32m        aA3wPzohjwA6SQAb0+PsXVVpYZQfDogZsXM3AR4B3F5cAQxy1wBH7tTzAT7IUhtMOxxGueHgg+x4vS/A[m
[32m+[m[32m        tSfQuwYoVADnK+i/E+4XEMA6Lr6paoStz4rVq1Xj9dLlMMoDB8RqQ3acETsvAQxQTAsUQGX96BHAfe4O[m
[32m+[m[32m        w1kBTE6KtF0Nk/SG7fgwygEHxGpKcqQvAdym2LYX6glVhLMHAmgs/Fa4191hWCv1HEZFj9euZAeaJNuX[m
[32m+[m[32m        9RLtI019hlF2OSBGB5qk2BN1KnsLYL1i+qxwq5cAiPk5Arha39zjPnmNRwBda1a0pRnRdrhZqm3Lrmtb[m
[32m+[m[32m        NLsVRtnjYJuCf0QxIlaP1KroEcBhmnPhGbcAfumuAc4RQCP98N9CR/fJq7wF0E+K+rJRoh1tlmY76ifZ[m
[32m+[m[32m        J9oYEUbZ4YCYHL0gzbY3SrKnoirnF8BaxbS/cItwhZAtnCOAhvryv4S7hKeElRLAIZoAaoAeUtRLsdXs[m
[32m+[m[32m        QNNU+655uu1tnGKfZyXapxJCGKHjgBjsPT/FFZODKv3DFKOekRH5BbBG8XxauLkgAVTSD/WFKwV6ik8I[m
[32m+[m[32m        Oc0iKh7wFkAvJTxCjyHf0zTFjrfIsGMt0tXepNquBuofZCfaNhlTKDin1EjStcVAPZ0jfOEwSNOF4tjg[m
[32m+[m[32m        OscfXwvnEa53NUxWYUxTHNJdsSAmI+NrWB/FKJ8ADlKYhSeFG4XLhcz8NQACyBJoH6gm+ggLJYB9+QVA[m
[32m+[m[32m        Bi/EVLVPGya6Mj7REmTacf091iLTjumzC62yvJBtx1sJF9bzQn07fhFoYCdag4Z24mIv/KKRnXChsQsn[m
[32m+[m[32m        Lzn/J7TR5zZN7OSloGkuLmvmwqm2F/hAczt1eXM7fXmLXLRrmYsrQKuf/m+X+zvnnmrrQd70PPmcvMyd[m
[32m+[m[32m        LzZgCzZ52+i2O9cHNzz+4auA77kQDxcCDz/Z4s4DN48eXl1cZ9qJVgJ/xfunappfVEz6qrOeXwAUYsVy[m
[32m+[m[32m        mfC4cL1wmS8BROjLdPePN+hvN2GOmoBvEEAXdxNADUAGjAr+JYxPrGVblPkhVT8nL8wUsuzURSDbjXr6[m
[32m+[m[32m        K7Sun4uLG9hp8IuGbjSy05e40aaxnRa+vxSc/xMua2Lfu9DUvm/b1M60bWZnLgcX2Jl2oHkurmhhP4Bf[m
[32m+[m[32m        gpY/ob0+t2/lwo+/ujAXV17kRmv78SrB87/nd/31XJMnLdJVHuR15gp3vtiALdiEbbIRO132YrcE8pM/[m
[32m+[m[32m        8s3t5+k2Xr6f5aOBi6NTF7v5gjP4cyGX05PiF54PqeR/LO4nKAb9ale2JxSPPAJQzNzzAPsUy0VCT+HP[m
[32m+[m[32m        Qht3rCn0Z4+K+pQkXCz8SegsvJldscL2GySAh30IgAzJuL86hy/r9SQTNVcwLy3aFqTH2EJhUYa2Z2fE[m
[32m+[m[32m        WU5mnC0Tlms2cYWwKkubI7K1Rq7RxLp6dW29eq4b6ifaJuEd4b0GSfa+8IGalc3CRw1T7GPhk0apUnqq[m
[32m+[m[32m        fdY4zT4Xtp2fbl8K28/PsB1NMmxnk0zb1TTTvhb2NM2yb5pl2b5mur/vgmw7cEE9ibSeHWle344K37Zo[m
[32m+[m[32m        YN8Jx1qqFAp8Bkdb1Hedw7kHdQ3X7hP2Kq09wtdKd7fS36W8yPMrARu+ELAJ27bKRmzF5i3CZlXVH8oP[m
[32m+[m[32m        /MG3dwX83ChskO/4v1Y8rBYfq8TLSvEDT8sy422peIPDxeISPuH27fRom5xU24arKX62ThV7Wvw/6UMA[m
[32m+[m[32m        FFpipxjuojALXYRr3TFO0V8KfZ4jTv+1EFgP6CSMjqlw3gfXV61kD9TI7QR61wAeAWDAMzJkQFQVGxRV[m
[32m+[m[32m        VY9Kr6rXo1c1Xl7MGyxHCLzAiPfY8Ax7HmXuefbwJD3SlGfl8VQrnmvjeRDFXN3X9rb7VrRF7Md3bfWO[m
[32m+[m[32m        ce1MWqVlTla61mmJltXJd4T3NUX9gSZomJ/4WENUOqWf6fVtX+jevu3ql+xgs6mwJzvZvhH26yaPg8Jh[m
[32m+[m[32m        4Uj9VNfnA8Je/cY5u9WG79T5XEsanyutrUrzY2GL8vhQYEaQtREWyFj2xSaWYNmIsUxgTx43fLA/33Ov[m
[32m+[m[32m        nue+fc8jXPB9ssCjXXnAM08V51n/vO2DFz/x+jdeAslrYHkb+BDxOlgYKJ7hG94LEsCDNSKM2CmGnyiW[m
[32m+[m[32m        UwQm+IhtKyFRoNDnOWrrPyaDfi3QD3ihgtqOa6pEfN+hWkRYAOVMAMSM2CmGzAG8JjAJxCivqRCTP/j8[m
[32m+[m[32m        X03IFNoKtBU9hGnNIyp+jZIYCoZrgPJRAzxSK7f0K3Z7FcO3hX8JfxHaCYz2avoSAG0CVcNFAotCNAPD[m
[32m+[m[32m        Iiuct+5aKenu6hpeKGFPJzDcBJTNJqC3YkSsFLMzit17iuEYga3+7Pimj5cq5JkE8haDpxlgOMiQgZ7j[m
[32m+[m[32m        VI0GvkJRf1O7EhZA2e4D/N3d9jeJqLhbsZsr9BNuEpjj8VT/ahl8H6wQpblrAToMdwovqGpYeGXliG9v[m
[32m+[m[32m        VK/ynzVzh4HhGqDs1QBdalayG1VQFavvFLMVih1tP2s7fxB+ITDXU72g4Hu+pxZguZC+wDXu6mOErlrx[m
[32m+[m[32m        m8oRx8igszJ6IjJ3GBgeBZSNUcBD7uArRscVK1b/xgoM/RjWM//PWg+dvwJLv0cA9AU4kf0BdBr+KDwk[m
[32m+[m[32m        jEIE1AQ0B/dUr2SPSQRhAYRWAH0VA2JBTCj57uBPULzoxF8ntBcuEBKEAtv+/LUCJ9IhbOZOABE8LIyQ[m
[32m+[m[32m        OhapT7CDjiGZdlLmj9RiJopJoSr2rManz2mcOkjj1ec1dn1BGBrNWJYxrV5qLDDG/Xds7osox+idu2+4[m
[32m+[m[32m        XnESaROFyQl6RJrAw5MZL89yP59wbmKUe25ATypxPauAsbZuWE1m7J07Bl/r3r69MTVe8wNsYUvQ/ECC[m
[32m+[m[32m        bU5nCTt35W5rBuP63PH9l66xvtYN9HmbwG+cw7kf6RquJQ3G+xtd27zjXfMPa1LiXHmuELjLN0fApoW6[m
[32m+[m[32m        JZsx/1xhjuzlYY8z69ZxzXFMFabIr0mucX9k7rhfvvPO4VHi4TXxwZvHR4gf5k9eEmcvCkPE32Ahd+xf[m
[32m+[m[32m        1TX2f7J2FXtUnMM9MaDDR5vvrvYp+Z7gM6RvKdDxY5RXooO2ghkjJodQESJgw+hQYYZ6mBs1zNjDWBMj[m
[32m+[m[32m        bhBuFm6pdi5u1XfeuE3//4TK+lzZbs+HO/S/C9rX5kEHfc4P9r15g/fl3lW9ylncrc/50VHfnYU2Tno+[m
[32m+[m[32m        +zrXOy0+58+P//Pb5G2zx4/8/uHzT8jlIz9P/J+fTzimGYZzuGeo5+7t0+Gjzafap+QTfEZ0GUKkUGTV[m
[32m+[m[32m        70sdHhFQE7CKRMewg9BbeFWYqVRXabbpI0057lDNsJfFB+EgS8nsJ/DCEfanFYKjbEP/maEoTrz5Owi3[m
[32m+[m[32m        4mcf07vM8LkneRjnM9Sjt0+HjzafAtvSK/jnzPr5CnZB39XQD6wT0CdgIYFtYyiMeYJewnBhvDBLmC/k[m
[32m+[m[32m        CPRAVwtsRGAmCtAxAWxRzo+N+u7nCl988B1cwRscsp7Pki6reizsMLfP9C4lnkkexvkM9ejt0+Gjzafa[m
[32m+[m[32m        p+T7FXxd7zoYHsYKDCMuFOgcsn3sWnfG7CKio9hdYCmZ/QQokk0I7ERhPxpgZyrgJgUPBurzzx3efHg4[m
[32m+[m[32m        gi+2ccEfPLKez5IuczNU88ztM73LDB+TPIzzGerR26fDR5tfqmpf1/k8GB3UEpgnIBMWFVhbJmPEgPro[m
[32m+[m[32m        J1A7sKSMItmBwroChgJ2pbLhxBt36P8w8nICTx7O4A8e2czB5BzT9NcKNMfM7VMYmeFjkocCygiu2L19[m
[32m+[m[32m        nVvio6quqCPQLJAhC0jNBToclwiXCswh0GegOmJWEbR3g1uTfAEh/dxQEBceruANDgF8UuBohgk4BZCg[m
[32m+[m[32m        M7dPdU/g6bM5WuqVns+DTNhQQP8gSqDKSRaoHeh1ZgqIg82HgIklDzA4jMI58ObLwyGcAjbuMDpjmE7Q[m
[32m+[m[32m        WdihxAcl8IUJgiYCUQAM8gX6EmEUj4OCOIRfuHakc1dQQMPf/0wY+H+oWaALQ6MMgAAAAABJRU5ErkJg[m
[32m+[m[32m        gg==[m
[32m+[m[32m</value>[m
[32m+[m[32m  </data>[m
[32m+[m[32m  <data name="btnAdicionarProduto.BackgroundImage" type="System.Drawing.Bitmap, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[32m+[m[32m    <value>[m
[32m+[m[32m        iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8[m
[32m+[m[32m        YQUAAB8bSURBVHhe7Z0HeBTl+sU3IaGHXkJCFVR6CB0EBQsKWLFgxQIWbFeuV/967SICisK1I0pTUVBB[m
[32m+[m[32m        RJDee7FRpPeOIMWO+v7Pb7LD3YSENrs4e919nvNsyu73fXPOmfdr78wEArFXjIEwMRCncuKFXEJCEIl6[m
[32m+[m[32m        z4rc+lsMR+YgO95cTuEXnv/yF41AyIJCMSFZKCtUFCoLpwqnCacLVYVqIaiun7NDDf3974KcOHB5gjMA[m
[32m+[m[32m        f/BYRagklBfKCCWEQkJeAVOctBdOLCCUFMoFG1dT7/WExkJzoYVwjtBKOF+4QGgttAmird7BhUfARfrf[m
[32m+[m[32m        /xqOdLwuJy5H8AVv8HeecLZwltBUaCCkCRikosDJhxk4ISP2IsTjNirDjTQAwVsGG3qx3q8QrhFuEG4W[m
[32m+[m[32m        Ogm3CbcLdwidhTuFu0Jwt37OCffof/8rONJxhvIBP/AEX/B2q9BRuFG4XmgvtBMwzLnCGQInH2bghMQI[m
[32m+[m[32m        YY8IFEjBhPjaAi7ElZcIVwu3BIV6UO+PCk8J3YQewnNCL+EF4UWhdxB99O7iP/r5aHhJn4k2HO2Y+H8o[m
[32m+[m[32m        Dy438ARfzwf56673rsITwsNCF4ETC0NcLhA1iA4Yge6XLplxRFhehJXiAmc9FRDWceBNwj8FxH1LGCqM[m
[32m+[m[32m        EsYLU4QZwixhjjBXmCfMD2KB3l0s1M9/d4Ty4XIEX/A2O8jjVL1PFMYIHwuDhZeFRwTMcJVAVCAiMI4g[m
[32m+[m[32m        UucTPL0Qv5TAIKSRQH90nYDwuHVIIE6NKpj4VaB0/nWBcknbhV3CbmGP8L2wNwT79LOL/fo5hswchPIT[m
[32m+[m[32m        yhs8winc7hDXG8T5YnE/XRqMEN4QiLxEYqIy4zDGZaleTOCKj5sI+biLfp2wPiSQL2FmoELS5kCD0gcD[m
[32m+[m[32m        TVMsrmWq5WpT3hLaBnFhOUsMQW79HIo8F5WzzChreS/KGfkuLmvHgvz6XCRxLG1wPnOEY8mj/2U9/qz8[m
[32m+[m[32m        hHLHzwltAdyWc7iGc4f7CknbpAURZLhARGCscZnQQmCchgnyH28YoM8n7HPmu+ITZnoF4uM+kwvXBRom[m
[32m+[m[32m        HwycmWK5Op1mCc+mW9yrjSxX/6aWMCCIgU0sMQS59XMo8gxqYpnR2PIOyhn5Bje2Y0F+fS6SOJY2OJ85[m
[32m+[m[32m        wrHk0f+yHn9WfkK54+eEAQBumzhcJ4rzBHGPBo4W5ZI2Shu6iDeDEdo1AZGAaeMxzxAY7TPgo88n7HPm[m
[32m+[m[32m        I/4rgdzxEwK1SuwLNJfwnatarn5qzDvNYvgLOUADtEATaXNAGs2UVgOF+4ORoJneieKc0Mc0O2Cqx2if[m
[32m+[m[32m        AR99PmG/lyN+WskDgZZlLVfXOhb/7hlCsxh8wcEZliBN0EYa/Rg0AZGA6SUnMNN1FpFYtDvii0UeRo9M[m
[32m+[m[32m        9RjtM+Dr4YT9WiX2U0Fi7/qW8J4qjMF3HCT2qZ9hAiJBfNwkafdq8ARmUamuwDpBniM5gBU+Qj/9PlM9[m
[32m+[m[32m        RvtDnD6/WYolPFPHcg85IwYfc5AojdAqUDZpk7QbKTwuXCkwM2BZubBAN3/Yi7V9lncZObLIc5PQ2xnt[m
[32m+[m[32m        a5BBP5NnSNMYooADZ0zAwDBfwiJp+LbAGI5l5XSBASGR/rAXo0RCBP0Fc8mMs5+p3pmplrd/I8v3ftMY[m
[32m+[m[32m        ooEDaYVm0m67NPxUeEy4VCCyMxbIdlrIAIFpH2v7LO/2chZ5NNdkqpf/gyYxRBEHzhSRdYI4ZyWxr8Ae[m
[32m+[m[32m        DRtK7BkUyS4CsH7MnJFQwYrSW84KnxYc8vaoY0k6+BiihwM0cxaLCiYuk5bvC2wqoS0DfFZ3M40D+IXR[m
[32m+[m[32m        P1M/dvXYgRvqLO+2SLUCfetboaGNY4giDtAM7aQhg0H2aOjS0RaNU4RMawIMAJn70/+zpcuu3ijW9uNa[m
[32m+[m[32m        l7dC7zS0IsMaxxBFHKAZ2knDndKSDbp/C6wOsrjHWC/TQBA3VBSYKtBXsLEwns2HeK0/F32voRX7sFEM[m
[32m+[m[32m        UcRB0fcbWq4LHQPslpZTBbaSmQ42ESpkNQBuYB+5hUAyB/v5U/hy/kvLWpkP61vxjxr5HhVH1rNXthaJ[m
[32m+[m[32m        KKgjGrhAM7RzdmUDAZaHyScgmYTtYk72TPkCGIAcPtK4WPolmWMGXy54WVkr93E9K/lRQ9+j9udp9uLG[m
[32m+[m[32m        YvbS5qL2+rbC9taOQjZoV0EbsqeAfbg3n32yP6+N/iG3jf850ab8mstmHoy3uX/E2azf42yqfp/wc4KN[m
[32m+[m[32m        +TG3jdyfxz7S59/fk98Gf1fQ+u9MsjdU3itbilja2Nq+5wGtyg+vZ0ntHAN8Ly3JyXg2GN3ZG2AqmMkA[m
[32m+[m[32m        /MIUkOVf0rjY8p3FlwuqkPLD61qpjxv6HojTc31x672pmCNW3+2FbIDEe3d3ARv2fX4bEWIABEf4+X8G[m
[32m+[m[32m        bI7ep/2WyyaGGADDDNH3BspA/VTOq4osfWSsOqojGrioIM3QzsnFyEjGQVOW9s8UTsnOACwTsvnDqhFp[m
[32m+[m[32m        XHP4MoVUHFHXkoc38D3Sx6bba+vrWb9NdW3glnR7d1sdG7ojzYbvqmWf7q5pn39f3Sbsr2ZTDlS1mT+d[m
[32m+[m[32m        bvN+OdUW/VrF5ut91k+n2bQfqtpE/X/s3uo2ak8NG/5dLRu2o7a9ty1N5dWxtzalW13VEQ1coFmIAcgy[m
[32m+[m[32m        6imQQkbqWLYGYIGAeSKJiKR5zXUNUEmFpYxo4Hukj25lazeutE3b1trWnett266Ntv27TQ527N5kO3dv[m
[32m+[m[32m        DoF+3xOC4P/5HNj+3Ubn+5SzeftaW795la1at8zSP2vlex7QCs2yGID8QsZ3GIDx3mFdAHvG7BqRjUpC[m
[32m+[m[32m        4jzXAJU/SbfUEfV9j/TRF9jWrVttz549tn//fvvxxx/tp59+sp9//tl++eWXYwKfBXyP7x84cMC+//57[m
[32m+[m[32m        27Fjh61fv14GON/3PKAVmgUNsE9akjHkGqDFkQxAdikpyWSlzid/j4HEqSPTrdwn9X2PemPOt+3btzvi[m
[32m+[m[32m        I/hvv/1mv//+u/3xxx/HDb538OBBpxxMsGvXLtuwYYPVU5SJBi7QLDgIdA1AVO8guAbIlCHEL0QADEBe[m
[32m+[m[32m        Ogmfhwxw2sg6VkHTH7+jvgywc+dO58xFPIQ/0deff/5pgHKIBrt377aNGzda/TGtfM8DOqFZiAHIusYA[m
[32m+[m[32m        XFvAXg9b/ocZgEuVyB4hiwQDLHAjQNVP61glFep3NPy8lXOmIhhnMAJ6efF9yiEK0K1gAOrwOw+0D82y[m
[32m+[m[32m        GIBu/ZgN0CdogP0UUm1Ump0yqq7v0WjseY4B6MO9nP2hpqGcX3/91RkHYADqiAYu0OxEDMC1a0SATAao[m
[32m+[m[32m        rsKqyAB+R5MIGIAoEGoA6vA7D7QPzU7UAOSVY4CFXLhRSBGg5mdpdtpn6b5H03HhjwBZDUAd0cAFmqGd[m
[32m+[m[32m        cyFOxpVXDOxvOtoYgAiAAbhm7ZABao+ubaePTvc9mo0/N+xdQFYDNBt3ru95QCs0CzEAqWEnaoBUS1Nh[m
[32m+[m[32m        1UbX8T2anwQDUEc0cIFmhdopH4BLzwKBUAOQFZTtLKCG/pFNBEi19DG1rMaYOr7HWRPOiXgEOGv8Ob7n[m
[32m+[m[32m        Aa3QLDwGuDzV6n5ey2pqp83vaDEx8gZoIZP5nQfah2aFpJ33CKBC6o2tabXHpvkeZ088O+IRgDqigQs0[m
[32m+[m[32m        OxEDcEuWTIPAwjJAAxVWZ1xt3+OcSZE3AHVEAxdohnbHGwEwAAmhh2YBFNJoXA1LlwH8jvMmt4x4BDhv[m
[32m+[m[32m        Ukvf84BOaBY2AzRWYfXG1/I9zj8JBmilOqKBCzQLmwGajq9uDSbU8j0umBL5CEAd0cAFmnkxADdjchaC[m
[32m+[m[32m        KOSMCdWt4cSavkfrqS0i3gVQRzRwgWZhM0DzidWssQzgd7SdFjkD7N2719kMaisD+J0H2odmYTFAEUWA[m
[32m+[m[32m        M1VY00k1PKH55OrWcmq1iOLymc2dCMD2bbh2A1kKJrHENUA71RHp44Arr3yjGdqd6CzgUBdAIS0mVbNm[m
[32m+[m[32m        k2t4QpelqTZIKdakWYN3giBj970gSN8GpGODD4CyeYcKZPUO25vfSe8GpG2Dj/eBvDZc+GxvxYgbgDrI[m
[32m+[m[32m        LqY+QP1uW9y2DVO7aC/tBhyDe0zuMbrHzPEDlw+4gSuvfKNZ2AzQclJVw5VewPp5QPfSSdSdRQroQtOi[m
[32m+[m[32m        wxo56dXkr1X6tK6zw8YKljOFmVBTBChiTKtm58843S6afaq1m1vF2s8/xW5YVMk6flnB7vimnN2zpKzd[m
[32m+[m[32m        vyzFHl6RbI+vKm0vrq1p3333XUQiwL59+2zTpk32yobq1m1dSXtidSn798pke2B5GfuHBOu8uJx1+qq8[m
[32m+[m[32m        3biool2z4BS7fF5lu1jtbj3zdDtnmvibUt3pOphB1NJxVtWGzSk6btLLSn/cwLnqiotvuQdDdS3leuHa[m
[32m+[m[32m        ibbSLGwGOGdKVTtLB+AFHNTJMACZO+zfe80GcpNC3LQw8gI3b958UgzAWr4XrvkumoXHAFek2rlTTvfc[m
[32m+[m[32m        77WZ3NZajbnP2oz9h108/l5rN/Eeu2ry3XbN1Lvshul32s0zOtuts+6wznNus3vm3mr3ze9k/1rY0R5a[m
[32m+[m[32m        dIs9+uXN9uTXN1rXxR2s+5Ib7Pll11vv5dfZSyuutddWXWNvrrna+q9rb8M23u4kcJLHFy4DYATGE6SZ[m
[32m+[m[32m        kW84fFMne2fDVTZA9fVb095eX321vbzyWuuj9vT69nrrsfQG66Z20t7HvrrJHv7iZntgUUfrsqCT3Tvv[m
[32m+[m[32m        VrtTx3fb7NvtlpmdrcP0znatjv+qyXeJj7vtkvH3iJ97rO3kNp75RrMi0s77GECFnDf1dDtb4dgLXv6m[m
[32m+[m[32m        u23ZssVJr4ZIQjWJll7BGQ8YpCF+OM/+rFGAZFO6AtLDqNNr2/k+PDBwhRdS2plpvPRVN09coxOahcUA[m
[32m+[m[32m        RWWA86edZudOr+oJry3p4RwoQv3www+H8vWPJ2c/p9x+RGek7mYCh/PsDzUBCaLUQ33Hep1BTp8Lvf4A[m
[32m+[m[32m        PjAWZuAkefnrZz1xjVZohnaeIwCFtFZh56lQL3h9aU/nrOEsgkDEOtGc/dA8fzd92333kgV8tO9mretE[m
[32m+[m[32m        rjfI+h14gA+6GE6Obdu22SsygBeu+S6ahc0Abaaf6ozGvaDvsp7OAXJGhCNl+2hiRcv/MZWbeUwXxoUt[m
[32m+[m[32m        r33TzRPX6IRmYTPAhSqM6YwXvCkDEOYi0UdHi9g5tdNdbKIrYCyAAbxwzXfRLEwGSLGLZpxqbWad5gn9[m
[32m+[m[32m        vs0wAH1oJProaDaBO9Wke8QAry/u5olrtEKzolfoJlHHmRPo5gMcWgmkkEtmVrGLKNQD3pIBuGYvZoDD[m
[32m+[m[32m        rRpqAGZIb8gAXrjmu2gWFgMUkwEuVWGsannB28t7xAxwhDDFYJAIgAH6ygBeuOa7aIZ2niMAhbSbVdku[m
[32m+[m[32m        naNCPaB/zABH7KVCDfDmkmc8cY1OaBY2A1wxu7KzFu8FA1bEIsCRHJDVAF645rtoFjYDXDlHmxsq1Ati[m
[32m+[m[32m        BshZ/qxjgH5Ln/HENTqhWdgM0F6FXandLS8YuKJ7bBaQgweyGuAtGcAL13wXzcJjgCtTrP3cSnbV/Mqe[m
[32m+[m[32m        EDPA0SOAuw7w1tKunrhGKzQrJu08DwKLq5Br51Wyq7XH7QWDFAFYCWQhKFzZOtE89w9te9aFoP4ygBeu[m
[32m+[m[32m        +S6aoV1YDHDdvIp2LYV6wOAVzzq7aGyCuNu1sQUhcxbF3LuQsE7CUnD/ZV09cY1OaBY2A1w/v6Jdt7CS[m
[32m+[m[32m        Jwxe0c3Z7WK9GxO4G0KYwd0YgogTBVElkhtCbtnUc6JtdL/nHjPvLIyxP0L45wRhS3jAsqc9cY1WaBY2[m
[32m+[m[32m        A3RYUNFJxfKCwSuecZY52RFkSRgjcNAsfngBu2jAvSuYa4Rwdw+U64rl1uml3XyX44cHznzEZ7ucrKOB[m
[32m+[m[32m        MoAXrvkumoXNADcuqGAdvqjoCYOWP+3k1OFwwhxmcJNDWP3yAogjujDGCOf9gUJzAYhYiEUSB/V5aW/o[m
[32m+[m[32m        d+EAPtgGRnxuRTdw2VOeuEYrNAubAW5eWMFuVqFe0HvJrTZ+5fs2YeUHNmFVBiaGDUNt4uqhNmPdSCe6[m
[32m+[m[32m        hDMlzO2jOWMRaurqEWq36gtT210uHF7EDxy9uKSTJ64dnaRZWAxQQiPJWxaWt1uUiet33Pd1A6eLCeeW[m
[32m+[m[32m        sztHJ0wTwajD7zw47ZNmaOd5FkAhnRaVV8pzBd/jn9/Uj2haOPl6XVRHNHCBZmEzwG1flLPbvi7ve9y/[m
[32m+[m[32m        uF7ELwyhjmjgAs3CZoDbvyxnt8sAfse/ggYI50DQvUuYe2kYdfidB6d90ixsBuj8ZVnrrCtx/I4Hl9SN[m
[32m+[m[32m        2NXBrgEeXFzX9zw4OkmzsBngzq/K2p269Mnv+L8IGsC9VSx1+J0Hp33SLCwGKHlVGbv761S7W9fh+R0P[m
[32m+[m[32m        L41cBHANQB1+58FpnzRDO8+zAAq5R4Xdq0L9jkeWpUesC3AN8G/V4XceaB+ahc0A936T6lwB63c8ehIM[m
[32m+[m[32m        QB1+54H2oVnYDHDf4hTrsizV93js2zoRjwDUEQ1coFnYDNBFhd3/rf/xxPLIG4A6ooELNAubAe5fUsYe[m
[32m+[m[32m        kAH8jqdWpEU8Ajy1PM33PKATmoXFAKU0CHxgaRl7UHfC8DuePgkGoA6/80D70AztPM8CKOTBpcn20Ioy[m
[32m+[m[32m        vkfXlZGPAF1lgGjgAs3CZoCHliU798PxO7qtqh3xLqDbytq+5wGd0CxsBnj429L2yKpk36P7STAAdUQD[m
[32m+[m[32m        F2gWNgM8sry0Paa7cPkdPVbXingEoA6/80D70CxsBnhUhT2x2v94bk34DZD1sXE9VUc0cIFmYTFAaQ0C[m
[32m+[m[32m        H19Ryp5c4388v6ZmWB8c6d4hjIRTdymYOqKBCzRDuxOdBRx6XgCFPLGylD0tA/gdvXSjyNBHx3q97sBN[m
[32m+[m[32m        ByO/wH1yaC8ZwO880D40C48B2pexp1aVtGd0d0y/48V1NZxMY/d2ce5NqLLe3OlYfnfz/8kvJCGUrGMy[m
[32m+[m[32m        dqnD7zzQPjQrLe28RwAV8rQK4/aofkdviUN6NckbiEbodm8hR06/eyu50Aszsl6k4X7OvRWce29AIgsG[m
[32m+[m[32m        oA6/80D70OxEDZDpmUEU8szqEtZ9vf/xn/XVndx68vbpszEC2bwuiAxHg/tZ0ssBoZ+zH2OtX7/eqCMa[m
[32m+[m[32m        uECzEzHAYc8NpJBuKqynDOB3vKQbOXOWYgIuQEE0QD7/8cL9LuVQHhnBa9euNerwOw+0D83CYoDk9snW[m
[32m+[m[32m        fU1xe26D//HChhR7b0O7iII6ooELNEO74x0DHBYBKKSnCuu1MYZo4gDNjtcA1bN7dCyFPLe2mL24KYZo[m
[32m+[m[32m        4gDNwmaAXuuKWZ/NMUQTB2gWNACPjz/up4f3cZ8aRiEvrCtq/9kcQzRxgGYhBlh4PI+Pv0sfxgALGECU[m
[32m+[m[32m        vKKMPb+mqL28JYZo4gDN0E4aEgEwwAvCTULLnB4fzxigrZDJACUuL2OvrC9sr24tEkMUcYBmaJfFADce[m
[32m+[m[32m        qwF6ByPAvkIXp9jAzfntNR18DNHDAZqh3fEYoJpEbyPcKWCA+c6Xzy1nr6xKsgG7kuyN7YVjiAIO0OrV[m
[32m+[m[32m        VQUN7UIM0Eua5hgBEvVP1wCdgwOGQwa4YXo5G/dTor25vZD1FQEx+JcDNEKrDjMk/uEG6CBtWwiVhdzC[m
[32m+[m[32m        oRcGqCq0Fu4IDhjmyT17KaTk4Ho26/d450GJ/XYUisHHHKARWiW/UzfUAAuk6fPCDSEGQPPDDHCB/nJ7[m
[32m+[m[32m        8MNzXQPE9W1ijyrRcN4fAeeJmG/vLBSDDzlAGzQiJSzhzcauAfY63Xkg8FzQAGcFI8BhBjhd/zhfuDX4[m
[32m+[m[32m        4dmhBiirJ3zymFQq4NGpA3YmWf8YfMEBWqAJ2hABKoysl9UA86RpT+F64UzhFOEwA5ymP54ndBS6C7Nk[m
[32m+[m[32m        gO/pAogA+d9vak0m1rBpv+WyBX8GbMLPCc5zfgdpwBHDX8cBGqAFmqANzxxOGto4qwHmSs8ewnU5GSBB[m
[32m+[m[32m        /6ginC0wUuwqTJUBdocaoKieb3uOHko4VoOMhRZwKp38S4KNlPt4SLL7YOTYe8ZDsCMFuIZzuEcDtECT[m
[32m+[m[32m        VnpcXMmPGmY1wB7nZA4EuglXC82EilkjAAaoJNA/ECaeECbKALuyGiB1RAM7Q4+S52nXVOxivhoy9484[m
[32m+[m[32m        mxNDRDmAY7gO5Z6nj5+p5wWX14OoszHAbmk5XXhauEpomp0BcumP5YP/bK/3h4UxMsAOxwBvZHQBRAAM[m
[32m+[m[32m        UHlUXas5Js066EnZg3YVtKm/5srUoNDGxX7OLFa4+IBzHjV/8xcVLG1sbefp6zkYYJe0nCQ8KlwuNA5q[m
[32m+[m[32m        zUl/6BWvn8oIDYR2Qhfh40Dp/BsCzVMt7qWGhxmAp4HXHVfLiQaXzqlidy0u6zxSnYTEHspIeWEju4fs[m
[32m+[m[32m        HxSx17cVdtYQ3tZgZaAMQ/QgPH6gUPbh3nwaXOa1TxTSPj2Qxz77IY+N+TG3E9LGC/RvkxTqJuuAOehp[m
[32m+[m[32m        v8XbjIPxNlNgujP79zgHRB7ODgZCgLPEBWFyAV1WSMTKSQj3c3wntAy3XOpwIl2w3ll6py20abraRhun[m
[32m+[m[32m        CLR5oto+/udEZ17+uY5p9A+5bZSOceT+PM6g7SMdO+H8/T35jbOYk4mBNVPtN8QZy+9sQLENTRLKs+tK[m
[32m+[m[32m        2FPK+L13SarzRBHO+gYTajqPoz/MAC83NLSThluckzkQeEC4NKhxqt456TO9Sui3NIH9gNuEwYGCiYsD[m
[32m+[m[32m        TVMs7rE6ORqgqQzQYmo1u0BPq+RpVTyt4nrdrbqj7lZ5u+5Wxe1KuJ7+oRXJ9rguLum6tqSTU9dLBuHg[m
[32m+[m[32m        OEgWljAHg0mI+EDmwBjDNev45EBeh7TRjilyO4ROdAyR4JA9XQMfxxAyA4Zwu6B5mOHPjHAJTtwAGeW4[m
[32m+[m[32m        3dvsYD2O4AcxJIJnmHRCUGwMjJExdKjQQ3RsnLWM2hGZE+MlbbIhcE8JTDIn1xw8oik3V/jepzt9cMOn[m
[32m+[m[32m        W78q79w7+Or5p9hlEr6tHgt3zrSq1nzyEQzweJqhnTRcIS0/EljgQ9t0IVngpM/0KqTfWAw6V2Ac8HIg[m
[32m+[m[32m        Tn1Hg9IH466rEjNAcGwTLQaIv76KoZ00ZA2gv8AiELO8GkKxrOLze16honCGQF/xiDAiUCFpW6BZiuXr[m
[32m+[m[32m        2yDTGMDtAmIRwH8RoGC/+oZmgfJJO6XhOOEZ4QqhucBsr0B2BqBPIDTUE9gUoht4I5AvYX6gYfLBhI56[m
[32m+[m[32m        FOnQ/w4CYwbwaRfwYUNLlFaBBsm/S7uvpeE7Aqn+5HsyxisrZFoECjWD2w0wHWTKwMhxuGYDGwNnpFiB[m
[32m+[m[32m        J2semgXEDOBPAyQ9WcPQKlA2aau0+1x4VrhGYI3HDf9x2UUA/sYOUblgFGDAcIvwciA+bmKgVokDcWel[m
[32m+[m[32m        WokXaznTwJgB/GeAUr1rGhoFapb4QZrNlHb0/eztXCw0FFjryZeT+O7fiQJsFzIWuCQYPt4M5I6fGUgr[m
[32m+[m[32m        +WNci1Qr9Uw1q/5ZmjMNjI0BfDAGGFPbkrtVNbSRRj9JK3b/3hWY+jGtZ/2fvR4Gfzme/a4BGAvwQfID[m
[32m+[m[32m        GDRcJvxTGOiYQJGAEFPkjlOs5tAaMQP8xdPA2sOqW9E7KmWEfc78DPE/EBjEXym0EGoJpYQc+/6sUYEP[m
[32m+[m[32m        MiCsGSwAE9wvvKnQMkn9yyYGhnEaaRbrWMGq9a5szT4+1Vp9XsUunKDHzE6qaNdMLW8kknScVdbumJNi[m
[32m+[m[32m        d89Lti4LS9uDX5S0h78saY9/XdyeXlzMnl1a1J5bVsReWF7Y+qwo5GQfvb66oPVdW8DeWpffBqzPZ4M2[m
[32m+[m[32m        5LN3Nua19zbltQ8257FhW3Lbh1tz28dbE234tkQbsU37EdsT7FNh1I5cDkbv/C/G7Iy3Mbvi7fNjBJ91[m
[32m+[m[32m        viO45XwWLPfTHRl1fSKMUN204SO1hTYNVduGbMpj76qtgzfktYFq+9s6hn46ljfWFHSydF5amWS9dZzP[m
[32m+[m[32m        f1vYui8tYl2XFLMnvyluj3xVwv5P3Ny/UAs985Ptzrll7NbZqXbjjLJ27bTyduWUinbJxErWelxlO2t4[m
[32m+[m[32m        FavRp7IV71TB0MAZ8NHnZ4R9znxXfKb0dQQGfszyjutFX8GKEYtDuAgTkDD6qjBSI8xFmiJud+aaWnCI[m
[32m+[m[32m        PzPF8pyfankv0JQRtE6x/EKBIAq2KWMgKYhCei/UNgOF2yY7KAIuzEDRLCim3x1cVNpB8RxQQn+PJHKq[m
[32m+[m[32m        l787bbsQZLQ19Bjc4+IY3ePl3eXA5cXlqUDrMg53cAjgFG7hGK6dRR64Z6qXMdpnwEefT9jnzEd8ZnQV[m
[32m+[m[32m        hCThqKE/O3e4JiASsIvEwPBm4XHhbeFTFTtbq03LtOS4SbOFnc4OYrmkPc5WMhlF/8U+Jz8tZ+x3rmP7[m
[32m+[m[32m        e+FonITyB6dwu8tZ3mWFL2ORh3k+Uz1G+wz46PM5YeuEiH/Yql92Yuf0t/z6B/sEjAnYSCBtDIexTvCY[m
[32m+[m[32m        0Fd4XxgljBemCoSiOQKJCDQS0DcBctSzgitX/q7Ijg/+BlfwBofs57Oly64eGzus7bO8yxnPIg/zfKZ6[m
[32m+[m[32m        jPYZ8NHnE/Y58z2Jr+87L6aHxQWmEXUFBoekj10arJgsIgaK/xbYSiafAEeShEAmCvlogMxUwEUKLl7U[m
[32m+[m[32m        z393hPLhcgRfpHHBHzyyn8+WLmszhHnW9lneZYWPRR7m+Uz1GO0z4KPPP6Gwr+9l+2J2UFBgnYBK2FRg[m
[32m+[m[32m        b5mKMQPuY5xAdGBLGUeSgcK+Ag0FZKWScBKKm/R7DJk5gSeXM/iDR5I5WJxjmf5Sge6YtX1ORlb4WOTh[m
[32m+[m[32m        BGUGd8yjfX32uF959I3CAt0CFbKBVFtgwNFIaCKwhsCYgXDEqiJoEQSXJmUHjPR3Q05cuFzBGxwC+OSE[m
[32m+[m[32m        oxtGcE5ARGdtn3CP8IzZwnrWq7xsX1RCQgHjgyICISdFIDow6qwoYA6SDwELSy5ocAxH5iCUL5dDOAUk[m
[32m+[m[32m        7jA7Y5qO6GzscMafFOGPZAi6CEwBaFB2YCwRw7FxkBOH8AvXYRnc5SRo7O9/Ewb+H28CnE70a6ikAAAA[m
[32m+[m[32m        AElFTkSuQmCC[m
 </value>[m
   </data>[m
   <data name="$this.Icon" type="System.Drawing.Icon, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.Designer.cs b/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.Designer.cs[m
[1mdeleted file mode 100644[m
[1mindex 8be81ea..0000000[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.Designer.cs[m
[1m+++ /dev/null[m
[36m@@ -1,306 +0,0 @@[m
[31m-﻿namespace Softex.Residencia.Projeto.UI.Administrator[m
[31m-{[m
[31m-    partial class FrmTestProduto[m
[31m-    {[m
[31m-        /// <summary>[m
[31m-        /// Required designer variable.[m
[31m-        /// </summary>[m
[31m-        private System.ComponentModel.IContainer components = null;[m
[31m-[m
[31m-        /// <summary>[m
[31m-        /// Clean up any resources being used.[m
[31m-        /// </summary>[m
[31m-        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>[m
[31m-        protected override void Dispose(bool disposing)[m
[31m-        {[m
[31m-            if (disposing && (components != null))[m
[31m-            {[m
[31m-                components.Dispose();[m
[31m-            }[m
[31m-            base.Dispose(disposing);[m
[31m-        }[m
[31m-[m
[31m-        #region Windows Form Designer generated code[m
[31m-[m
[31m-        /// <summary>[m
[31m-        /// Required method for Designer support - do not modify[m
[31m-        /// the contents of this method with the code editor.[m
[31m-        /// </summary>[m
[31m-        private void InitializeComponent()[m
[31m-        {[m
[31m-            this.components = new System.ComponentModel.Container();[m
[31m-            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmTestProduto));[m
[31m-            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);[m
[31m-            this.dlgUploadImagem = new System.Windows.Forms.OpenFileDialog();[m
[31m-            this.lblIngredientes = new System.Windows.Forms.Label();[m
[31m-            this.lblNome = new System.Windows.Forms.Label();[m
[31m-            this.txtNomeProduto = new System.Windows.Forms.TextBox();[m
[31m-            this.lblPreco = new System.Windows.Forms.Label();[m
[31m-            this.txtPrecoProduto = new System.Windows.Forms.TextBox();[m
[31m-            this.txtDescricaoProduto = new System.Windows.Forms.RichTextBox();[m
[31m-            this.lblDescricao = new System.Windows.Forms.Label();[m
[31m-            this.btnSalvarModificacaoProduto = new System.Windows.Forms.Button();[m
[31m-            this.btnCancelarModificacaoProduto = new System.Windows.Forms.Button();[m
[31m-            this.chkListaDeIngredientesProduto = new System.Windows.Forms.CheckedListBox();[m
[31m-            this.lblCategoria = new System.Windows.Forms.Label();[m
[31m-            this.cboCategoria = new System.Windows.Forms.ComboBox();[m
[31m-            this.btnRemoverProduto = new System.Windows.Forms.Button();[m
[31m-            this.cboListaDeProdutos = new System.Windows.Forms.ComboBox();[m
[31m-            this.picImagemProduto = new System.Windows.Forms.PictureBox();[m
[31m-            this.btnAdicionarImagemNovoProduto = new System.Windows.Forms.Button();[m
[31m-            this.btnAdicionarProduto = new System.Windows.Forms.Button();[m
[31m-            this.groupBox3 = new System.Windows.Forms.GroupBox();[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).BeginInit();[m
[31m-            this.groupBox3.SuspendLayout();[m
[31m-            this.SuspendLayout();[m
[31m-            // [m
[31m-            // dlgUploadImagem[m
[31m-            // [m
[31m-            this.dlgUploadImagem.FileName = "[imagem do produto]";[m
[31m-            this.dlgUploadImagem.Title = "Escolha uma image para o produto";[m
[31m-            // [m
[31m-            // lblIngredientes[m
[31m-            // [m
[31m-            this.lblIngredientes.AutoSize = true;[m
[31m-            this.lblIngredientes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.lblIngredientes.Location = new System.Drawing.Point(140, 164);[m
[31m-            this.lblIngredientes.Name = "lblIngredientes";[m
[31m-            this.lblIngredientes.Size = new System.Drawing.Size(102, 20);[m
[31m-            this.lblIngredientes.TabIndex = 1;[m
[31m-            this.lblIngredientes.Text = "Ingredientes:";[m
[31m-            // [m
[31m-            // lblNome[m
[31m-            // [m
[31m-            this.lblNome.AutoSize = true;[m
[31m-            this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.lblNome.Location = new System.Drawing.Point(140, 68);[m
[31m-            this.lblNome.Name = "lblNome";[m
[31m-            this.lblNome.Size = new System.Drawing.Size(55, 20);[m
[31m-            this.lblNome.TabIndex = 2;[m
[31m-            this.lblNome.Text = "Nome:";[m
[31m-            // [m
[31m-            // txtNomeProduto[m
[31m-            // [m
[31m-            this.txtNomeProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtNomeProduto.Location = new System.Drawing.Point(329, 62);[m
[31m-            this.txtNomeProduto.Name = "txtNomeProduto";[m
[31m-            this.txtNomeProduto.Size = new System.Drawing.Size(342, 26);[m
[31m-            this.txtNomeProduto.TabIndex = 3;[m
[31m-            this.txtNomeProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[31m-            // [m
[31m-            // lblPreco[m
[31m-            // [m
[31m-            this.lblPreco.AutoSize = true;[m
[31m-            this.lblPreco.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.lblPreco.Location = new System.Drawing.Point(140, 134);[m
[31m-            this.lblPreco.Name = "lblPreco";[m
[31m-            this.lblPreco.Size = new System.Drawing.Size(54, 20);[m
[31m-            this.lblPreco.TabIndex = 4;[m
[31m-            this.lblPreco.Text = "Preço:";[m
[31m-            // [m
[31m-            // txtPrecoProduto[m
[31m-            // [m
[31m-            this.txtPrecoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtPrecoProduto.Location = new System.Drawing.Point(329, 128);[m
[31m-            this.txtPrecoProduto.Name = "txtPrecoProduto";[m
[31m-            this.txtPrecoProduto.Size = new System.Drawing.Size(87, 26);[m
[31m-            this.txtPrecoProduto.TabIndex = 5;[m
[31m-            this.txtPrecoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[31m-            // [m
[31m-            // txtDescricaoProduto[m
[31m-            // [m
[31m-            this.txtDescricaoProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[31m-            this.txtDescricaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.txtDescricaoProduto.Location = new System.Drawing.Point(329, 297);[m
[31m-            this.txtDescricaoProduto.Name = "txtDescricaoProduto";[m
[31m-            this.txtDescricaoProduto.Size = new System.Drawing.Size(342, 116);[m
[31m-            this.txtDescricaoProduto.TabIndex = 6;[m
[31m-            this.txtDescricaoProduto.Text = "";[m
[31m-            this.txtDescricaoProduto.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[31m-            // [m
[31m-            // lblDescricao[m
[31m-            // [m
[31m-            this.lblDescricao.AutoSize = true;[m
[31m-            this.lblDescricao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.lblDescricao.Location = new System.Drawing.Point(140, 300);[m
[31m-            this.lblDescricao.Name = "lblDescricao";[m
[31m-            this.lblDescricao.Size = new System.Drawing.Size(84, 20);[m
[31m-            this.lblDescricao.TabIndex = 7;[m
[31m-            this.lblDescricao.Text = "Descrição:";[m
[31m-            // [m
[31m-            // btnSalvarModificacaoProduto[m
[31m-            // [m
[31m-            this.btnSalvarModificacaoProduto.Enabled = false;[m
[31m-            this.btnSalvarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnSalvarModificacaoProduto.Location = new System.Drawing.Point(431, 419);[m
[31m-            this.btnSalvarModificacaoProduto.Name = "btnSalvarModificacaoProduto";[m
[31m-            this.btnSalvarModificacaoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnSalvarModificacaoProduto.TabIndex = 18;[m
[31m-            this.btnSalvarModificacaoProduto.Text = "Salvar";[m
[31m-            this.toolTip1.SetToolTip(this.btnSalvarModificacaoProduto, "Salvar modificações");[m
[31m-            this.btnSalvarModificacaoProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnSalvarModificacaoProduto.Click += new System.EventHandler(this.btnSalvarModificacaoProduto_Click);[m
[31m-            // [m
[31m-            // btnCancelarModificacaoProduto[m
[31m-            // [m
[31m-            this.btnCancelarModificacaoProduto.Enabled = false;[m
[31m-            this.btnCancelarModificacaoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnCancelarModificacaoProduto.Location = new System.Drawing.Point(554, 419);[m
[31m-            this.btnCancelarModificacaoProduto.Name = "btnCancelarModificacaoProduto";[m
[31m-            this.btnCancelarModificacaoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnCancelarModificacaoProduto.TabIndex = 19;[m
[31m-            this.btnCancelarModificacaoProduto.Text = "Cancelar";[m
[31m-            this.toolTip1.SetToolTip(this.btnCancelarModificacaoProduto, "Cancelar modificações");[m
[31m-            this.btnCancelarModificacaoProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnCancelarModificacaoProduto.Click += new System.EventHandler(this.btnCancelarModificacaoProduto_Click);[m
[31m-            // [m
[31m-            // chkListaDeIngredientesProduto[m
[31m-            // [m
[31m-            this.chkListaDeIngredientesProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.chkListaDeIngredientesProduto.FormattingEnabled = true;[m
[31m-            this.chkListaDeIngredientesProduto.Location = new System.Drawing.Point(329, 161);[m
[31m-            this.chkListaDeIngredientesProduto.Name = "chkListaDeIngredientesProduto";[m
[31m-            this.chkListaDeIngredientesProduto.Size = new System.Drawing.Size(342, 130);[m
[31m-            this.chkListaDeIngredientesProduto.TabIndex = 12;[m
[31m-            this.chkListaDeIngredientesProduto.EnabledChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[31m-            // [m
[31m-            // lblCategoria[m
[31m-            // [m
[31m-            this.lblCategoria.AutoSize = true;[m
[31m-            this.lblCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.lblCategoria.Location = new System.Drawing.Point(139, 100);[m
[31m-            this.lblCategoria.Name = "lblCategoria";[m
[31m-            this.lblCategoria.Size = new System.Drawing.Size(82, 20);[m
[31m-            this.lblCategoria.TabIndex = 20;[m
[31m-            this.lblCategoria.Text = "Categoria:";[m
[31m-            // [m
[31m-            // cboCategoria[m
[31m-            // [m
[31m-            this.cboCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.cboCategoria.FormattingEnabled = true;[m
[31m-            this.cboCategoria.Location = new System.Drawing.Point(329, 94);[m
[31m-            this.cboCategoria.Name = "cboCategoria";[m
[31m-            this.cboCategoria.Size = new System.Drawing.Size(342, 28);[m
[31m-            this.cboCategoria.TabIndex = 21;[m
[31m-            this.cboCategoria.TextChanged += new System.EventHandler(this.AtivarSalvarModificacao);[m
[31m-            // [m
[31m-            // btnRemoverProduto[m
[31m-            // [m
[31m-            this.btnRemoverProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverProduto.BackgroundImage")));[m
[31m-            this.btnRemoverProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;[m
[31m-            this.btnRemoverProduto.Location = new System.Drawing.Point(635, 19);[m
[31m-            this.btnRemoverProduto.Name = "btnRemoverProduto";[m
[31m-            this.btnRemoverProduto.Size = new System.Drawing.Size(36, 33);[m
[31m-            this.btnRemoverProduto.TabIndex = 22;[m
[31m-            this.btnRemoverProduto.UseMnemonic = false;[m
[31m-            this.btnRemoverProduto.UseVisualStyleBackColor = true;[m
[31m-            // [m
[31m-            // cboListaDeProdutos[m
[31m-            // [m
[31m-            this.cboListaDeProdutos.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.cboListaDeProdutos.FormattingEnabled = true;[m
[31m-            this.cboListaDeProdutos.Location = new System.Drawing.Point(17, 22);[m
[31m-            this.cboListaDeProdutos.Name = "cboListaDeProdutos";[m
[31m-            this.cboListaDeProdutos.Size = new System.Drawing.Size(570, 28);[m
[31m-            this.cboListaDeProdutos.TabIndex = 23;[m
[31m-            this.cboListaDeProdutos.SelectedIndexChanged += new System.EventHandler(this.cboListaDeProdutos_SelectedIndexChanged);[m
[31m-            // [m
[31m-            // picImagemProduto[m
[31m-            // [m
[31m-            this.picImagemProduto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;[m
[31m-            this.picImagemProduto.Location = new System.Drawing.Point(17, 65);[m
[31m-            this.picImagemProduto.Name = "picImagemProduto";[m
[31m-            this.picImagemProduto.Size = new System.Drawing.Size(116, 111);[m
[31m-            this.picImagemProduto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;[m
[31m-            this.picImagemProduto.TabIndex = 24;[m
[31m-            this.picImagemProduto.TabStop = false;[m
[31m-            // [m
[31m-            // btnAdicionarImagemNovoProduto[m
[31m-            // [m
[31m-            this.btnAdicionarImagemNovoProduto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.btnAdicionarImagemNovoProduto.Location = new System.Drawing.Point(17, 182);[m
[31m-            this.btnAdicionarImagemNovoProduto.Name = "btnAdicionarImagemNovoProduto";[m
[31m-            this.btnAdicionarImagemNovoProduto.Size = new System.Drawing.Size(117, 23);[m
[31m-            this.btnAdicionarImagemNovoProduto.TabIndex = 25;[m
[31m-            this.btnAdicionarImagemNovoProduto.Text = "Upload imagem";[m
[31m-            this.btnAdicionarImagemNovoProduto.UseVisualStyleBackColor = true;[m
[31m-            this.btnAdicionarImagemNovoProduto.Click += new System.EventHandler(this.btnAdicionarImagemNovoProduto_Click);[m
[31m-            // [m
[31m-            // btnAdicionarProduto[m
[31m-            // [m
[31m-            this.btnAdicionarProduto.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarProduto.BackgroundImage")));[m
[31m-            this.btnAdicionarProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;[m
[31m-            this.btnAdicionarProduto.Location = new System.Drawing.Point(593, 19);[m
[31m-            this.btnAdicionarProduto.Name = "btnAdicionarProduto";[m
[31m-            this.btnAdicionarProduto.Size = new System.Drawing.Size(36, 33);[m
[31m-            this.btnAdicionarProduto.TabIndex = 26;[m
[31m-            this.btnAdicionarProduto.UseMnemonic = false;[m
[31m-            this.btnAdicionarProduto.UseVisualStyleBackColor = true;[m
[31m-            // [m
[31m-            // groupBox3[m
[31m-            // [m
[31m-            this.groupBox3.Controls.Add(this.btnAdicionarProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnAdicionarImagemNovoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.picImagemProduto);[m
[31m-            this.groupBox3.Controls.Add(this.cboListaDeProdutos);[m
[31m-            this.groupBox3.Controls.Add(this.btnRemoverProduto);[m
[31m-            this.groupBox3.Controls.Add(this.cboCategoria);[m
[31m-            this.groupBox3.Controls.Add(this.lblCategoria);[m
[31m-            this.groupBox3.Controls.Add(this.chkListaDeIngredientesProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnCancelarModificacaoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.btnSalvarModificacaoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.lblDescricao);[m
[31m-            this.groupBox3.Controls.Add(this.txtDescricaoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.txtPrecoProduto);[m
[31m-            this.groupBox3.Controls.Add(this.lblPreco);[m
[31m-            this.groupBox3.Controls.Add(this.txtNomeProduto);[m
[31m-            this.groupBox3.Controls.Add(this.lblNome);[m
[31m-            this.groupBox3.Controls.Add(this.lblIngredientes);[m
[31m-            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));[m
[31m-            this.groupBox3.Location = new System.Drawing.Point(12, 12);[m
[31m-            this.groupBox3.Name = "groupBox3";[m
[31m-            this.groupBox3.Size = new System.Drawing.Size(689, 465);[m
[31m-            this.groupBox3.TabIndex = 17;[m
[31m-            this.groupBox3.TabStop = false;[m
[31m-            this.groupBox3.Text = "Lista de produtos";[m
[31m-            // [m
[31m-            // FrmTestProduto[m
[31m-            // [m
[31m-            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);[m
[31m-            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;[m
[31m-            this.ClientSize = new System.Drawing.Size(714, 490);[m
[31m-            this.Controls.Add(this.groupBox3);[m
[31m-            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));[m
[31m-            this.Name = "FrmTestProduto";[m
[31m-            this.Text = "Produtos";[m
[31m-            ((System.ComponentModel.ISupportInitialize)(this.picImagemProduto)).EndInit();[m
[31m-            this.groupBox3.ResumeLayout(false);[m
[31m-            this.groupBox3.PerformLayout();[m
[31m-            this.ResumeLayout(false);[m
[31m-[m
[31m-        }[m
[31m-[m
[31m-        #endregion[m
[31m-[m
[31m-        private System.Windows.Forms.ToolTip toolTip1;[m
[31m-        private System.Windows.Forms.OpenFileDialog dlgUploadImagem;[m
[31m-        private System.Windows.Forms.Label lblIngredientes;[m
[31m-        private System.Windows.Forms.Label lblNome;[m
[31m-        private System.Windows.Forms.TextBox txtNomeProduto;[m
[31m-        private System.Windows.Forms.Label lblPreco;[m
[31m-        private System.Windows.Forms.TextBox txtPrecoProduto;[m
[31m-        private System.Windows.Forms.RichTextBox txtDescricaoProduto;[m
[31m-        private System.Windows.Forms.Label lblDescricao;[m
[31m-        private System.Windows.Forms.Button btnSalvarModificacaoProduto;[m
[31m-        private System.Windows.Forms.Button btnCancelarModificacaoProduto;[m
[31m-        private System.Windows.Forms.CheckedListBox chkListaDeIngredientesProduto;[m
[31m-        private System.Windows.Forms.Label lblCategoria;[m
[31m-        private System.Windows.Forms.ComboBox cboCategoria;[m
[31m-        private System.Windows.Forms.Button btnRemoverProduto;[m
[31m-        private System.Windows.Forms.ComboBox cboListaDeProdutos;[m
[31m-        private System.Windows.Forms.PictureBox picImagemProduto;[m
[31m-        private System.Windows.Forms.Button btnAdicionarImagemNovoProduto;[m
[31m-        private System.Windows.Forms.Button btnAdicionarProduto;[m
[31m-        private System.Windows.Forms.GroupBox groupBox3;[m
[31m-    }[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.cs b/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.cs[m
[1mdeleted file mode 100644[m
[1mindex 5b6cf0f..0000000[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.cs[m
[1m+++ /dev/null[m
[36m@@ -1,234 +0,0 @@[m
[31m-﻿using System;[m
[31m-using System.Drawing;[m
[31m-using System.Drawing.Imaging;[m
[31m-using System.IO;[m
[31m-using System.Linq;[m
[31m-using System.Windows.Forms;[m
[31m-using System.Collections;[m
[31m-using System.Collections.Generic;[m
[31m-[m
[31m-using Softex.Residencia.EServeur.Business;[m
[31m-using Softex.Residencia.EServeur.Business.Exceptions;[m
[31m-using Softex.Residencia.EServeur.Model;[m
[31m-[m
[31m-[m
[31m-namespace Softex.Residencia.Projeto.UI.Administrator[m
[31m-{[m
[31m-    public partial class FrmTestProduto : Form[m
[31m-    {[m
[31m-        private readonly IngredienteBusiness ingredienteBusiness;[m
[31m-        private readonly ProdutoBusiness produtoBusiness;[m
[31m-        private readonly CategoriaBusiness categoriaBusiness;[m
[31m-[m
[31m-        public FrmTestProduto()[m
[31m-        {[m
[31m-            InitializeComponent();[m
[31m-[m
[31m-            this.ingredienteBusiness = new IngredienteBusiness();[m
[31m-            this.produtoBusiness = new ProdutoBusiness();[m
[31m-            this.categoriaBusiness = new CategoriaBusiness();[m
[31m-[m
[31m-            // Modificações de formato das strings[m
[31m-            this.lblPreco.Text = String.Format("Preço ({0:C}): ", 0);[m
[31m-[m
[31m-            AtualizarCamposFormulario();[m
[31m-            DesativarSalvarModificacao();[m
[31m-        }[m
[31m-[m
[31m-        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[31m-        // [Métodos][m
[31m-        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[31m-[m
[31m-        private void AtualizarCamposFormulario()[m
[31m-        {[m
[31m-            try[m
[31m-            {[m
[31m-                // 1. Limpar e atualizar lista de produtos do BD[m
[31m-                this.cboListaDeProdutos.Items.Clear();[m
[31m-                foreach (Produto produto in this.produtoBusiness.RecuperarProdutos())[m
[31m-                {[m
[31m-                    this.cboListaDeProdutos.Items.Add(produto);[m
[31m-                }[m
[31m-[m
[31m-                this.cboListaDeProdutos.DisplayMember = "Nome";[m
[31m-                this.cboListaDeProdutos.ValueMember = "Id";[m
[31m-[m
[31m-                if (this.cboListaDeProdutos.Items.Count > 0)[m
[31m-                {[m
[31m-                    this.cboListaDeProdutos.SelectedIndex = 0;[m
[31m-                }[m
[31m-[m
[31m-                // 2. Atualizar lista de categorias[m
[31m-                this.cboCategoria.DisplayMember = "Nome";[m
[31m-                this.cboCategoria.ValueMember = "Id";[m
[31m-                this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();[m
[31m-[m
[31m-                // 3. Atualizar lista de ingredientes[m
[31m-                this.chkListaDeIngredientesProduto.DataSource = null;[m
[31m-                this.chkListaDeIngredientesProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();[m
[31m-[m
[31m-[m
[31m-                // 4. Preencher os campos com informações do produto selecionado necessários[m
[31m-            }[m
[31m-            catch (Exception)[m
[31m-            {[m
[31m-                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);[m
[31m-            }[m
[31m-        }[m
[31m-[m
[31m-        //[m
[31m-        private void PreencherFormularioProduto(Produto produto) [m
[31m-        {[m
[31m-            // 1. Preencher nome do produto[m
[31m-            this.txtNomeProduto.Text = produto.Nome;[m
[31m-[m
[31m-            // 2. Preencher categoria do produto[m
[31m-            this.cboCategoria.SelectedValue = produto.CategoriaId;[m
[31m-[m
[31m-            // 3. Preencher preço do produto[m
[31m-            Console.WriteLine("preço" + produto.Preco.ToString());[m
[31m-            this.txtPrecoProduto.Text = Convert.ToString(produto.Preco);[m
[31m-[m
[31m-            // 4. Selecionar ingredientes que compoem produto[m
[31m-            /**** TODO: Falta implementar ****/[m
[31m-[m
[31m-            // 5. Preencher descrição do produto[m
[31m-            this.txtDescricaoProduto.Text = produto.Descricao;[m
[31m-[m
[31m-            // 6. Adicionar imagem do produto[m
[31m-            ImageConverter ic = new ImageConverter();[m
[31m-            this.picImagemProduto.Image = (Image)ic.ConvertFrom(produto.Imagem);[m
[31m-        }[m
[31m-[m
[31m-        //[m
[31m-        private void LimparCamposFormulario()[m
[31m-        {[m
[31m-            this.txtNomeProduto.Text = "";[m
[31m-            this.txtDescricaoProduto.Text = "";[m
[31m-            this.txtPrecoProduto.Text = "";[m
[31m-[m
[31m-            if (this.cboCategoria.SelectedIndex > 0)[m
[31m-            {[m
[31m-                this.cboCategoria.SelectedIndex = 0;[m
[31m-            }[m
[31m-[m
[31m-            this.picImagemProduto.Image = null;[m
[31m-        }[m
[31m-[m
[31m-        //[m
[31m-        private void ValidarCamposFormulario()[m
[31m-        {[m
[31m-            if (string.IsNullOrWhiteSpace(this.txtNomeProduto.Text)) {[m
[31m-                throw new GenericWarningException("Informe o nome do produto!");[m
[31m-            }[m
[31m-[m
[31m-            decimal d;[m
[31m-[m
[31m-            if (!decimal.TryParse(this.txtPrecoProduto.Text, out d)) {[m
[31m-                throw new GenericWarningException("Informe o preço do produto corretamente!");[m
[31m-            }[m
[31m-[m
[31m-            if (this.cboCategoria.SelectedValue == null) {[m
[31m-                throw new GenericWarningException("Informe a categoria do produto!");[m
[31m-            }[m
[31m-[m
[31m-            if (this.picImagemProduto.Image == null) {[m
[31m-                throw new GenericWarningException("Informe a imagem do produto!");[m
[31m-            }[m
[31m-[m
[31m-            if (string.IsNullOrWhiteSpace(this.txtDescricaoProduto.Text)) {[m
[31m-                throw new GenericWarningException("Informe a descrição do produto!");[m
[31m-            }[m
[31m-        }[m
[31m-[m
[31m-        private void AtivarSalvarModificacao(object sender, EventArgs e)[m
[31m-        {[m
[31m-            btnSalvarModificacaoProduto.Enabled = true;[m
[31m-            btnCancelarModificacaoProduto.Enabled = true;[m
[31m-        }[m
[31m-[m
[31m-        private void DesativarSalvarModificacao()[m
[31m-        {[m
[31m-            btnSalvarModificacaoProduto.Enabled = false;[m
[31m-            btnCancelarModificacaoProduto.Enabled = false;[m
[31m-        }[m
[31m-[m
[31m-        private void RemoverProdutoSelecionado()[m
[31m-        {[m
[31m-            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[31m-            this.produtoBusiness.RemoverProduto(produto.Id);[m
[31m-        }[m
[31m-[m
[31m-[m
[31m-        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[31m-        // [EVENTOS][m
[31m-        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[m
[31m-[m
[31m-        private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)[m
[31m-        {[m
[31m-            if (this.dlgUploadImagem.ShowDialog() == DialogResult.OK) {[m
[31m-                this.picImagemProduto.Image = new Bitmap(this.dlgUploadImagem.FileName);[m
[31m-            }[m
[31m-        }[m
[31m-[m
[31m-        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)[m
[31m-        {[m
[31m-            try {[m
[31m-                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[31m-                PreencherFormularioProduto(produto);[m
[31m-            }[m
[31m-            catch (Exception) {[m
[31m-                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);[m
[31m-            }[m
[31m-            DesativarSalvarModificacao();[m
[31m-        }[m
[31m-[m
[31m-        private void btnSalvarModificacaoProduto_Click(object sender, EventArgs e)[m
[31m-        {[m
[31m-            try{[m
[31m-                // 1. Validar campos do formulário[m
[31m-                ValidarCamposFormulario();[m
[31m-[m
[31m-                // 2. Remover o produto selecionado[m
[31m-                RemoverProdutoSelecionado();[m
[31m-[m
[31m-                // 3. Criar um novo produto a partir dos campos modificados[m
[31m-                Produto novoProduto = new Produto()[m
[31m-                {[m
[31m-                    Nome = this.txtNomeProduto.Text,[m
[31m-                    Descricao = this.txtDescricaoProduto.Text,[m
[31m-                    Preco = Convert.ToDecimal(this.txtPrecoProduto.Text),[m
[31m-                    CategoriaId = (int)cboCategoria.SelectedValue[m
[31m-                };[m
[31m-               [m
[31m-                using (MemoryStream ms = new MemoryStream()) {[m
[31m-                    Image image = this.picImagemProduto.Image;[m
[31m-                    image.Save(ms, ImageFormat.Png);[m
[31m-[m
[31m-                    novoProduto.Imagem = ms.ToArray();[m
[31m-                }[m
[31m-[m
[31m-                // 4. Adicionar o novo produto ao banco de dados[m
[31m-                this.produtoBusiness.CadastrarProduto(novoProduto);[m
[31m-[m
[31m-                // 5. Desativar os botoes de salvar e cancelar[m
[31m-                DesativarSalvarModificacao();[m
[31m-            }[m
[31m-            catch (GenericWarningException ex){[m
[31m-                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                MessageBoxIcon.Warning);[m
[31m-            }[m
[31m-            catch (Exception){[m
[31m-                MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK,[m
[31m-                                MessageBoxIcon.Error);[m
[31m-            }[m
[31m-        }[m
[31m-[m
[31m-        private void btnCancelarModificacaoProduto_Click(object sender, EventArgs e)[m
[31m-        {[m
[31m-            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;[m
[31m-            PreencherFormularioProduto(produto);[m
[31m-            DesativarSalvarModificacao();[m
[31m-        }[m
[31m-    }[m
[31m-}[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.resx b/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.resx[m
[1mdeleted file mode 100644[m
[1mindex b87a183..0000000[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/FrmTestProduto.resx[m
[1m+++ /dev/null[m
[36m@@ -1,2086 +0,0 @@[m
[31m-﻿<?xml version="1.0" encoding="utf-8"?>[m
[31m-<root>[m
[31m-  <!-- [m
[31m-    Microsoft ResX Schema [m
[31m-    [m
[31m-    Version 2.0[m
[31m-    [m
[31m-    The primary goals of this format is to allow a simple XML format [m
[31m-    that is mostly human readable. The generation and parsing of the [m
[31m-    various data types are done through the TypeConverter classes [m
[31m-    associated with the data types.[m
[31m-    [m
[31m-    Example:[m
[31m-    [m
[31m-    ... ado.net/XML headers & schema ...[m
[31m-    <resheader name="resmimetype">text/microsoft-resx</resheader>[m
[31m-    <resheader name="version">2.0</resheader>[m
[31m-    <resheader name="reader">System.Resources.ResXResourceReader, System.Windows.Forms, ...</resheader>[m
[31m-    <resheader name="writer">System.Resources.ResXResourceWriter, System.Windows.Forms, ...</resheader>[m
[31m-    <data name="Name1"><value>this is my long string</value><comment>this is a comment</comment></data>[m
[31m-    <data name="Color1" type="System.Drawing.Color, System.Drawing">Blue</data>[m
[31m-    <data name="Bitmap1" mimetype="application/x-microsoft.net.object.binary.base64">[m
[31m-        <value>[base64 mime encoded serialized .NET Framework object]</value>[m
[31m-    </data>[m
[31m-    <data name="Icon1" type="System.Drawing.Icon, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[31m-        <value>[base64 mime encoded string representing a byte array form of the .NET Framework object]</value>[m
[31m-        <comment>This is a comment</comment>[m
[31m-    </data>[m
[31m-                [m
[31m-    There are any number of "resheader" rows that contain simple [m
[31m-    name/value pairs.[m
[31m-    [m
[31m-    Each data row contains a name, and value. The row also contains a [m
[31m-    type or mimetype. Type corresponds to a .NET class that support [m
[31m-    text/value conversion through the TypeConverter architecture. [m
[31m-    Classes that don't support this are serialized and stored with the [m
[31m-    mimetype set.[m
[31m-    [m
[31m-    The mimetype is used for serialized objects, and tells the [m
[31m-    ResXResourceReader how to depersist the object. This is currently not [m
[31m-    extensible. For a given mimetype the value must be set accordingly:[m
[31m-    [m
[31m-    Note - application/x-microsoft.net.object.binary.base64 is the format [m
[31m-    that the ResXResourceWriter will generate, however the reader can [m
[31m-    read any of the formats listed below.[m
[31m-    [m
[31m-    mimetype: application/x-microsoft.net.object.binary.base64[m
[31m-    value   : The object must be serialized with [m
[31m-            : System.Runtime.Serialization.Formatters.Binary.BinaryFormatter[m
[31m-            : and then encoded with base64 encoding.[m
[31m-    [m
[31m-    mimetype: application/x-microsoft.net.object.soap.base64[m
[31m-    value   : The object must be serialized with [m
[31m-            : System.Runtime.Serialization.Formatters.Soap.SoapFormatter[m
[31m-            : and then encoded with base64 encoding.[m
[31m-[m
[31m-    mimetype: application/x-microsoft.net.object.bytearray.base64[m
[31m-    value   : The object must be serialized into a byte array [m
[31m-            : using a System.ComponentModel.TypeConverter[m
[31m-            : and then encoded with base64 encoding.[m
[31m-    -->[m
[31m-  <xsd:schema id="root" xmlns="" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">[m
[31m-    <xsd:import namespace="http://www.w3.org/XML/1998/namespace" />[m
[31m-    <xsd:element name="root" msdata:IsDataSet="true">[m
[31m-      <xsd:complexType>[m
[31m-        <xsd:choice maxOccurs="unbounded">[m
[31m-          <xsd:element name="metadata">[m
[31m-            <xsd:complexType>[m
[31m-              <xsd:sequence>[m
[31m-                <xsd:element name="value" type="xsd:string" minOccurs="0" />[m
[31m-              </xsd:sequence>[m
[31m-              <xsd:attribute name="name" use="required" type="xsd:string" />[m
[31m-              <xsd:attribute name="type" type="xsd:string" />[m
[31m-              <xsd:attribute name="mimetype" type="xsd:string" />[m
[31m-              <xsd:attribute ref="xml:space" />[m
[31m-            </xsd:complexType>[m
[31m-          </xsd:element>[m
[31m-          <xsd:element name="assembly">[m
[31m-            <xsd:complexType>[m
[31m-              <xsd:attribute name="alias" type="xsd:string" />[m
[31m-              <xsd:attribute name="name" type="xsd:string" />[m
[31m-            </xsd:complexType>[m
[31m-          </xsd:element>[m
[31m-          <xsd:element name="data">[m
[31m-            <xsd:complexType>[m
[31m-              <xsd:sequence>[m
[31m-                <xsd:element name="value" type="xsd:string" minOccurs="0" msdata:Ordinal="1" />[m
[31m-                <xsd:element name="comment" type="xsd:string" minOccurs="0" msdata:Ordinal="2" />[m
[31m-              </xsd:sequence>[m
[31m-              <xsd:attribute name="name" type="xsd:string" use="required" msdata:Ordinal="1" />[m
[31m-              <xsd:attribute name="type" type="xsd:string" msdata:Ordinal="3" />[m
[31m-              <xsd:attribute name="mimetype" type="xsd:string" msdata:Ordinal="4" />[m
[31m-              <xsd:attribute ref="xml:space" />[m
[31m-            </xsd:complexType>[m
[31m-          </xsd:element>[m
[31m-          <xsd:element name="resheader">[m
[31m-            <xsd:complexType>[m
[31m-              <xsd:sequence>[m
[31m-                <xsd:element name="value" type="xsd:string" minOccurs="0" msdata:Ordinal="1" />[m
[31m-              </xsd:sequence>[m
[31m-              <xsd:attribute name="name" type="xsd:string" use="required" />[m
[31m-            </xsd:complexType>[m
[31m-          </xsd:element>[m
[31m-        </xsd:choice>[m
[31m-      </xsd:complexType>[m
[31m-    </xsd:element>[m
[31m-  </xsd:schema>[m
[31m-  <resheader name="resmimetype">[m
[31m-    <value>text/microsoft-resx</value>[m
[31m-  </resheader>[m
[31m-  <resheader name="version">[m
[31m-    <value>2.0</value>[m
[31m-  </resheader>[m
[31m-  <resheader name="reader">[m
[31m-    <value>System.Resources.ResXResourceReader, System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089</value>[m
[31m-  </resheader>[m
[31m-  <resheader name="writer">[m
[31m-    <value>System.Resources.ResXResourceWriter, System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089</value>[m
[31m-  </resheader>[m
[31m-  <metadata name="toolTip1.TrayLocation" type="System.Drawing.Point, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a">[m
[31m-    <value>17, 17</value>[m
[31m-  </metadata>[m
[31m-  <metadata name="dlgUploadImagem.TrayLocation" type="System.Drawing.Point, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a">[m
[31m-    <value>114, 17</value>[m
[31m-  </metadata>[m
[31m-  <assembly alias="System.Drawing" name="System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" />[m
[31m-  <data name="btnRemoverProduto.BackgroundImage" type="System.Drawing.Bitmap, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[31m-    <value>[m
[31m-        iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8[m
[31m-        YQUAACKXSURBVHhe7Z0HnFTlucaFpcPCdrY3qoAUxYgihmhursm9iabYYkUFy9UkaEDpohFFERBFAdEg[m
[31m-        IF26gNSld6yIiqJIEemgVNH3Pv/ZGZxdZuucmdmNc36/57ezM+d83/s+7/P175xz3nnhI8yAQwxUUDoV[m
[31m-        hQihkhuV9Tc/qui7MArnwBdvHk7hF55DfmAEgawlxAiJQqqQKdQTGggNhUZCY+F8LzTRZ19oqu9/LiiI[m
[31m-        Aw9PcAbgDx7rC1lCupAkxAm1hWoCogjagRJrCvFCmtu4Zvp7kdBGaCe0F64SfiP8t3C18Fvhd278j/6C[m
[31m-        /y0Ev9dv/2kozF8PJx6O4Ave4O+/hCuFXwqXCRcLLQQEkilQ+BADBTJgB1U8aiMz1IgBBPxXbkP/oL9/[m
[31m-        EW4SbhU6CHcLnYR7hHuF+4T7hf/zwgP6XBAe1G//KSjMT28+4Aee4AveOgp3CbcLtwg3CH8SEMyvhbYC[m
[31m-        hQ8xUCARguM1AgmSMFV8cwEVosprhBuFO92B6qq/PYW+wpPC08IzwgDhOWGgMMiNwfrrwfP6XBSG6Jzy[m
[31m-        hqJ84ndvHjzcwBN8Pevm7yn9fULoI3QTOgsULATxZ4Fag9oBIdD80iTTj3DkoFqJFSj1ZEC1jgLvEB4S[m
[31m-        CO5IYaIwS5gvLBGWCyuF1cIaYa2wzo31+uvBBn3+ucObDw9H8AVvq9w85ujvQmGO8KYwWnhB6CEghusF[m
[31m-        agVqBPoR1NTVBb8Ogp8g0Am5RKA9ulkg8Kh1nNqFhTEVzns3u2KFL5pGVNzTLKLiPuGAPh8UDgmHvXBE[m
[31m-        nz04qs9h5OXAmx9v3g7BKdyKs2/E9XZx/oG4X6YYTBOGCdS81MTUyvTD6Jel+CMCT/BRE1U+6qJdp1of[m
[31m-        F1nhvBXNIyruvKZKxPfXV61kNwq3gGq5uLWYuE3nFYXbdU5RuEPnFIUOOicXlX9Cda/P7t+LSoffi7KH[m
[31m-        34vyi9+Ly5OHVziGaziHe8Xg69oVXLXpVIEagb7GH4X2Av00RFCjpNUAbT7VPiXfE3yqmQH6YbZU+MW1[m
[31m-        yvwGGdGxeoR1rhFhXWtWtG5C91q+0UPf5yKiUPTU70Whl84pCr11TlHoo3P6RBZ9HukUlZ/n96Js5/ei[m
[31m-        OPBw5ZNLcQzXcA73xIBYKCZfKTY0ESPcNbRHBNQEDBuLPUKgt0+Hjzafap+ST/BfVIOy4MrKEUfI9B5l[m
[31m-        3o1gicAwQscBMSAWxESx+VYxWqFYjRIedtcEl+svtTgFulijA4Z69Pbp8NHmU+0PIPi/UQY3Vo2wf9QM[m
[31m-        ncNhsfnmnpgQG8XomFsE1AQMLynADNeZRGLSrtCDSR56jwz16O3T4Xuaav+qyhFHyaBLOPhltsYjNsSI[m
[31m-        mkAxW6TYDXUXYCaVLhSYJ6hamAKY4aPqp91nqEdvfxxtPlUMKuulKj+MsssBMSJWitkOxW6G0Fu4TmBk[m
[31m-        wLRyHYFm/pyDuX2md+k5MslzhzCI3j6djE5qZ8KBLx8c0CcgZordRsXwVYE+HNPKrQQ6hNT05xz0Eqki[m
[31m-        aC8YS7pKP0M9FNWdXjU95jDKPAfEipgpdnsUw5lCL+FagZqdvoDPYSEdBIZ9zO0zvTuASR7Gmgw3woEv[m
[31m-        XxwQM2KnGDKTOFxgjYYFJdYMonzVAMwfM2akqmBGaSQzfEw4PKR2JSyA8sUBMSN2iuFHiuV4gUUlYksH[m
[31m-        n9ndPP0A/qH3z9CPVT1W4CYyvUuvkrEmEyZhlB8OiBmxUwzpDLJGQ5NObIlxspBnToAOIGN/2n+WdFnV[m
[31m-        m8Xc/s1KhFmucPDLFwfEjNgphnsVSxbougvMDjK5R18vT0cQNWQKDBVoK1hYmM/iA3PQvWpVssciQ4vn[m
[31m-        o2uG3IbiclAWbO2tmBE7FpEUyxyBpWSGg5cKGfkFgBpYR24vsJmD9fwlXMyiRt8QBp+8x9eta1OTMu3V[m
[31m-        +OgyLwJsnC5bJ8jmUPNG7BTDg4ol08PsJ2AzCcvFFPY8+wUQAHv4rhKY+mUzx3KWdEnk8doSQQjwhPKc[m
[31m-        kZRqw+KS7ZmoeAkh3cbVTQiZPYVxAEfYNkk2DoyOt1dkM7bjQ6i4Y9WSJXnFkj0Z/dy1O2sDDAXzCIB/[m
[31m-        GAIy/cs2LpZ8V3IxAsAJHAwmyHNqUooNjU22fnXiXAJ4TpiMCBLig2pLcfzGpqmJGTYkOsElAOxFuNPk[m
[31m-        Q6j4cwvgsGLJ5hJiytT+FUK2LwEwTcjiD7NGbONazUYOEgm2A0/WrmxvqvQ8G1PXnlDwx/z297ZzzVp7[m
[31m-        rXUbe14Ej09IVW2QYP8Ksih9CQEbsGVSQpq9JNtGt77UdsnWcb/7vT0VFWeDYxIl5FTDp+IIyalziJmX[m
[31m-        ANhl1F9gCxlbx3wKgAkCxolsRGSb1xqPAHCSBIOBfiJqVnK69Y+ua73rxNr46/9qxw8cNI7DX37pInio[m
[31m-        iJ6immBqYlJQbCrM72lJSTZNtgyXWMddfKkdkY0c2Dzphr9KwLH2nH6bLZ/wLRgckgcxyycA9hfSv0MA[m
[31m-        9PfOaQJYM2bViN2obEhc6xHAk+4ESTSQeEoETaG0KMA9asfa2Otvsu9PnHQR6jmOfrXDJl5xpYvwN0X8[m
[31m-        lMREla7A2uXLZ/Ik7xmy4VWV8jd/eZVhm/eB7RMk4D4SAYKmVsPHQHLoSRv73AI4oliyY8gjgPaFCYDd[m
[31m-        pWxJZlfqOvbvkUgwCO5fp4rNUCnprWrzkdoxNuHOjnb84KE8hHqLYIoIH4kI1BzMTk4JCqnegZudnGrT[m
[31m-        Ve2/Hpto02TLt/mC77EVHybLl57yqa/6BTOp3eRroEXgQwDU6rcJHgHk2SHEP9QACIB96Wz49BJAZVcb[m
[31m-        Fig8U6eqTU/OsO5q77uotEy853774cwZn8H3fHli/3576/d/tFEEQIGYk5ym0lUlYDZ6fCePucprVt00[m
[31m-        GxubZPP+8EfDlsIOfJly7/3WTb71lo8z5Ss+B4pPT7peNQC7rhEA9xaw1sOS/zkC4FYldo+wiwQBrPfU[m
[31m-        AP3qBC74A6Kq2cSkNPunSsg/IqNtvIJ/6rtjhRLqLYLZv75agVBVLBHMVhUbSFtJ+y3lMTsh3SbEJdnc[m
[31m-        X/+2yOB7bMWnSfLtn/LxUTVvk+QzvgdKBNiaTwA068UWwGC3AI6SyFNKjASdxsDo6jY1OdP+Hhljf4+K[m
[31m-        tek9ehVZ8vMr4+Shw5ZzawdXQGaqOVicmqkhWFXHbSXNJUp7joQ2RcO7Fbd1sFPKuyQHNcEs+fiQmrmH[m
[31m-        Jfhp8h0OnOaV9IhZaQTAvWvUAOcIgASdxCA5PjEp3R5Qibi3VpRN697Tvj95qiR8nj339LffWs51N9lk[m
[31m-        SqU6ZYtSMuxpB+0lrcVKc4HSnq7gL7/ur0aepTnwcYZE8KB8RviTxAFcOMmtJ63SCoB95QhgAzdukAgE[m
[31m-        OIkXY2ra6MQ061gzyu6LibdpffqWhss81xCQtZ3ut2kK0BzVBEtSMm2Qqlh/7SaNHJX8+Sr5s+JTbP3d[m
[31m-        95Y6+N4Gz5TPD8Qk2H0SwtjEdIMTf23Nf30+AdCxv6OoPgA1AALgnrWzAujvoACGytHxSRl2Z8061qFm[m
[31m-        bZs3eIid+f57vwVAAmc07Npw3wOuQC1UaV2ZVs+eVY+7tMRy7SqlkaO05irNTfc9aGdO5h2WltZwfJ4v[m
[31m-        3zvWqmOdJIKJ4gRuSmtr/uuImZcA2BrmnwBI0F8Mjallw1U6b61R2+6MjrO5g58vLX8FXkeA3nuoq81R[m
[31m-        wBapp748NcsGR1Uvse1cs0LXLlXwF8jmDx/u6ljwvY1/GxFo6pgC8UrdVHtJHPnLs+d6twCOKvjeAmBX[m
[31m-        kM9RQFP94LMGeEYlgbGrPxgRW9tGKiA31oi0m6X4Ja+Ncqzk51cDItjcrafNV34EcG1afbcIiucDwV+v[m
[31m-        a1aqal6sNLY80j0gwXfVWqoJcsTFHZFRdosKxmvKD6784ZpriZkjAuBeOqpCf4BDw+TYddUj7da4urZ0[m
[31m-        7BuOl/z8Cf4gYrf26+8K4HJhQ3p9VbE1ivSDczbq3NUSzjIJ4HOl8aNDTVRhTi8TJx3iEl0FZLjyhjN/[m
[31m-        OOdaYkc/zq8awCWAKAnADwyJjbZrq9ey62pHW87YsfbDDz8EXABkQOC29u5ry9S+rtZK3Tq15y8iggJ8[m
[31m-        4bcNOme9zl2lNf3PdW0wgo+tcELBuEkc/VlcwZk/nHNtaQTAI1nydAJJZIAS8xe94mNt7fQZQQm8dyY/[m
[31m-        itidw0faquQsW6sS/X56Q5WuWuf4w3cfZjS0jQglJct26xquDfaxThz1SYj1m2/iVVoBsCH07CiARJ5T[m
[31m-        Yv5iYGx1m/+3oqd4A0G4SwSDX3AFdlNipkTQwF5Wj9vjE58/1Hfvq9RvSsm2XTo3FMFnomhh5wcNrvzl[m
[31m-        m+sdE8BAJeYU3r6/k50+9l0g4lxomgT0m9fH2iYF+l2V8s2qCUbF1XFhiz5vVvDfz2hge3VOKIJ/+tgx[m
[31m-        gxuneCYdxwQwSNOgAx0Cs144eub06aCLgAz3jX7DFWgC/mlGI9ua0dg+UfPwkar//WMC3zn15TQlf744[m
[31m-        gRvHeFa8/BEAD2NyTQR1qF5JM2pVHcf0G/9kxw/lbvQI9nFwylTbnNXIPpYItir4n2Y1tsP6LhTHCXEw[m
[31m-        Q1wEgmNiV9JRAJ1A+gB5BDA4uqoFAjief8NHsIJweOZs+7RBU/u8QTM7qs+hOPAdDgLBLWk6JoDnlVig[m
[31m-        MP0vf7Bvv/46FPzbd0ty7JgQiuO7PXtsxnXXBIxX4uWIAO5UNTJEiQUSk67+lZ08fCQUcQhJnvg6WT4H[m
[31m-        klPSJnZ+NwEk8kJ0tYBj8tVX2re7d4ckIMHM9DvVdlPkazA4LVcCgJAJ7S6xYyFqDoIhAnybeMWlQQk+[m
[31m-        fDomgKFKLFiYcFlrO7Lt82DEI6h54BO+BYtH8nFOADHVtEwZPExs29qOuvfXBzVKAcoMX/ApmBwOVbwc[m
[31m-        E0AwDffkNbZFI9v//nsBCknwksWHN+RLKDh0TAAvS00vx1QPOsa10ATNZ1uDFy2Hc8J2fAgFd8TMEQHc[m
[31m-        pVHAMCU2TAIIBd5oWt92r1zhcGgCnxw2Y3soOMvNs5oRO7+HgSQyXIkNV6KhwuiGabZ308bAR82hHLB1[m
[31m-        jGwOFV+5+TomgMpaP69ur4QYELpr6RKHQhS4ZLARW0PNFzG7S09Cd6AGKBsCgNDXM+vazkULAxc9P1Pe[m
[31m-        JduwMdTBJ39HBTBSCY6MrVEm8HpGgm2fPdPPUDl/+fbZs2y0bCsrPBEzx2oAEntVAigrgOivZgZ/e1lB[m
[31m-        ssEWbCor/GCHowJ4VQJ4TYmWFYyOq2VLshvaJ6+Pcb4olzDFrbJhaXYjw6aywg92EDPHaoDX4qrbv+Nq[m
[31m-        lAmMia9ly9OydVt4kv1b99Xtf+fdEobMudP3v/OejdH9/mP0HKOVsgnbygpPxMwRAdytniROjSoDeCM+[m
[31m-        0hbqPr1X9ESOEbolfFXXbs5Fs5Qpre3WQ6VNYhQW604ibCwLXBEzYuf3KIBEcOj1uJohxYT42pajPfsv[m
[31m-        6akgPCNole6wZSNlqA9sWNOjt+uRNSMkzKWyEVtDzRcxc0wAryux0RJAqAChi1Pr2RCR/IJuAV/Z67FQ[m
[31m-        x/2c/FfLppfjk10CXSJbsTlUfJEvMXNMAKOV2BglGgpMSahj83Sr93NRCa7nBK7o87idOVW65wgEUjXY[m
[31m-        tOqxx13PCeRRdm/LZmwPBWfkScwcE8CY+Jo2NgR4s26UzVdp6s9DIhOSbf2QFwMZQ0fS3jhkqD2fkOIS[m
[31m-        7ALZjg+h4I6YOSaAN5TYOPVwg4mpdaP19K9MPT4l3vWk0LUKPjd8lvUDGxEqTwoFc+QDvgSTO/IiZo4I[m
[31m-        oKM6gSQ2XokGC7MSY/WI1Ux7TE/VelpDvQ0jXinrcT/Hvo0jRtoADRGfdD0VLMvwKVj8kQ8xI3Z+jwJI[m
[31m-        ZLwSm6BEg4HZImqGCOulJ2n10YMT3n1jfEhu1fJXcdxe9v648fYv9Qf6Ssizk7MN34LBIXkQM2cEUKOy[m
[31m-        TUioaRMTagUcbyXp6aC6g/dRHqqox6i9o+CX9wMBP6magAdFjpNvbyXFBZxHYkXMOip2/tcALgHU0sOQ[m
[31m-        A4t5yXoItO7j5zl6PeKT7KO35pTLkp9fsNQEW+RLH/mEsCeqacPXQPNJzBwTAMZOSYgMGOYlJdgoPRWD[m
[31m-        B0X2StONmnPnlfeCf479W+RT3/Rs6yIfR6smwOdAckrMHBPAZCX2pgQQCCxMTnQ9OOoBPTfoUT2Lb7OI[m
[31m-        +vHHH//jBIBPCLun5gcQ+ivyGd8DwSlpEjNHBNBJTcAUJTZViTqNRSlJ9pKI4EGRPeo3ts9Xr/mPC3x+[m
[31m-        h7bJx94NGrseFDlMzx5cLA6c5pX0iBmx87sPQCIoalrd2o5igdQ/UA915Dl5ndVJ+jkE3yMGRNAlJd31[m
[31m-        kMjnxQFcOM0vMXNMAFPrRtp0CcAJzFA6S1NTrJ9Wz3hQZPfmLe3LTe+EpOSf2LHDTgqhOLbL517NW7kK[m
[31m-        QH8tJ8MJ3DjBMWkQM8cEME2JYZwTWCJHn1Lwb1PwO9draDs3fxQK/u34Z5/Z8qvaucDnUBy75Ps/6zdy[m
[31m-        PSTyGS1ywY0THJMGMXNMANOV2Ewl6g9m6Xoc7Krp0Zv0LLyuLS8KWfCPffyxLWze6Kw/fOa7UBwUgO6t[m
[31m-        WrsKRDetH8ARXPnDNdcSM8cEQIKzE+v4heVpmuDRrNj1Cv5DzS+0vV9uDwXfrkDntGl1ji98FyoR7BMX[m
[31m-        XVtcaH/Vk0J7iCO48pdvYuaYAFDkWxJAabEgJdn+pjnxP+kBiF3btLV9278KSfCPrFtniy5oWKAfi/Ub[m
[31m-        54TigJNu4oYC0lkLYAvFWWn55jpi5ogA7tEoYLYSm6NES4spWg27pWakdbmsne0NYfCX6D69onzI0Tmh[m
[31m-        FMGjbdvZ7WoO3hRnRdla2O/EjNj5PQy8p0YVlxLn+Ympmcm2c23wx/lMwBxevdoWN8wotg+cyzWhmJCC[m
[31m-        o2niyl++iRmxc0QAKG1eUpTfWPKLlnYkyD3u/Qvm25Lzs0tsO9dwbTAPuIEjJ7gmZo4JADXOlwCcQE7r[m
[31m-        5nbog/cDziullwAuykwstd1cSxrBqAngBG6c4Jg0iJmjAligRJ3C0iCIYM+0qba0cZbfNpMGaQXyIPhw[m
[31m-        4hS/pOOYAO5VO4KiFiVFO4oc3Tu/NwD3/bP8+vXECdpFHOuYvYtT4+zrSRMCsjwNB3DhNL/EjNj53Qcg[m
[31m-        ERS1ODnacSxtVt8ObNrkaOHareAvrZfivK1KE2E5eeA7HASCW2LmmAAWKrElEkAgsExV7O45b/nNKy92[m
[31m-        +OrlF/WGr9iA2InvpE0eTrxEAp/xPRCckiYx80cAZ98XQCKLVf0vVaKBwvIGabZn8SK/RPDVy0NtWYZe[m
[31m-        RxNAO0mbPMjLn+Mb+YrPgbSVmDkmABS1LDkmoFjRIN12zZhWYl5/0A0Z24cMDqhtvnwnT/Iu6bFbPuJr[m
[31m-        oPkkZo4JIEeJLU+JCThWZCXZrimTS8TptscfsxXp8QG3Lb//5EneJTl2yzd8DAaXxKy0AsjzzqD71ARQ[m
[31m-        Va2UAIICEbRzzOgieaX0EYCg2FSI79hQnJoAn1bKt2DZS8yIXUlHAee8N5BElqv6XyUSgoXVWZo2HvXv[m
[31m-        AoddP+oNG1u7PGSr0nWXcBDt8pmXbMAWbPJ1uN5XJF/wKZi2EjNnBFCziq0QyavVAw4m1vAsoCGDzhHB[m
[31m-        Gd2O/ek/HgiqLcXxe2vnBwzbvA+Cjw/4Upw0nDyHmN2n2PlfAygRqq01EkCwsVbE7Xxl2FkR/KD3DG1V[m
[31m-        8NemxQXdlqJ8xyZsw0YOV8mX7fhQ1LWB+J2YlVQATXy9OpZEVqfE2joJICQQsdv69LST+/fblttvDo0N[m
[31m-        JfAdG7EVm9fJ9pBwRm2tmDkigPvdAliv6dCQIS3e3tNz9kOWfwl9d9kqm0NpLwIgdmoCjuR7deyvCnp5[m
[31m-        tHcNMNjz1jASWStFbZSawyg/HBAzLwFsKMnr4/9PJyOA9XQgWFKkjdokAYRRfjggZu7lYGoABPCccIdQ[m
[31m-        aA3wPzohjwA6SQAb0+PsXVVpYZQfDogZsXM3AR4B3F5cAQxy1wBH7tTzAT7IUhtMOxxGueHgg+x4vS/A[m
[31m-        tSfQuwYoVADnK+i/E+4XEMA6Lr6paoStz4rVq1Xj9dLlMMoDB8RqQ3acETsvAQxQTAsUQGX96BHAfe4O[m
[31m-        w1kBTE6KtF0Nk/SG7fgwygEHxGpKcqQvAdym2LYX6glVhLMHAmgs/Fa4191hWCv1HEZFj9euZAeaJNuX[m
[31m-        9RLtI019hlF2OSBGB5qk2BN1KnsLYL1i+qxwq5cAiPk5Arha39zjPnmNRwBda1a0pRnRdrhZqm3Lrmtb[m
[31m-        NLsVRtnjYJuCf0QxIlaP1KroEcBhmnPhGbcAfumuAc4RQCP98N9CR/fJq7wF0E+K+rJRoh1tlmY76ifZ[m
[31m-        J9oYEUbZ4YCYHL0gzbY3SrKnoirnF8BaxbS/cItwhZAtnCOAhvryv4S7hKeElRLAIZoAaoAeUtRLsdXs[m
[31m-        QNNU+655uu1tnGKfZyXapxJCGKHjgBjsPT/FFZODKv3DFKOekRH5BbBG8XxauLkgAVTSD/WFKwV6ik8I[m
[31m-        Oc0iKh7wFkAvJTxCjyHf0zTFjrfIsGMt0tXepNquBuofZCfaNhlTKDin1EjStcVAPZ0jfOEwSNOF4tjg[m
[31m-        OscfXwvnEa53NUxWYUxTHNJdsSAmI+NrWB/FKJ8ADlKYhSeFG4XLhcz8NQACyBJoH6gm+ggLJYB9+QVA[m
[31m-        Bi/EVLVPGya6Mj7REmTacf091iLTjumzC62yvJBtx1sJF9bzQn07fhFoYCdag4Z24mIv/KKRnXChsQsn[m
[31m-        Lzn/J7TR5zZN7OSloGkuLmvmwqm2F/hAczt1eXM7fXmLXLRrmYsrQKuf/m+X+zvnnmrrQd70PPmcvMyd[m
[31m-        LzZgCzZ52+i2O9cHNzz+4auA77kQDxcCDz/Z4s4DN48eXl1cZ9qJVgJ/xfunappfVEz6qrOeXwAUYsVy[m
[31m-        mfC4cL1wmS8BROjLdPePN+hvN2GOmoBvEEAXdxNADUAGjAr+JYxPrGVblPkhVT8nL8wUsuzURSDbjXr6[m
[31m-        K7Sun4uLG9hp8IuGbjSy05e40aaxnRa+vxSc/xMua2Lfu9DUvm/b1M60bWZnLgcX2Jl2oHkurmhhP4Bf[m
[31m-        gpY/ob0+t2/lwo+/ujAXV17kRmv78SrB87/nd/31XJMnLdJVHuR15gp3vtiALdiEbbIRO132YrcE8pM/[m
[31m-        8s3t5+k2Xr6f5aOBi6NTF7v5gjP4cyGX05PiF54PqeR/LO4nKAb9ale2JxSPPAJQzNzzAPsUy0VCT+HP[m
[31m-        Qht3rCn0Z4+K+pQkXCz8SegsvJldscL2GySAh30IgAzJuL86hy/r9SQTNVcwLy3aFqTH2EJhUYa2Z2fE[m
[31m-        WU5mnC0Tlms2cYWwKkubI7K1Rq7RxLp6dW29eq4b6ifaJuEd4b0GSfa+8IGalc3CRw1T7GPhk0apUnqq[m
[31m-        fdY4zT4Xtp2fbl8K28/PsB1NMmxnk0zb1TTTvhb2NM2yb5pl2b5mur/vgmw7cEE9ibSeHWle344K37Zo[m
[31m-        YN8Jx1qqFAp8Bkdb1Hedw7kHdQ3X7hP2Kq09wtdKd7fS36W8yPMrARu+ELAJ27bKRmzF5i3CZlXVH8oP[m
[31m-        /MG3dwX83ChskO/4v1Y8rBYfq8TLSvEDT8sy422peIPDxeISPuH27fRom5xU24arKX62ThV7Wvw/6UMA[m
[31m-        FFpipxjuojALXYRr3TFO0V8KfZ4jTv+1EFgP6CSMjqlw3gfXV61kD9TI7QR61wAeAWDAMzJkQFQVGxRV[m
[31m-        VY9Kr6rXo1c1Xl7MGyxHCLzAiPfY8Ax7HmXuefbwJD3SlGfl8VQrnmvjeRDFXN3X9rb7VrRF7Md3bfWO[m
[31m-        ce1MWqVlTla61mmJltXJd4T3NUX9gSZomJ/4WENUOqWf6fVtX+jevu3ql+xgs6mwJzvZvhH26yaPg8Jh[m
[31m-        4Uj9VNfnA8Je/cY5u9WG79T5XEsanyutrUrzY2GL8vhQYEaQtREWyFj2xSaWYNmIsUxgTx43fLA/33Ov[m
[31m-        nue+fc8jXPB9ssCjXXnAM08V51n/vO2DFz/x+jdeAslrYHkb+BDxOlgYKJ7hG94LEsCDNSKM2CmGnyiW[m
[31m-        UwQm+IhtKyFRoNDnOWrrPyaDfi3QD3ihgtqOa6pEfN+hWkRYAOVMAMSM2CmGzAG8JjAJxCivqRCTP/j8[m
[31m-        X03IFNoKtBU9hGnNIyp+jZIYCoZrgPJRAzxSK7f0K3Z7FcO3hX8JfxHaCYz2avoSAG0CVcNFAotCNAPD[m
[31m-        Iiuct+5aKenu6hpeKGFPJzDcBJTNJqC3YkSsFLMzit17iuEYga3+7Pimj5cq5JkE8haDpxlgOMiQgZ7j[m
[31m-        VI0GvkJRf1O7EhZA2e4D/N3d9jeJqLhbsZsr9BNuEpjj8VT/ahl8H6wQpblrAToMdwovqGpYeGXliG9v[m
[31m-        VK/ynzVzh4HhGqDs1QBdalayG1VQFavvFLMVih1tP2s7fxB+ITDXU72g4Hu+pxZguZC+wDXu6mOErlrx[m
[31m-        m8oRx8igszJ6IjJ3GBgeBZSNUcBD7uArRscVK1b/xgoM/RjWM//PWg+dvwJLv0cA9AU4kf0BdBr+KDwk[m
[31m-        jEIE1AQ0B/dUr2SPSQRhAYRWAH0VA2JBTCj57uBPULzoxF8ntBcuEBKEAtv+/LUCJ9IhbOZOABE8LIyQ[m
[31m-        OhapT7CDjiGZdlLmj9RiJopJoSr2rManz2mcOkjj1ec1dn1BGBrNWJYxrV5qLDDG/Xds7osox+idu2+4[m
[31m-        XnESaROFyQl6RJrAw5MZL89yP59wbmKUe25ATypxPauAsbZuWE1m7J07Bl/r3r69MTVe8wNsYUvQ/ECC[m
[31m-        bU5nCTt35W5rBuP63PH9l66xvtYN9HmbwG+cw7kf6RquJQ3G+xtd27zjXfMPa1LiXHmuELjLN0fApoW6[m
[31m-        JZsx/1xhjuzlYY8z69ZxzXFMFabIr0mucX9k7rhfvvPO4VHi4TXxwZvHR4gf5k9eEmcvCkPE32Ahd+xf[m
[31m-        1TX2f7J2FXtUnMM9MaDDR5vvrvYp+Z7gM6RvKdDxY5RXooO2ghkjJodQESJgw+hQYYZ6mBs1zNjDWBMj[m
[31m-        bhBuFm6pdi5u1XfeuE3//4TK+lzZbs+HO/S/C9rX5kEHfc4P9r15g/fl3lW9ylncrc/50VHfnYU2Tno+[m
[31m-        +zrXOy0+58+P//Pb5G2zx4/8/uHzT8jlIz9P/J+fTzimGYZzuGeo5+7t0+Gjzafap+QTfEZ0GUKkUGTV[m
[31m-        70sdHhFQE7CKRMewg9BbeFWYqVRXabbpI0057lDNsJfFB+EgS8nsJ/DCEfanFYKjbEP/maEoTrz5Owi3[m
[31m-        4mcf07vM8LkneRjnM9Sjt0+HjzafAtvSK/jnzPr5CnZB39XQD6wT0CdgIYFtYyiMeYJewnBhvDBLmC/k[m
[31m-        CPRAVwtsRGAmCtAxAWxRzo+N+u7nCl988B1cwRscsp7Pki6reizsMLfP9C4lnkkexvkM9ejt0+Gjzafa[m
[31m-        p+T7FXxd7zoYHsYKDCMuFOgcsn3sWnfG7CKio9hdYCmZ/QQokk0I7ERhPxpgZyrgJgUPBurzzx3efHg4[m
[31m-        gi+2ccEfPLKez5IuczNU88ztM73LDB+TPIzzGerR26fDR5tfqmpf1/k8GB3UEpgnIBMWFVhbJmPEgPro[m
[31m-        J1A7sKSMItmBwroChgJ2pbLhxBt36P8w8nICTx7O4A8e2czB5BzT9NcKNMfM7VMYmeFjkocCygiu2L19[m
[31m-        nVvio6quqCPQLJAhC0jNBToclwiXCswh0GegOmJWEbR3g1uTfAEh/dxQEBceruANDgF8UuBohgk4BZCg[m
[31m-        M7dPdU/g6bM5WuqVns+DTNhQQP8gSqDKSRaoHeh1ZgqIg82HgIklDzA4jMI58ObLwyGcAjbuMDpjmE7Q[m
[31m-        WdihxAcl8IUJgiYCUQAM8gX6EmEUj4OCOIRfuHakc1dQQMPf/0wY+H+oWaALQ6MMgAAAAABJRU5ErkJg[m
[31m-        gg==[m
[31m-</value>[m
[31m-  </data>[m
[31m-  <data name="btnAdicionarProduto.BackgroundImage" type="System.Drawing.Bitmap, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[31m-    <value>[m
[31m-        iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8[m
[31m-        YQUAAB8bSURBVHhe7Z0HeBTl+sU3IaGHXkJCFVR6CB0EBQsKWLFgxQIWbFeuV/967SICisK1I0pTUVBB[m
[31m-        RJDee7FRpPeOIMWO+v7Pb7LD3YSENrs4e919nvNsyu73fXPOmfdr78wEArFXjIEwMRCncuKFXEJCEIl6[m
[31m-        z4rc+lsMR+YgO95cTuEXnv/yF41AyIJCMSFZKCtUFCoLpwqnCacLVYVqIaiun7NDDf3974KcOHB5gjMA[m
[31m-        f/BYRagklBfKCCWEQkJeAVOctBdOLCCUFMoFG1dT7/WExkJzoYVwjtBKOF+4QGgttAmird7BhUfARfrf[m
[31m-        /xqOdLwuJy5H8AVv8HeecLZwltBUaCCkCRikosDJhxk4ISP2IsTjNirDjTQAwVsGG3qx3q8QrhFuEG4W[m
[31m-        Ogm3CbcLdwidhTuFu0Jwt37OCffof/8rONJxhvIBP/AEX/B2q9BRuFG4XmgvtBMwzLnCGQInH2bghMQI[m
[31m-        YY8IFEjBhPjaAi7ElZcIVwu3BIV6UO+PCk8J3YQewnNCL+EF4UWhdxB99O7iP/r5aHhJn4k2HO2Y+H8o[m
[31m-        Dy438ARfzwf56673rsITwsNCF4ETC0NcLhA1iA4Yge6XLplxRFhehJXiAmc9FRDWceBNwj8FxH1LGCqM[m
[31m-        EsYLU4QZwixhjjBXmCfMD2KB3l0s1M9/d4Ty4XIEX/A2O8jjVL1PFMYIHwuDhZeFRwTMcJVAVCAiMI4g[m
[31m-        UucTPL0Qv5TAIKSRQH90nYDwuHVIIE6NKpj4VaB0/nWBcknbhV3CbmGP8L2wNwT79LOL/fo5hswchPIT[m
[31m-        yhs8winc7hDXG8T5YnE/XRqMEN4QiLxEYqIy4zDGZaleTOCKj5sI+biLfp2wPiSQL2FmoELS5kCD0gcD[m
[31m-        TVMsrmWq5WpT3hLaBnFhOUsMQW79HIo8F5WzzChreS/KGfkuLmvHgvz6XCRxLG1wPnOEY8mj/2U9/qz8[m
[31m-        hHLHzwltAdyWc7iGc4f7CknbpAURZLhARGCscZnQQmCchgnyH28YoM8n7HPmu+ITZnoF4uM+kwvXBRom[m
[31m-        HwycmWK5Op1mCc+mW9yrjSxX/6aWMCCIgU0sMQS59XMo8gxqYpnR2PIOyhn5Bje2Y0F+fS6SOJY2OJ85[m
[31m-        wrHk0f+yHn9WfkK54+eEAQBumzhcJ4rzBHGPBo4W5ZI2Shu6iDeDEdo1AZGAaeMxzxAY7TPgo88n7HPm[m
[31m-        I/4rgdzxEwK1SuwLNJfwnatarn5qzDvNYvgLOUADtEATaXNAGs2UVgOF+4ORoJneieKc0Mc0O2Cqx2if[m
[31m-        AR99PmG/lyN+WskDgZZlLVfXOhb/7hlCsxh8wcEZliBN0EYa/Rg0AZGA6SUnMNN1FpFYtDvii0UeRo9M[m
[31m-        9RjtM+Dr4YT9WiX2U0Fi7/qW8J4qjMF3HCT2qZ9hAiJBfNwkafdq8ARmUamuwDpBniM5gBU+Qj/9PlM9[m
[31m-        RvtDnD6/WYolPFPHcg85IwYfc5AojdAqUDZpk7QbKTwuXCkwM2BZubBAN3/Yi7V9lncZObLIc5PQ2xnt[m
[31m-        a5BBP5NnSNMYooADZ0zAwDBfwiJp+LbAGI5l5XSBASGR/rAXo0RCBP0Fc8mMs5+p3pmplrd/I8v3ftMY[m
[31m-        ooEDaYVm0m67NPxUeEy4VCCyMxbIdlrIAIFpH2v7LO/2chZ5NNdkqpf/gyYxRBEHzhSRdYI4ZyWxr8Ae[m
[31m-        DRtK7BkUyS4CsH7MnJFQwYrSW84KnxYc8vaoY0k6+BiihwM0cxaLCiYuk5bvC2wqoS0DfFZ3M40D+IXR[m
[31m-        P1M/dvXYgRvqLO+2SLUCfetboaGNY4giDtAM7aQhg0H2aOjS0RaNU4RMawIMAJn70/+zpcuu3ijW9uNa[m
[31m-        l7dC7zS0IsMaxxBFHKAZ2knDndKSDbp/C6wOsrjHWC/TQBA3VBSYKtBXsLEwns2HeK0/F32voRX7sFEM[m
[31m-        UcRB0fcbWq4LHQPslpZTBbaSmQ42ESpkNQBuYB+5hUAyB/v5U/hy/kvLWpkP61vxjxr5HhVH1rNXthaJ[m
[31m-        KKgjGrhAM7RzdmUDAZaHyScgmYTtYk72TPkCGIAcPtK4WPolmWMGXy54WVkr93E9K/lRQ9+j9udp9uLG[m
[31m-        YvbS5qL2+rbC9taOQjZoV0EbsqeAfbg3n32yP6+N/iG3jf850ab8mstmHoy3uX/E2azf42yqfp/wc4KN[m
[31m-        +TG3jdyfxz7S59/fk98Gf1fQ+u9MsjdU3itbilja2Nq+5wGtyg+vZ0ntHAN8Ly3JyXg2GN3ZG2AqmMkA[m
[31m-        /MIUkOVf0rjY8p3FlwuqkPLD61qpjxv6HojTc31x672pmCNW3+2FbIDEe3d3ARv2fX4bEWIABEf4+X8G[m
[31m-        bI7ep/2WyyaGGADDDNH3BspA/VTOq4osfWSsOqojGrioIM3QzsnFyEjGQVOW9s8UTsnOACwTsvnDqhFp[m
[31m-        XHP4MoVUHFHXkoc38D3Sx6bba+vrWb9NdW3glnR7d1sdG7ojzYbvqmWf7q5pn39f3Sbsr2ZTDlS1mT+d[m
[31m-        bvN+OdUW/VrF5ut91k+n2bQfqtpE/X/s3uo2ak8NG/5dLRu2o7a9ty1N5dWxtzalW13VEQ1coFmIAcgy[m
[31m-        6imQQkbqWLYGYIGAeSKJiKR5zXUNUEmFpYxo4Hukj25lazeutE3b1trWnett266Ntv27TQ527N5kO3dv[m
[31m-        DoF+3xOC4P/5HNj+3Ubn+5SzeftaW795la1at8zSP2vlex7QCs2yGID8QsZ3GIDx3mFdAHvG7BqRjUpC[m
[31m-        4jzXAJU/SbfUEfV9j/TRF9jWrVttz549tn//fvvxxx/tp59+sp9//tl++eWXYwKfBXyP7x84cMC+//57[m
[31m-        27Fjh61fv14GON/3PKAVmgUNsE9akjHkGqDFkQxAdikpyWSlzid/j4HEqSPTrdwn9X2PemPOt+3btzvi[m
[31m-        I/hvv/1mv//+u/3xxx/HDb538OBBpxxMsGvXLtuwYYPVU5SJBi7QLDgIdA1AVO8guAbIlCHEL0QADEBe[m
[31m-        Ogmfhwxw2sg6VkHTH7+jvgywc+dO58xFPIQ/0deff/5pgHKIBrt377aNGzda/TGtfM8DOqFZiAHIusYA[m
[31m-        XFvAXg9b/ocZgEuVyB4hiwQDLHAjQNVP61glFep3NPy8lXOmIhhnMAJ6efF9yiEK0K1gAOrwOw+0D82y[m
[31m-        GIBu/ZgN0CdogP0UUm1Ump0yqq7v0WjseY4B6MO9nP2hpqGcX3/91RkHYADqiAYu0OxEDMC1a0SATAao[m
[31m-        rsKqyAB+R5MIGIAoEGoA6vA7D7QPzU7UAOSVY4CFXLhRSBGg5mdpdtpn6b5H03HhjwBZDUAd0cAFmqGd[m
[31m-        cyFOxpVXDOxvOtoYgAiAAbhm7ZABao+ubaePTvc9mo0/N+xdQFYDNBt3ru95QCs0CzEAqWEnaoBUS1Nh[m
[31m-        1UbX8T2anwQDUEc0cIFmhdopH4BLzwKBUAOQFZTtLKCG/pFNBEi19DG1rMaYOr7HWRPOiXgEOGv8Ob7n[m
[31m-        Aa3QLDwGuDzV6n5ey2pqp83vaDEx8gZoIZP5nQfah2aFpJ33CKBC6o2tabXHpvkeZ088O+IRgDqigQs0[m
[31m-        OxEDcEuWTIPAwjJAAxVWZ1xt3+OcSZE3AHVEAxdohnbHGwEwAAmhh2YBFNJoXA1LlwH8jvMmt4x4BDhv[m
[31m-        Ukvf84BOaBY2AzRWYfXG1/I9zj8JBmilOqKBCzQLmwGajq9uDSbU8j0umBL5CEAd0cAFmnkxADdjchaC[m
[31m-        KOSMCdWt4cSavkfrqS0i3gVQRzRwgWZhM0DzidWssQzgd7SdFjkD7N2719kMaisD+J0H2odmYTFAEUWA[m
[31m-        M1VY00k1PKH55OrWcmq1iOLymc2dCMD2bbh2A1kKJrHENUA71RHp44Arr3yjGdqd6CzgUBdAIS0mVbNm[m
[31m-        k2t4QpelqTZIKdakWYN3giBj970gSN8GpGODD4CyeYcKZPUO25vfSe8GpG2Dj/eBvDZc+GxvxYgbgDrI[m
[31m-        LqY+QP1uW9y2DVO7aC/tBhyDe0zuMbrHzPEDlw+4gSuvfKNZ2AzQclJVw5VewPp5QPfSSdSdRQroQtOi[m
[31m-        wxo56dXkr1X6tK6zw8YKljOFmVBTBChiTKtm58843S6afaq1m1vF2s8/xW5YVMk6flnB7vimnN2zpKzd[m
[31m-        vyzFHl6RbI+vKm0vrq1p3333XUQiwL59+2zTpk32yobq1m1dSXtidSn798pke2B5GfuHBOu8uJx1+qq8[m
[31m-        3biool2z4BS7fF5lu1jtbj3zdDtnmvibUt3pOphB1NJxVtWGzSk6btLLSn/cwLnqiotvuQdDdS3leuHa[m
[31m-        ibbSLGwGOGdKVTtLB+AFHNTJMACZO+zfe80GcpNC3LQw8gI3b958UgzAWr4XrvkumoXHAFek2rlTTvfc[m
[31m-        77WZ3NZajbnP2oz9h108/l5rN/Eeu2ry3XbN1Lvshul32s0zOtuts+6wznNus3vm3mr3ze9k/1rY0R5a[m
[31m-        dIs9+uXN9uTXN1rXxR2s+5Ib7Pll11vv5dfZSyuutddWXWNvrrna+q9rb8M23u4kcJLHFy4DYATGE6SZ[m
[31m-        kW84fFMne2fDVTZA9fVb095eX321vbzyWuuj9vT69nrrsfQG66Z20t7HvrrJHv7iZntgUUfrsqCT3Tvv[m
[31m-        VrtTx3fb7NvtlpmdrcP0znatjv+qyXeJj7vtkvH3iJ97rO3kNp75RrMi0s77GECFnDf1dDtb4dgLXv6m[m
[31m-        u23ZssVJr4ZIQjWJll7BGQ8YpCF+OM/+rFGAZFO6AtLDqNNr2/k+PDBwhRdS2plpvPRVN09coxOahcUA[m
[31m-        RWWA86edZudOr+oJry3p4RwoQv3www+H8vWPJ2c/p9x+RGek7mYCh/PsDzUBCaLUQ33Hep1BTp8Lvf4A[m
[31m-        PjAWZuAkefnrZz1xjVZohnaeIwCFtFZh56lQL3h9aU/nrOEsgkDEOtGc/dA8fzd92333kgV8tO9mretE[m
[31m-        rjfI+h14gA+6GE6Obdu22SsygBeu+S6ahc0Abaaf6ozGvaDvsp7OAXJGhCNl+2hiRcv/MZWbeUwXxoUt[m
[31m-        r33TzRPX6IRmYTPAhSqM6YwXvCkDEOYi0UdHi9g5tdNdbKIrYCyAAbxwzXfRLEwGSLGLZpxqbWad5gn9[m
[31m-        vs0wAH1oJProaDaBO9Wke8QAry/u5olrtEKzolfoJlHHmRPo5gMcWgmkkEtmVrGLKNQD3pIBuGYvZoDD[m
[31m-        rRpqAGZIb8gAXrjmu2gWFgMUkwEuVWGsannB28t7xAxwhDDFYJAIgAH6ygBeuOa7aIZ2niMAhbSbVdku[m
[31m-        naNCPaB/zABH7KVCDfDmkmc8cY1OaBY2A1wxu7KzFu8FA1bEIsCRHJDVAF645rtoFjYDXDlHmxsq1Ati[m
[31m-        BshZ/qxjgH5Ln/HENTqhWdgM0F6FXandLS8YuKJ7bBaQgweyGuAtGcAL13wXzcJjgCtTrP3cSnbV/Mqe[m
[31m-        EDPA0SOAuw7w1tKunrhGKzQrJu08DwKLq5Br51Wyq7XH7QWDFAFYCWQhKFzZOtE89w9te9aFoP4ygBeu[m
[31m-        +S6aoV1YDHDdvIp2LYV6wOAVzzq7aGyCuNu1sQUhcxbF3LuQsE7CUnD/ZV09cY1OaBY2A1w/v6Jdt7CS[m
[31m-        Jwxe0c3Z7WK9GxO4G0KYwd0YgogTBVElkhtCbtnUc6JtdL/nHjPvLIyxP0L45wRhS3jAsqc9cY1WaBY2[m
[31m-        A3RYUNFJxfKCwSuecZY52RFkSRgjcNAsfngBu2jAvSuYa4Rwdw+U64rl1uml3XyX44cHznzEZ7ucrKOB[m
[31m-        MoAXrvkumoXNADcuqGAdvqjoCYOWP+3k1OFwwhxmcJNDWP3yAogjujDGCOf9gUJzAYhYiEUSB/V5aW/o[m
[31m-        d+EAPtgGRnxuRTdw2VOeuEYrNAubAW5eWMFuVqFe0HvJrTZ+5fs2YeUHNmFVBiaGDUNt4uqhNmPdSCe6[m
[31m-        hDMlzO2jOWMRaurqEWq36gtT210uHF7EDxy9uKSTJ64dnaRZWAxQQiPJWxaWt1uUiet33Pd1A6eLCeeW[m
[31m-        sztHJ0wTwajD7zw47ZNmaOd5FkAhnRaVV8pzBd/jn9/Uj2haOPl6XVRHNHCBZmEzwG1flLPbvi7ve9y/[m
[31m-        uF7ELwyhjmjgAs3CZoDbvyxnt8sAfse/ggYI50DQvUuYe2kYdfidB6d90ixsBuj8ZVnrrCtx/I4Hl9SN[m
[31m-        2NXBrgEeXFzX9zw4OkmzsBngzq/K2p269Mnv+L8IGsC9VSx1+J0Hp33SLCwGKHlVGbv761S7W9fh+R0P[m
[31m-        L41cBHANQB1+58FpnzRDO8+zAAq5R4Xdq0L9jkeWpUesC3AN8G/V4XceaB+ahc0A936T6lwB63c8ehIM[m
[31m-        QB1+54H2oVnYDHDf4hTrsizV93js2zoRjwDUEQ1coFnYDNBFhd3/rf/xxPLIG4A6ooELNAubAe5fUsYe[m
[31m-        kAH8jqdWpEU8Ajy1PM33PKATmoXFAKU0CHxgaRl7UHfC8DuePgkGoA6/80D70AztPM8CKOTBpcn20Ioy[m
[31m-        vkfXlZGPAF1lgGjgAs3CZoCHliU798PxO7qtqh3xLqDbytq+5wGd0CxsBnj429L2yKpk36P7STAAdUQD[m
[31m-        F2gWNgM8sry0Paa7cPkdPVbXingEoA6/80D70CxsBnhUhT2x2v94bk34DZD1sXE9VUc0cIFmYTFAaQ0C[m
[31m-        H19Ryp5c4388v6ZmWB8c6d4hjIRTdymYOqKBCzRDuxOdBRx6XgCFPLGylD0tA/gdvXSjyNBHx3q97sBN[m
[31m-        ByO/wH1yaC8ZwO880D40C48B2pexp1aVtGd0d0y/48V1NZxMY/d2ce5NqLLe3OlYfnfz/8kvJCGUrGMy[m
[31m-        dqnD7zzQPjQrLe28RwAV8rQK4/aofkdviUN6NckbiEbodm8hR06/eyu50Aszsl6k4X7OvRWce29AIgsG[m
[31m-        oA6/80D70OxEDZDpmUEU8szqEtZ9vf/xn/XVndx68vbpszEC2bwuiAxHg/tZ0ssBoZ+zH2OtX7/eqCMa[m
[31m-        uECzEzHAYc8NpJBuKqynDOB3vKQbOXOWYgIuQEE0QD7/8cL9LuVQHhnBa9euNerwOw+0D83CYoDk9snW[m
[31m-        fU1xe26D//HChhR7b0O7iII6ooELNEO74x0DHBYBKKSnCuu1MYZo4gDNjtcA1bN7dCyFPLe2mL24KYZo[m
[31m-        4gDNwmaAXuuKWZ/NMUQTB2gWNACPjz/up4f3cZ8aRiEvrCtq/9kcQzRxgGYhBlh4PI+Pv0sfxgALGECU[m
[31m-        vKKMPb+mqL28JYZo4gDN0E4aEgEwwAvCTULLnB4fzxigrZDJACUuL2OvrC9sr24tEkMUcYBmaJfFADce[m
[31m-        qwF6ByPAvkIXp9jAzfntNR18DNHDAZqh3fEYoJpEbyPcKWCA+c6Xzy1nr6xKsgG7kuyN7YVjiAIO0OrV[m
[31m-        VQUN7UIM0Eua5hgBEvVP1wCdgwOGQwa4YXo5G/dTor25vZD1FQEx+JcDNEKrDjMk/uEG6CBtWwiVhdzC[m
[31m-        oRcGqCq0Fu4IDhjmyT17KaTk4Ho26/d450GJ/XYUisHHHKARWiW/UzfUAAuk6fPCDSEGQPPDDHCB/nJ7[m
[31m-        8MNzXQPE9W1ijyrRcN4fAeeJmG/vLBSDDzlAGzQiJSzhzcauAfY63Xkg8FzQAGcFI8BhBjhd/zhfuDX4[m
[31m-        4dmhBiirJ3zymFQq4NGpA3YmWf8YfMEBWqAJ2hABKoysl9UA86RpT+F64UzhFOEwA5ymP54ndBS6C7Nk[m
[31m-        gO/pAogA+d9vak0m1rBpv+WyBX8GbMLPCc5zfgdpwBHDX8cBGqAFmqANzxxOGto4qwHmSs8ewnU5GSBB[m
[31m-        /6ginC0wUuwqTJUBdocaoKieb3uOHko4VoOMhRZwKp38S4KNlPt4SLL7YOTYe8ZDsCMFuIZzuEcDtECT[m
[31m-        VnpcXMmPGmY1wB7nZA4EuglXC82EilkjAAaoJNA/ECaeECbKALuyGiB1RAM7Q4+S52nXVOxivhoy9484[m
[31m-        mxNDRDmAY7gO5Z6nj5+p5wWX14OoszHAbmk5XXhauEpomp0BcumP5YP/bK/3h4UxMsAOxwBvZHQBRAAM[m
[31m-        UHlUXas5Js066EnZg3YVtKm/5srUoNDGxX7OLFa4+IBzHjV/8xcVLG1sbefp6zkYYJe0nCQ8KlwuNA5q[m
[31m-        zUl/6BWvn8oIDYR2Qhfh40Dp/BsCzVMt7qWGhxmAp4HXHVfLiQaXzqlidy0u6zxSnYTEHspIeWEju4fs[m
[31m-        HxSx17cVdtYQ3tZgZaAMQ/QgPH6gUPbh3nwaXOa1TxTSPj2Qxz77IY+N+TG3E9LGC/RvkxTqJuuAOehp[m
[31m-        v8XbjIPxNlNgujP79zgHRB7ODgZCgLPEBWFyAV1WSMTKSQj3c3wntAy3XOpwIl2w3ll6py20abraRhun[m
[31m-        CLR5oto+/udEZ17+uY5p9A+5bZSOceT+PM6g7SMdO+H8/T35jbOYk4mBNVPtN8QZy+9sQLENTRLKs+tK[m
[31m-        2FPK+L13SarzRBHO+gYTajqPoz/MAC83NLSThluckzkQeEC4NKhxqt456TO9Sui3NIH9gNuEwYGCiYsD[m
[31m-        TVMs7rE6ORqgqQzQYmo1u0BPq+RpVTyt4nrdrbqj7lZ5u+5Wxe1KuJ7+oRXJ9rguLum6tqSTU9dLBuHg[m
[31m-        OEgWljAHg0mI+EDmwBjDNev45EBeh7TRjilyO4ROdAyR4JA9XQMfxxAyA4Zwu6B5mOHPjHAJTtwAGeW4[m
[31m-        3dvsYD2O4AcxJIJnmHRCUGwMjJExdKjQQ3RsnLWM2hGZE+MlbbIhcE8JTDIn1xw8oik3V/jepzt9cMOn[m
[31m-        W78q79w7+Or5p9hlEr6tHgt3zrSq1nzyEQzweJqhnTRcIS0/EljgQ9t0IVngpM/0KqTfWAw6V2Ac8HIg[m
[31m-        Tn1Hg9IH466rEjNAcGwTLQaIv76KoZ00ZA2gv8AiELO8GkKxrOLze16honCGQF/xiDAiUCFpW6BZiuXr[m
[31m-        2yDTGMDtAmIRwH8RoGC/+oZmgfJJO6XhOOEZ4QqhucBsr0B2BqBPIDTUE9gUoht4I5AvYX6gYfLBhI56[m
[31m-        FOnQ/w4CYwbwaRfwYUNLlFaBBsm/S7uvpeE7Aqn+5HsyxisrZFoECjWD2w0wHWTKwMhxuGYDGwNnpFiB[m
[31m-        J2semgXEDOBPAyQ9WcPQKlA2aau0+1x4VrhGYI3HDf9x2UUA/sYOUblgFGDAcIvwciA+bmKgVokDcWel[m
[31m-        WokXaznTwJgB/GeAUr1rGhoFapb4QZrNlHb0/eztXCw0FFjryZeT+O7fiQJsFzIWuCQYPt4M5I6fGUgr[m
[31m-        +WNci1Qr9Uw1q/5ZmjMNjI0BfDAGGFPbkrtVNbSRRj9JK3b/3hWY+jGtZ/2fvR4Gfzme/a4BGAvwQfID[m
[31m-        GDRcJvxTGOiYQJGAEFPkjlOs5tAaMQP8xdPA2sOqW9E7KmWEfc78DPE/EBjEXym0EGoJpYQc+/6sUYEP[m
[31m-        MiCsGSwAE9wvvKnQMkn9yyYGhnEaaRbrWMGq9a5szT4+1Vp9XsUunKDHzE6qaNdMLW8kknScVdbumJNi[m
[31m-        d89Lti4LS9uDX5S0h78saY9/XdyeXlzMnl1a1J5bVsReWF7Y+qwo5GQfvb66oPVdW8DeWpffBqzPZ4M2[m
[31m-        5LN3Nua19zbltQ8257FhW3Lbh1tz28dbE234tkQbsU37EdsT7FNh1I5cDkbv/C/G7Iy3Mbvi7fNjBJ91[m
[31m-        viO45XwWLPfTHRl1fSKMUN204SO1hTYNVduGbMpj76qtgzfktYFq+9s6hn46ljfWFHSydF5amWS9dZzP[m
[31m-        f1vYui8tYl2XFLMnvyluj3xVwv5P3Ny/UAs985Ptzrll7NbZqXbjjLJ27bTyduWUinbJxErWelxlO2t4[m
[31m-        FavRp7IV71TB0MAZ8NHnZ4R9znxXfKb0dQQGfszyjutFX8GKEYtDuAgTkDD6qjBSI8xFmiJud+aaWnCI[m
[31m-        PzPF8pyfankv0JQRtE6x/EKBIAq2KWMgKYhCei/UNgOF2yY7KAIuzEDRLCim3x1cVNpB8RxQQn+PJHKq[m
[31m-        l787bbsQZLQ19Bjc4+IY3ePl3eXA5cXlqUDrMg53cAjgFG7hGK6dRR64Z6qXMdpnwEefT9jnzEd8ZnQV[m
[31m-        hCThqKE/O3e4JiASsIvEwPBm4XHhbeFTFTtbq03LtOS4SbOFnc4OYrmkPc5WMhlF/8U+Jz8tZ+x3rmP7[m
[31m-        e+FonITyB6dwu8tZ3mWFL2ORh3k+Uz1G+wz46PM5YeuEiH/Yql92Yuf0t/z6B/sEjAnYSCBtDIexTvCY[m
[31m-        0Fd4XxgljBemCoSiOQKJCDQS0DcBctSzgitX/q7Ijg/+BlfwBofs57Oly64eGzus7bO8yxnPIg/zfKZ6[m
[31m-        jPYZ8NHnE/Y58z2Jr+87L6aHxQWmEXUFBoekj10arJgsIgaK/xbYSiafAEeShEAmCvlogMxUwEUKLl7U[m
[31m-        z393hPLhcgRfpHHBHzyyn8+WLmszhHnW9lneZYWPRR7m+Uz1GO0z4KPPP6Gwr+9l+2J2UFBgnYBK2FRg[m
[31m-        b5mKMQPuY5xAdGBLGUeSgcK+Ag0FZKWScBKKm/R7DJk5gSeXM/iDR5I5WJxjmf5Sge6YtX1ORlb4WOTh[m
[31m-        BGUGd8yjfX32uF959I3CAt0CFbKBVFtgwNFIaCKwhsCYgXDEqiJoEQSXJmUHjPR3Q05cuFzBGxwC+OSE[m
[31m-        oxtGcE5ARGdtn3CP8IzZwnrWq7xsX1RCQgHjgyICISdFIDow6qwoYA6SDwELSy5ocAxH5iCUL5dDOAUk[m
[31m-        7jA7Y5qO6GzscMafFOGPZAi6CEwBaFB2YCwRw7FxkBOH8AvXYRnc5SRo7O9/Ewb+H28CnE70a6ikAAAA[m
[31m-        AElFTkSuQmCC[m
[31m-</value>[m
[31m-  </data>[m
[31m-  <data name="$this.Icon" type="System.Drawing.Icon, System.Drawing" mimetype="application/x-microsoft.net.object.bytearray.base64">[m
[31m-    <value>[m
[31m-        AAABAAUAEBAAAAAAIABoBAAAVgAAACAgAAAAACAAqBAAAL4EAAAwMAAAAAAgAKglAABmFQAAQEAAAAAA[m
[31m-        IAAoQgAADjsAAICAAAAAACAAKAgBADZ9AAAoAAAAEAAAACAAAAABACAAAAAAAEAEAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAA////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEAAAADAAAAAwAAAAMAAAAD////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BAAAABQAAAA0HBwcZLy8vXTk5OY03NzeTLy8vcRQU[m
[31m-        FCcAAAANAAAABf///wH///8B////Af///wH///8B////AQAAAAc2NjZHSUlJ30lJSe9CQkK7Pj4+sz4+[m
[31m-        Pt08PDz1Li4uewEBAQf///8B////Af///wH///8B////Af///wFFRUU1U1NT9UxMTMkkJCQPAAAABQAA[m
[31m-        AAUFBQUFNjY2VTw8PPEyMjJ7////Af///wH///8B////Af///wH///8BVVVVxVVVVcFcXFzzU1NToz09[m
[31m-        PQv///8B////Af///wE4ODhLOzs75yEhIQ3///8B////Af///wH///8BPz8/GV9fX/9GRkYnV1dXK2Fh[m
[31m-        YddaWlrTS0tLJ////wH///8B////ATs7Owf///8B////Af///wH///8B////AVFRUS1kZGT9RERECf//[m
[31m-        /wFNTU0NY2NjqV5eXvFQUFBV////Af///wH///8B////Af///wH///8B////Af///wFISEgPa2tr+1xc[m
[31m-        XDn///8B////Af///wFgYGBvXl5e+VFRUY05OTkF////Af///wH///8B////Af///wH///8B////AW9v[m
[31m-        b61vb2+7VVVVBf///wH///8B////AVxcXDtbW1vjTk5Owz4+Phv///8B////Af///wH///8B////Af//[m
[31m-        /wFqamode3t743h4eLlra2st////Af///wFOTk4TVVVVlVZWVv1LS0tT////Af///wH///8B////Af//[m
[31m-        /wH///8B////AXV1dR+BgYGzf39//XNzc+dqamrdZmZm+19fX9lVVVVH////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AW5ubh92dnZRb29vW2JiYjNISEgD////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAA//8AAP//AAD//wAA//8AAP//AAD//wAA//8AAP//AAD//wAA//8AAP//AAD//wAA[m
[31m-        //8AAP//AAD//wAA//8oAAAAIAAAAEAAAAABACAAAAAAAIAQAAAAAAAAAAAAAAAAAAAAAAAA////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEAAAADAAAAAwAAAAMAAAAFAAAABQAAAAcAAAAHAAAABQAAAAUAAAAFAAAAAwAA[m
[31m-        AAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAAAAMAAAAHAAAACQAAAA0AAAARAAAAEwAAABUEBAQbDQ0NKw8PDy8LCwslAAAAFQAA[m
[31m-        ABMAAAARAAAADQAAAAsAAAAHAAAAA////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEAAAAHAAAACwAAAA8AAAATAAAAFw8PDy8sLCyDOTk5yT4+PvVAQED/QEBA/zw8[m
[31m-        PP02NjbpLy8vsR4eHmEEBAQbAAAAEwAAAA8AAAALAAAABwAAAAP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BAAAAAwAAAAcAAAALAAAADwkJCRszMzONRUVF9UxMTP9MTEz/S0tL/0pK[m
[31m-        Sv9ISEj/R0dH/0RERP9BQUH/PT09/zIyMtkfHx9TAAAADwAAAAsAAAAHAAAAA////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAAAAUgICAjQkJCzVBQUP9QUFD/S0tL/T8/[m
[31m-        P8MzMzOFKCgoZSQkJF0qKipvNTU1mTs7O+FCQkL/Pj4+/zk5Of0pKSmLBwcHBwAAAAP///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BLCwsF0lJSdlUVFT/UlJS/0ND[m
[31m-        Q7coKCgvAAAABwAAAAkAAAAJAAAACQAAAAkAAAAHCQkJCSwsLFs8PDzlPj4+/zs7O/8sLCyP////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AS8vLwNISEi3VlZW/1dX[m
[31m-        V/9SUlL9Pz8/cTExMQP///8B////Af///wH///8B////Af///wH///8B////ASIiIhU5OTnHPj4+/zo6[m
[31m-        Ov8oKChb////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BPz8/U1hY[m
[31m-        WP9ZWVn/WVlZ+1tbW/9YWFj/SEhIqTMzMw////8B////Af///wH///8B////Af///wH///8B////ASEh[m
[31m-        IRE9PT3ZPDw8/zQ0NOccHBwL////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFRUVHDXFxc/1FRUds9PT0tXFxcz2BgYP9dXV3/UVFR1T09PS3///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AS8vL0NBQUH7Ozs7uSIiIiP///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BNzc3G1tbW/1fX1//SUlJcf///wE3NzcLWVlZn2RkZP9fX1//WFhY80VFRVv///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ATs7Oxv///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFDQ0NJY2Nj/19fX/8+Pj4r////Af///wH///8BVVVVZWZmZvdhYWH/XV1d/0xM[m
[31m-        TJU3NzcH////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AVBQUF9lZWX/Xl5e+0FBQQ////8B////Af///wH///8BTU1NM2Vl[m
[31m-        Zd1kZGT/YGBg/1JSUsc+Pj4f////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BUlJSV2hoaP9jY2P9RUVFFf///wH///8B////Af//[m
[31m-        /wH///8BQ0NDE2FhYbNmZmb/YGBg/1ZWVutFRUVJ////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFISEg3a2tr/2pqav9PT09F////Af//[m
[31m-        /wH///8B////Af///wH///8BQ0NDA1xcXHtmZmb7X19f/1hYWPtISEh/Ojo6Bf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUxMTAdpaWnvbm5u/2Fh[m
[31m-        YZv///8B////Af///wH///8B////Af///wH///8B////AVVVVUNkZGTpXl5e/1lZWf9LS0u3OTk5Ff//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AWlp[m
[31m-        aZlxcXH/bm5u91ZWVif///8B////Af///wH///8B////Af///wH///8B////AUlJSR1gYGDFX19f/1dX[m
[31m-        V/9NTU3fPT09N////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BVlZWI3R0dPd2dnb/bW1tzVVVVQ////8B////Af///wH///8B////Af///wH///8B////AT8/[m
[31m-        PwdZWVmPXV1d/1VVVf9NTU33Pj4+af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8Ba2trcXt7e/97e3v/cXFxz2BgYCP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFOTk6dV1dX/1JSUv9QUFDvMzMzH////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFYWFgDcnJyk4CAgP9/f3//eXl5825uboteXl4nVlZWA///[m
[31m-        /wH///8B////AUxMTAdOTk5FVVVVt1lZWf9XV1f/V1dX80REREH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFgYGADdXV1dYSEhPeCgoL/f39//3h4[m
[31m-        eP1wcHDfampqvWZmZrVjY2PDYWFh72JiYv9fX1//Xl5e/1paWttEREQ1////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BbW1tK4CA[m
[31m-        gKmCgoL5gYGB/3l5ef91dXX/cXFx/2xsbP9paWn/aWlp/2JiYulZWVl9QEBADf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AWNjYxlxcXFfeHh4k3V1dbNxcXG7bm5urWhoaIVVVVVJSEhICf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAKAAAADAAAABgAAAAAQAgAAAAAACAJQAAAAAAAAAAAAAAAAAAAAAAAP//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AQAAAAMAAAADAAAABQAAAAUAAAAHAAAABwAA[m
[31m-        AAcAAAAJAAAACQAAAAkAAAAJAAAACQAAAAcAAAAHAAAABQAAAAUAAAADAAAAA////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAAAAUAAAAHAAAACQAAAAsAAAANAAAADwAA[m
[31m-        AA8AAAARAAAAEwAAABMAAAATAAAAFQAAABUAAAATAAAAEwAAABMAAAARAAAAEQAAAA8AAAANAAAACwAA[m
[31m-        AAkAAAAHAAAABQAAAAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AQAAAAMAAAAFAAAACQAAAAsAAAANAAAAEQAA[m
[31m-        ABMAAAAVAAAAFwAAABkFBQUhExMTSSAgIHsnJyedLCwsrSwsLLErKyurJSUlmx4eHnkTExNFBAQEHwAA[m
[31m-        ABcAAAAVAAAAEwAAABEAAAANAAAACwAAAAkAAAAFAAAAA////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAAAAUAAAAJAAAACwAA[m
[31m-        AA8AAAARAAAAFQAAABcAAAAbFRUVRysrK6U5OTnrQkJC/0hISP9ISEj/R0dH/0ZGRv9ERET/Q0ND/0BA[m
[31m-        QP85OTn/MDAw5yQkJJ8SEhJBAAAAFwAAABUAAAATAAAADwAAAA0AAAAJAAAABwAAAAP///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAcAAAAJAAAADQAAAA8AAAATAAAAFRYWFjsyMjK3RERE/UxMTP9MTEz/S0tL/0pKSv9KSkr/SUlJ/0hI[m
[31m-        SP9HR0f/RkZG/0RERP9CQkL/QEBA/z09Pf81NTX7JycnrxERETEAAAATAAAADwAAAA0AAAAJAAAABwAA[m
[31m-        AAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAAAAMAAAAHAAAACQAAAA0AAAAPKSkpeURERPVPT0//T09P/05OTv9OTk7/TU1N/0lJ[m
[31m-        Sf9BQUH/PT099zs7O/M8PDz5Pz8//0RERP9GRkb/QkJC/0BAQP8+Pj7/PDw8/zIyMvEfHx9rAAAADQAA[m
[31m-        AAkAAAAHAAAABf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BAAAAAxMTEw00NDSlTk5O/1FRUf9RUVH/UVFR/01N[m
[31m-        Tf8+Pj7jLy8vkx4eHlEODg4rBAQEGwMDAxcEBAQbDg4OLRsbG1UrKyuXODg450NDQ/9BQUH/Pj4+/zw8[m
[31m-        PP84ODj/JSUllw4ODgcAAAAD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BMDAwBzo6OqtSUlL/U1NT/1NT[m
[31m-        U/9SUlL/QUFB3SoqKl8LCwsNAAAACwAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAAJDAwMDyQk[m
[31m-        JGU4ODjjQkJC/z09Pf88PDz/OTk5/ycnJ50bGxsD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BOTk5i1RU[m
[31m-        VP9VVVX/VVVV/1RUVP84ODi5KSkpDf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEfHx8TLy8vo0FBQf89PT3/PDw8/zk5Of8kJCR7////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEyMjJFUlJS/VdXV/9XV1f/V1dX/1hYWP9OTk75ODg4dzExMQP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BIiIiAysrK4FBQUH/PDw8/zs7O/81NTX7Hh4eOf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////ATExMQVISEjVWVlZ/1lZWf9ZWVn/Xl5e/1lZWf9ZWVn/VlZW/0FBQa0zMzMR////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wEuLi6RQkJC/zw8[m
[31m-        PP88PDz/LCwsyRwcHAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ATY2NldaWlr/Wlpa/1tbW/9FRUXHU1NTx2NjY/9cXFz/XFxc/1tb[m
[31m-        W/9JSUnZNjY2Mf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEfHx8HOTk5zT8/P/88PDz/ODg4/x4eHkv///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AUtLS8FcXFz/XFxc/1VVVf01NTU1NTU1CUxM[m
[31m-        TJVlZWX9X19f/15eXv9dXV3/UVFR8z09PWE3NzcD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BJiYmQ0RERP08PDzbOzs7fygoKB3///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BNjY2GVZWVvldXV3/Xl5e/0tL[m
[31m-        S785OTkD////Af///wFERERdY2Nj8WNjY/9fX1//X19f/1hYWP1ERESZNzc3C////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BICAgAzs7Ozc0NDQF////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BOjo6T2Fh[m
[31m-        Yf9gYGD/X19f/0JCQm3///8B////Af///wH///8BPj4+L11dXdVoaGj/YWFh/2BgYP9dXV3/S0tLyzk5[m
[31m-        OSP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BRUVFdWVlZf9iYmL/XV1d/z4+PjH///8B////Af///wH///8B////ATs7Ow9WVlapa2tr/2Ji[m
[31m-        Yv9hYWH/X19f/1JSUu09PT1N////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BT09Pi2VlZf9kZGT/W1tb+0BAQBX///8B////Af///wH///8B////Af//[m
[31m-        /wE8PDwDTk5OcWlpafllZWX/YWFh/2BgYP9YWFj9REREhTo6OgX///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BUlJSj2dnZ/9mZmb/XV1d+URERBP///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AUVFRT1kZGThaWlp/2JiYv9gYGD/XFxc/0lJSbs8PDwZ////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BUVFRfWpqav9oaGj/YmJi/0ZG[m
[31m-        Rif///8B////Af///wH///8B////Af///wH///8B////Af///wFDQ0MZXFxcu2tra/9iYmL/YGBg/11d[m
[31m-        Xf9PT0/hPj4+Pf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BSEhIXW1t[m
[31m-        bf9qamr/aWlp/0xMTFf///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BQ0NDBVRU[m
[31m-        VIdra2v9YmJi/19fX/9dXV3/U1NT90FBQW85OTkD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BSEhIK2pqav1ra2v/bW1t/1hYWJ3///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFLS0tPZmZm7WVlZf9eXl7/XFxc/1ZWVv9FRUWnOzs7D////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BWVlZA2ZmZt1tbW3/b29v/2RkZO9RUVET////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BRUVFI15eXstnZ2f/XV1d/1tbW/9XV1f/SUlJ1zk5[m
[31m-        OS3///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AVxcXIN0dHT/cXFx/3Fxcf9aWlqF////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUNDQwtWVlaZZ2dn/1xc[m
[31m-        XP9ZWVn/V1dX/0xMTPE8PDxd////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AU9PTxtwcHD1c3Nz/3R0[m
[31m-        dP9tbW33VlZWNf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BTExMY2NjY/NdXV3/V1dX/1VVVf9OTk79Pj4+lTY2Ngn///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFgYGCFeXl5/3Z2dv93d3f/a2tr4VVVVSH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AUVFRTNcXFzbX19f/1VVVf9TU1P/T09P/0BAQMc0NDQf////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFUVFQLb29v0Xt7e/95eXn/enp6/25ubuFcXFwz////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wE+Pj4RUlJSw1lZWf9TU1P/UVFR/1FR[m
[31m-        Uf9DQ0PBMTExA////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BWVlZKXh4eOl9fX3/fHx8/319ff91dXX3ZGRkeV1d[m
[31m-        XQv///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AURERA1JSUmBU1NT+VdX[m
[31m-        V/9UVFT/VVVV/1FRUeE2NjYf////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AV9fXzV7e3vpgoKC/39/[m
[31m-        f/9/f3//fX19/3FxceFlZWV7W1tbJVZWVgP///8B////Af///wH///8B////AU1NTQNKSkonT09PgVVV[m
[31m-        VeVcXFz/Wlpa/1dXV/9aWlr/U1NT5Tg4OC3///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFhYWEnenp604eHh/+CgoL/gYGB/39/f/99fX3/dHR0/W1tbd1mZmatYWFhmV1dXY9cXFyXXFxcq11d[m
[31m-        XdtfX1/9YmJi/2BgYP9dXV3/Wlpa/2FhYf9SUlLNOzs7I////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BY2NjDXNzc4+FhYX5h4eH/4GBgf9+fn7/fHx8/3l5ef93d3f/dHR0/3Fx[m
[31m-        cf9ubm7/bGxs/2lpaf9mZmb/Y2Nj/2BgYP9jY2P/YWFh90xMTIc8PDwL////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFnZ2cpeHh4nYKCgvOGhob/gYGB/3p6[m
[31m-        ev93d3f/dHR0/3Fxcf9vb2//bGxs/2lpaf9qamr/bGxs/2RkZPFXV1eZQ0NDJf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AWRk[m
[31m-        ZBNmZmZZdHR0n3h4eNF4eHjxd3d3+3R0dP1ycnL7b29v8WpqatNhYWGhT09PWUhISBH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFbW1sJWVlZGVZWVh1UVFQZU1NTC////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AQAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAA[m
[31m-        AAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA[m
[31m-        //8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAA[m
[31m-        AAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA[m
[31m-        //8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAA[m
[31m-        AAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA[m
[31m-        //8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//wAAAAAAAP//AAAAAAAA//8AAAAAAAD//ygA[m
[31m-        AABAAAAAgAAAAAEAIAAAAAAAAEIAAAAAAAAAAAAAAAAAAAAAAAD///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BAAAAAwAAAAMAAAADAAAAAwAAAAP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAMAAAAFAAAABQAAAAcAAAAHAAAABwAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAA[m
[31m-        AAkAAAAHAAAABwAAAAcAAAAFAAAABQAAAAMAAAAD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAUAAAAHAAAABwAAAAkAAAALAAAACwAAAA0AAAAPAAAADwAAABEAAAARAAAAEQAAABMAAAATAAAAEwAA[m
[31m-        ABMAAAATAAAAEwAAABEAAAARAAAAEQAAAA8AAAAPAAAADQAAAA0AAAALAAAACQAAAAcAAAAHAAAABQAA[m
[31m-        AAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAA[m
[31m-        AAMAAAAFAAAABwAAAAkAAAALAAAADQAAAA0AAAAPAAAAEQAAABMAAAAVAAAAFQAAABcAAAAZAAAAGQAA[m
[31m-        ABsKCgorEBAQPRISEkcTExNLExMTRxERET8NDQ0vAgICHQAAABcAAAAXAAAAFwAAABUAAAATAAAAEQAA[m
[31m-        AA8AAAAPAAAADQAAAAsAAAAJAAAABwAAAAUAAAAD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAAAAMAAAAHAAAACQAAAAsAAAANAAAADwAAABEAAAATAAAAFQAAABcAAAAZAAAAGwAA[m
[31m-        ABsODg43GhoadyUlJa0wMDDfNDQ09zg4OP07Ozv/Ozs7/zk5Of82Njb9MjIy+S0tLekmJia9HBwchRIS[m
[31m-        EkUBAQEdAAAAGQAAABcAAAAVAAAAEwAAABEAAAAPAAAADQAAAAsAAAAJAAAABwAAAAUAAAAD////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AQAAAAMAAAAFAAAACQAAAAsAAAANAAAADwAAABEAAAATAAAAFQAA[m
[31m-        ABcAAAAZBQUFIRkZGWMrKyvFOTk590VFRf9JSUn/SUlJ/0hISP9ISEj/R0dH/0ZGRv9FRUX/RERE/0ND[m
[31m-        Q/9CQkL/QEBA/zw8PP8zMzP7KCgo1xsbG3kLCwspAAAAFwAAABcAAAATAAAAEQAAAA8AAAANAAAACwAA[m
[31m-        AAkAAAAHAAAAA////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEAAAADAAAABwAAAAkAAAALAAAADQAA[m
[31m-        AA8AAAARAAAAEwAAABcCAgIZHBwcYzAwMNVERET/TExM/0tLS/9LS0v/S0tL/0pKSv9KSkr/SUlJ/0hI[m
[31m-        SP9ISEj/R0dH/0ZGRv9FRUX/RERE/0JCQv9BQUH/Pz8//z09Pf84ODj/LCws6RwcHIEICAgdAAAAFQAA[m
[31m-        ABEAAAAPAAAADQAAAAsAAAAJAAAABwAAAAX///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAUAAAAHAAAACQAAAAsAAAANAAAADwAAABEVFRUvLS0tuUVFRf1PT0//Tk5O/01NTf9NTU3/TU1N/0xM[m
[31m-        TP9MTEz/S0tL/0tLS/9KSkr/SUlJ/0pKSv9JSUn/SEhI/0ZGRv9ERET/Q0ND/0FBQf8/Pz//Pj4+/zw8[m
[31m-        PP84ODj/KCgo1xcXF0cAAAAPAAAADQAAAAsAAAAJAAAABwAAAAUAAAAD////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEAAAADAAAAAwAAAAUAAAAHAAAACQEBAQ0hISFTOjo6609PT/9QUFD/T09P/09P[m
[31m-        T/9PT0//T09P/05OTv9ISEj/PT099zMzM90uLi7DKysrqygoKKMpKSmpLCwsuy8vL9c3NzfzQEBA/0ZG[m
[31m-        Rv9ERET/QUFB/0BAQP8+Pj7/PDw8/zs7O/8wMDD3Hh4eewYGBg0AAAAJAAAABwAAAAUAAAAD////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwQEBAUnJydtRUVF+1JS[m
[31m-        Uv9RUVH/UVFR/1FRUf9RUVH/Tk5O/z8/P/cvLy+vICAgYxAQECkAAAATAAAAFQAAABUAAAAVAAAAFQAA[m
[31m-        ABUAAAATCQkJHRkZGVElJSWZNDQ07UJCQv9DQ0P/QEBA/z4+Pv88PDz/PDw8/zY2Nv8hISGhEhISC///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEtLS1vSkpK/VNTU/9TU1P/U1NT/1NTU/9SUlL/QUFB9SwsLJEaGhojAAAACwAAAAsAAAALAAAADQAA[m
[31m-        AA0AAAANAAAADQAAAA0AAAANAAAACwAAAAsAAAALAAAACQ8PDxUgICBxMzMz50RERP9AQED/PT09/zw8[m
[31m-        PP88PDz/ODg4/yMjI6UfHx8H////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEsLCxZSkpK+1VVVf9UVFT/VFRU/1RUVP9OTk7/NjY2vyUlJSkAAAADAAAAAwAA[m
[31m-        AAMAAAADAAAAAwAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAADAAAAAwAAAAMAAAAD////ARoa[m
[31m-        GhEmJiaZPT09/0JCQv89PT3/PDw8/zw8PP83Nzf/IiIik////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wEsLCwrRUVF71ZWVv9VVVX/VlZW/1ZWVv9WVlb/QUFB9y4u[m
[31m-        Lkn///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ASIiIlM4ODjxQ0ND/z09Pf88PDz/PDw8/zQ0NP0eHh5f////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEvLy8FPT09xVhYWP9XV1f/V1dX/1dX[m
[31m-        V/9YWFj/WFhY/1hYWP9KSkr5NDQ0ezExMQX///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BISEhPTc3N+1CQkL/PDw8/zw8[m
[31m-        PP88PDz/LS0t6xsbGyH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BMjIyY1VV[m
[31m-        Vf9YWFj/WFhY/1lZWf9cXFz/WVlZ/1lZWf9ZWVn/WVlZ/1JSUv87OzuxMTExF////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEhISFDPDw89UBAQP88PDz/PDw8/zo6Ov8jIyOj////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BMDAwCUZGRttbW1v/WVlZ/1paWv9YWFj/SEhI72dnZ/9dXV3/W1tb/1tbW/9bW1v/WFhY/0ND[m
[31m-        Q9szMzM3////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ASYmJnFERET/PT09/zw8PP88PDz/MDAw+xwcHCv///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ATMzM1VXV1f/Wlpa/1tbW/9cXFz/SUlJ7zQ0NCU/Pz+LY2Nj+2Ji[m
[31m-        Yv9dXV3/XV1d/1xcXP9cXFz/TExM8zg4OGkvLy8D////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEmJiYHMjIyw0VFRf88PDz/PDw8/zs7[m
[31m-        O/0hISGF////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFCQkK7X19f/1xcXP9dXV3/Wlpa/zs7[m
[31m-        O4P///8B////ATo6OlVbW1vtaWlp/15eXv9eXl7/Xl5e/11dXf9UVFT9PT09nTc3Nw////8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ASQk[m
[31m-        JEVERET9PT097zs7O6U5OTlDLy8vCf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wE3NzcVUVFR9V5e[m
[31m-        Xv9eXl7/Xl5e/09PT/M2NjYh////Af///wH///8BNzc3KVBQUM9tbW3/YWFh/19fX/9fX1//Xl5e/1pa[m
[31m-        Wv9ERETNNzc3Kf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEgICAFOTk5U0FBQRf///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BNzc3U11dXf9eXl7/X19f/2BgYP9FRUWz////Af///wH///8B////Af///wE7OzsNSEhIoWpq[m
[31m-        av1lZWX/YGBg/2BgYP9fX1//Xl5e/0xMTO06OjpT////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AT09PX1kZGT/YGBg/2FhYf9eXl7/Pz8/b////wH///8B////Af//[m
[31m-        /wH///8B////AT4+PgNBQUFpY2Nj9Wpqav9hYWH/YWFh/2BgYP9fX1//U1NT/T4+Pok6OjoJ////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFHR0ehZmZm/2FhYf9iYmL/Wlpa/z4+[m
[31m-        Pjv///8B////Af///wH///8B////Af///wH///8B////AT09PTdZWVndcHBw/2JiYv9hYWH/YGBg/2Bg[m
[31m-        YP9aWlr/Q0NDwTc3Nxv///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BTk5Ot2Zm[m
[31m-        Zv9jY2P/ZGRk/1hYWPlAQEAd////Af///wH///8B////Af///wH///8B////Af///wH///8BQEBAFU9P[m
[31m-        T7Nvb2//ZmZm/2JiYv9hYWH/YGBg/15eXv9KSkrlOzs7Q////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AVJSUsFnZ2f/ZGRk/2VlZf9YWFj1Q0NDGf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFCQkIFSEhIfWlpaftqamr/YmJi/2FhYf9gYGD/Xl5e/1FRUfk+Pj51Nzc3Bf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFTU1O3aWlp/2ZmZv9nZ2f/W1tb+URERB3///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFDQ0NHYGBg529vb/9iYmL/YWFh/2Bg[m
[31m-        YP9eXl7/V1dX/0NDQ605OTkV////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BUFBQo2tra/9nZ2f/aGho/2Bg[m
[31m-        YP9GRkY5////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUND[m
[31m-        QyFVVVXDcHBw/2RkZP9hYWH/YGBg/15eXv9aWlr/SEhI1zs7OzP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUlJ[m
[31m-        SYFubm7/aWlp/2pqav9nZ2f/SkpKaf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BQ0NDCU1NTZNsbGz9Z2dn/2FhYf9fX1//XV1d/1xcXP9NTU3xPT09YS8v[m
[31m-        LwP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFGRkZXbW1t/2pqav9ra2v/bGxs/1NTU6n///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFJSUkDR0dHW2RkZO9ra2v/YGBg/19f[m
[31m-        X/9dXV3/W1tb/1JSUv0/Pz+XOjo6Df///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BTExMG2dnZ/lsbGz/bW1t/25ubv9fX1/rSkpKE///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFDQ0MtWlpa0W5ubv9gYGD/Xl5e/1xcXP9aWlr/VVVV/0RERMs4ODgl////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFdXV3HcXFx/25u[m
[31m-        bv9vb2//a2tr/1FRUWn///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AUVFRRFQUFClbGxs/WNjY/9dXV3/W1tb/1lZWf9XV1f/R0dH6zk5[m
[31m-        OU////8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BUVFRaXR0dP9vb2//cXFx/3Jycv9fX1/fTU1NDf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BPDw8A0lJSW1lZWX3ZmZm/1xc[m
[31m-        XP9aWlr/WFhY/1ZWVv9MTEz7PDw8gzQ0NAf///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AVFRURNpaWnrc3Nz/3Jycv9zc3P/cXFx/1dXV4v///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BQ0NDO1tbW+Fqamr/W1tb/1lZWf9XV1f/VVVV/09PT/8+Pj65Nzc3Gf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BV1dXfXl5ef90dHT/dXV1/3Z2[m
[31m-        dv9sbGz7VVVVTf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wE/Pz8XUFBQt2pqav9cXFz/V1dX/1VVVf9TU1P/UFBQ/0FB[m
[31m-        QeM2NjY9////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUtL[m
[31m-        Sw1oaGjdenp6/3Z2dv93d3f/eHh4/2lpafFVVVU7////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUJCQgVGRkaDZGRk/V9f[m
[31m-        X/9WVlb/VFRU/1JSUv9QUFD/RUVF9zY2NnE5OTkD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BVlZWR3d3d/t5eXn/eXl5/3p6ev96enr/bGxs81tbW03///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUBAQEtaWlrpXFxc/1RUVP9SUlL/UFBQ/05OTv9PT0/9MzMzcf///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFeXl6Df39//3t7e/97e3v/fHx8/3x8[m
[31m-        fP9ycnL5YGBgg11dXQv///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AU1NTQNCQkJVTExM61ZWVv9VVVX/U1NT/1FRUf9aWlr/RUVFvTMz[m
[31m-        Mw3///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BWFhYBWRk[m
[31m-        ZKODg4P/fX19/35+fv9+fn7/fn5+/3p6ev9paWnTXl5eU15eXgX///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AUVFRTNKSkqxVVVV/VlZWf9XV1f/VVVV/1NT[m
[31m-        U/9eXl7/R0dHzzc3Nxf///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFcXFwJZ2dnoYWFhf+BgYH/gICA/4CAgP+AgID/f39//3d3d/1qamrTYGBgc1pa[m
[31m-        WidWVlYF////Af///wH///8B////Af///wH///8B////Af///wFMTEwZS0tLV09PT71XV1f5XV1d/1xc[m
[31m-        XP9aWlr/WFhY/1dXV/9hYWH/SEhIzzc3Nx3///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AWBgYAVmZmaFgoKC+4aGhv+CgoL/gYGB/4CA[m
[31m-        gP9/f3//fn5+/3l5ef9vb2/7aWlp2WFhYaVcXFyFWFhYc1ZWVmlUVFRtVFRUfVVVVZVYWFjHW1tb82Bg[m
[31m-        YP9iYmL/YGBg/15eXv9cXFz/Wlpa/1xcXP9iYmL/RkZGtTk5ORX///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AWVl[m
[31m-        ZU96enrjjIyM/4WFhf+CgoL/gYGB/39/f/99fX3/e3t7/3l5ef93d3f/dHR0/3BwcP9ubm7/bGxs/2tr[m
[31m-        a/9ra2v/aWlp/2dnZ/9lZWX/Y2Nj/2FhYf9eXl7/XV1d/2ZmZv9cXFz1QkJCfT09PQn///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BZGRkF25ubpGCgoL3jY2N/4SEhP+AgID/fn5+/3x8fP96enr/eHh4/3Z2[m
[31m-        dv90dHT/cnJy/29vb/9tbW3/a2tr/2lpaf9nZ2f/ZWVl/2NjY/9iYmL/aWlp/2VlZf1QUFC5QEBAL///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BZmZmI21tbZF+fn7rh4eH/4iI[m
[31m-        iP+BgYH/e3t7/3h4eP92dnb/dHR0/3Jycv9wcHD/bm5u/2tra/9paWn/aWlp/29vb/9vb2//ZWVl91NT[m
[31m-        U61DQ0M/////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BZWVlD2NjY1FsbGyfdXV133p6evt+fn7/goKC/4CAgP9/f3//fX19/3t7e/92dnb/bm5u/2dn[m
[31m-        Z+1bW1u5S0tLaUhISB3///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFdXV0TWlpaO1hYWF1YWFhxVVVVd1RU[m
[31m-        VHVRUVFnUFBQS09PTyNPT08D////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAoAAAAgAAAAAABAAABACAAAAAAAAAIAQAAAAAAAAAAAAAAAAAAAAAA////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAA[m
[31m-        AAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAA////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEAAAADAAAAAwAAAAMAAAADAAAABQAA[m
[31m-        AAUAAAAFAAAABQAAAAUAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAA[m
[31m-        AAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAA[m
[31m-        AAMAAAADAAAAAwAAAAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAAAAMAAAADAAAAAwAA[m
[31m-        AAUAAAAFAAAABQAAAAcAAAAHAAAABwAAAAcAAAAJAAAACQAAAAkAAAAJAAAACQAAAAsAAAALAAAACwAA[m
[31m-        AAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAALAAAACwAA[m
[31m-        AAsAAAALAAAACQAAAAkAAAAJAAAACQAAAAkAAAAHAAAABwAAAAcAAAAHAAAABQAAAAUAAAAFAAAAAwAA[m
[31m-        AAMAAAADAAAAA////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAA[m
[31m-        AAMAAAADAAAAAwAAAAUAAAAFAAAABwAAAAcAAAAHAAAACQAAAAkAAAAJAAAACwAAAAsAAAALAAAACwAA[m
[31m-        AA0AAAANAAAADQAAAA0AAAAPAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPAAAADwAAABEAAAARAAAAEQAA[m
[31m-        ABEAAAARAAAAEQAAAA8AAAAPAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPAAAADQAAAA0AAAANAAAADQAA[m
[31m-        AA0AAAALAAAACwAAAAsAAAAJAAAACQAAAAkAAAAHAAAABwAAAAcAAAAFAAAABQAAAAMAAAADAAAAA///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEAAAADAAAAAwAAAAMAAAAFAAAABQAAAAcAAAAHAAAABwAAAAkAAAAJAAAACwAA[m
[31m-        AAsAAAALAAAADQAAAA0AAAANAAAADwAAAA8AAAAPAAAAEQAAABEAAAARAAAAEQAAABMAAAATAAAAEwAA[m
[31m-        ABMAAAATAAAAFQAAABUAAAAVAAAAFQAAABUAAAAVAAAAFQAAABUAAAAVAAAAFQAAABUAAAAVAAAAEwAA[m
[31m-        ABMAAAATAAAAEwAAABMAAAATAAAAEQAAABEAAAARAAAAEQAAAA8AAAAPAAAADwAAAA0AAAANAAAADQAA[m
[31m-        AAsAAAALAAAACQAAAAkAAAAJAAAABwAAAAcAAAAFAAAABQAAAAMAAAADAAAAA////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEAAAADAAAAAwAAAAUAAAAFAAAABwAA[m
[31m-        AAcAAAAJAAAACQAAAAkAAAALAAAACwAAAA0AAAANAAAADwAAAA8AAAARAAAAEQAAABEAAAATAAAAEwAA[m
[31m-        ABMAAAATAAAAFQAAABUAAAAVAAAAFwAAABcAAAAXAAAAFwAAABkAAAAZAAAAGQAAABkAAAAZAAAAFwAA[m
[31m-        ABcAAAAXAAAAFwAAABcAAAAXAAAAFwAAABkAAAAXAAAAFwAAABcAAAAXAAAAFwAAABcAAAAVAAAAFQAA[m
[31m-        ABUAAAATAAAAEwAAABMAAAARAAAAEQAAAA8AAAAPAAAADwAAAA0AAAANAAAADQAAAAsAAAALAAAACQAA[m
[31m-        AAkAAAAHAAAABwAAAAUAAAAFAAAAAwAAAAMAAAAD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAA[m
[31m-        AAMAAAADAAAABQAAAAUAAAAHAAAABwAAAAcAAAAJAAAACQAAAAsAAAALAAAADQAAAA0AAAAPAAAADwAA[m
[31m-        ABEAAAARAAAAEwAAABMAAAAVAAAAFQAAABUAAAAXAAAAFwAAABcAAAAZAAAAGQAAABkAAAAbAAAAGwAA[m
[31m-        ABkAAAAZAgICIQoKCjMRERFLFBQUXRUVFWcVFRVvFhYWeRYWFn8WFhaBFhYWexYWFnUVFRVrFBQUYRMT[m
[31m-        E1MPDw89BgYGKQAAABsAAAAXAAAAGQAAABkAAAAZAAAAGQAAABcAAAAXAAAAFQAAABUAAAAVAAAAEwAA[m
[31m-        ABMAAAARAAAAEQAAAA8AAAAPAAAADwAAAA0AAAALAAAACwAAAAsAAAAJAAAACQAAAAcAAAAHAAAABQAA[m
[31m-        AAUAAAADAAAAA////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wEAAAADAAAABQAAAAUAAAAFAAAABwAAAAcAAAAJAAAACQAA[m
[31m-        AAsAAAANAAAADQAAAA8AAAAPAAAAEQAAABEAAAATAAAAEwAAABUAAAAVAAAAFwAAABcAAAAXAAAAGQAA[m
[31m-        ABkAAAAbAAAAGwAAABsAAAAbAQEBHQgICC8RERFLFRUVfRkZGa0eHh7VISEh5yQkJPMoKCj3LCws+y4u[m
[31m-        Lv0wMDD/MTEx/zExMf8wMDD/Li4u/SwsLPsoKCj5JSUl9SIiIu0gICDhHBwcwxcXF5UUFBRjDQ0NOQMD[m
[31m-        AyMAAAAZAAAAGwAAABsAAAAZAAAAGQAAABcAAAAXAAAAFQAAABUAAAATAAAAEwAAABEAAAARAAAADwAA[m
[31m-        AA8AAAANAAAADQAAAAsAAAAJAAAACQAAAAcAAAAHAAAABQAAAAUAAAAFAAAAAwAAAAP///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAUAAAAFAAAABwAAAAcAAAAJAAAACQAAAAsAAAALAAAADQAAAA0AAAAPAAAAEQAAABEAAAATAAAAEwAA[m
[31m-        ABUAAAAVAAAAFwAAABcAAAAZAAAAGQAAABsAAAAbAAAAHQAAABsBAQEfDAwMNRUVFW8bGxuzICAg4Scn[m
[31m-        J/ExMTH9Ozs7/0JCQv9ERET/RUVF/0ZGRv9GRkb/RkZG/0ZGRv9FRUX/RUVF/0RERP9DQ0P/Q0ND/0JC[m
[31m-        Qv9AQED/Pj4+/zw8PP84ODj/MTEx/ykpKfkiIiLpHR0d0RcXF5MSEhJPBQUFJQAAABkAAAAbAAAAGwAA[m
[31m-        ABkAAAAXAAAAFwAAABUAAAAVAAAAEwAAABMAAAARAAAAEQAAAA8AAAAPAAAADQAAAAsAAAALAAAACQAA[m
[31m-        AAkAAAAHAAAABwAAAAUAAAAFAAAAAwAAAAP///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AQAAAAMAAAADAAAABQAAAAcAAAAHAAAACQAAAAkAAAALAAAACwAA[m
[31m-        AA0AAAAPAAAADwAAABEAAAARAAAAEwAAABMAAAAVAAAAFQAAABcAAAAZAAAAGQAAABsAAAAbAAAAHQAA[m
[31m-        ABsICAgnFhYWZRwcHLkjIyPjLy8v+z09Pf9ERET/SEhI/0lJSf9JSUn/SEhI/0hISP9ISEj/R0dH/0dH[m
[31m-        R/9HR0f/RkZG/0ZGRv9GRkb/RUVF/0VFRf9ERET/Q0ND/0NDQ/9CQkL/QUFB/0FBQf9AQED/Pz8//zw8[m
[31m-        PP83Nzf/Ly8v/yQkJPEdHR3TFxcXjw8PDz0AAAAZAAAAGQAAABkAAAAZAAAAFwAAABcAAAAVAAAAEwAA[m
[31m-        ABMAAAARAAAAEQAAAA8AAAAPAAAADQAAAA0AAAALAAAACQAAAAkAAAAHAAAABwAAAAUAAAADAAAAA///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAA[m
[31m-        AAUAAAAFAAAABwAAAAcAAAAJAAAACwAAAAsAAAANAAAADQAAAA8AAAAPAAAAEQAAABMAAAATAAAAFQAA[m
[31m-        ABUAAAAXAAAAFwAAABkAAAAbAAAAGwAAABkODg4zGBgYgyEhIcstLS33Ozs7/0ZGRv9LS0v/S0tL/0pK[m
[31m-        Sv9KSkr/SUlJ/0lJSf9JSUn/SEhI/0hISP9ISEj/SEhI/0dHR/9HR0f/R0dH/0ZGRv9GRkb/RkZG/0VF[m
[31m-        Rf9ERET/RERE/0NDQ/9CQkL/QkJC/0FBQf9AQED/Pz8//z8/P/8+Pj7/PDw8/zU1Nf8sLCz/ISEh5xkZ[m
[31m-        GakTExNVAgICGwAAABcAAAAZAAAAFwAAABUAAAAVAAAAEwAAABMAAAARAAAAEQAAAA8AAAANAAAADQAA[m
[31m-        AAsAAAALAAAACQAAAAkAAAAHAAAABQAAAAUAAAADAAAAA////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wEAAAADAAAABQAAAAUAAAAHAAAABwAAAAkAAAALAAAACwAA[m
[31m-        AA0AAAANAAAADwAAABEAAAARAAAAEwAAABMAAAAVAAAAFQAAABcAAAAZAAAAGQAAABkODg4vGRkZfSMj[m
[31m-        I90xMTH9QkJC/0xMTP9MTEz/TExM/0tLS/9LS0v/S0tL/0pKSv9KSkr/SkpK/0pKSv9JSUn/SUlJ/0lJ[m
[31m-        Sf9JSUn/SEhI/0hISP9ISEj/R0dH/0dHR/9GRkb/RkZG/0ZGRv9FRUX/RERE/0RERP9DQ0P/QkJC/0FB[m
[31m-        Qf9AQED/QEBA/z8/P/8+Pj7/PT09/z09Pf85OTn/Ly8v/yQkJPUbGxuxExMTTwQEBBkAAAAXAAAAFwAA[m
[31m-        ABUAAAATAAAAEwAAABEAAAARAAAADwAAAA0AAAANAAAACwAAAAsAAAAJAAAACQAAAAcAAAAFAAAABQAA[m
[31m-        AAMAAAAD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAA[m
[31m-        AAMAAAAFAAAABQAAAAcAAAAHAAAACQAAAAkAAAALAAAADQAAAA0AAAAPAAAADwAAABEAAAARAAAAEwAA[m
[31m-        ABUAAAAVAAAAFwAAABcJCQkfGRkZZyQkJNkxMTH/RkZG/05OTv9OTk7/TU1N/0xMTP9MTEz/TExM/0xM[m
[31m-        TP9LS0v/S0tL/0tLS/9LS0v/S0tL/0pKSv9KSkr/SkpK/0lJSf9JSUn/SUlJ/0hISP9ISEj/SEhI/0dH[m
[31m-        R/9HR0f/RkZG/0ZGRv9FRUX/RUVF/0RERP9DQ0P/QkJC/0JCQv9BQUH/QEBA/z8/P/8+Pj7/PT09/zw8[m
[31m-        PP88PDz/Ojo6/zAwMP8iIiL1GhoaoxERETUBAQEVAAAAFQAAABMAAAATAAAAEQAAABEAAAAPAAAADQAA[m
[31m-        AA0AAAALAAAACwAAAAkAAAAHAAAABwAAAAUAAAAFAAAAAwAAAAP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAAAAMAAAAFAAAABQAAAAcAAAAHAAAACQAA[m
[31m-        AAsAAAALAAAADQAAAA0AAAAPAAAADwAAABEAAAATAAAAEwAAABUBAQEVFhYWPSEhIb0vLy/5RkZG/1BQ[m
[31m-        UP9PT0//TU1N/01NTf9NTU3/TU1N/01NTf9NTU3/TExM/0xMTP9MTEz/TExM/0xMTP9LS0v/S0tL/0tL[m
[31m-        S/9LS0v/SkpK/0pKSv9JSUn/SUlJ/0lJSf9JSUn/SEhI/0hISP9HR0f/R0dH/0ZGRv9GRkb/RUVF/0RE[m
[31m-        RP9DQ0P/Q0ND/0JCQv9BQUH/QEBA/z8/P/8+Pj7/PT09/zw8PP88PDz/PDw8/zo6Ov8tLS3/ICAg5RgY[m
[31m-        GHkJCQkbAAAAEQAAABEAAAARAAAADwAAAA0AAAANAAAACwAAAAsAAAAJAAAACQAAAAcAAAAHAAAABQAA[m
[31m-        AAUAAAAD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BAAAAAwAAAAMAAAAFAAAABQAAAAcAAAAHAAAACQAAAAkAAAALAAAADQAAAA0AAAAPAAAADwAA[m
[31m-        ABEAAAARDAwMGR4eHnsoKCjpPz8//09PT/9QUFD/T09P/05OTv9OTk7/Tk5O/05OTv9OTk7/Tk5O/01N[m
[31m-        Tf9NTU3/TU1N/01NTf9NTU3/TExM/0xMTP9MTEz/TExM/0xMTP9LS0v/S0tL/0pKSv9KSkr/SUlJ/0tL[m
[31m-        S/9LS0v/S0tL/0pKSv9KSkr/SUlJ/0dHR/9GRkb/RUVF/0RERP9ERET/Q0ND/0JCQv9BQUH/QEBA/z8/[m
[31m-        P/8/Pz//Pj4+/zw8PP88PDz/PDw8/zw8PP83Nzf/Jycn+xwcHLsUFBQ5AQEBDwAAAA8AAAANAAAADQAA[m
[31m-        AAsAAAALAAAACQAAAAcAAAAHAAAABwAAAAUAAAAFAAAAAwAAAAP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BAAAAAwAAAAMAAAAFAAAABQAA[m
[31m-        AAcAAAAHAAAACQAAAAkAAAALAAAACwAAAA0AAAANAAAADRcXFysiIiKtMjIy/UpKSv9SUlL/UFBQ/09P[m
[31m-        T/9PT0//T09P/09PT/9PT0//T09P/09PT/9PT0//Tk5O/05OTv9OTk7/Tk5O/05OTv9NTU3/SkpK/0VF[m
[31m-        Rf8+Pj7/Ojo6/zY2Nv0zMzP5MDAw9y8vL/UuLi71Ly8v9zAwMPk0NDT7Nzc3/zo6Ov8/Pz//RUVF/0lJ[m
[31m-        Sf9JSUn/R0dH/0VFRf9ERET/Q0ND/0JCQv9BQUH/QEBA/0BAQP8/Pz//Pj4+/z09Pf88PDz/PDw8/zw8[m
[31m-        PP87Ozv/Li4u/yAgIOMYGBhhCAgIDwAAAAsAAAALAAAACQAAAAkAAAAHAAAABwAAAAUAAAAFAAAAAwAA[m
[31m-        AAP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AQAAAAMAAAADAAAABQAAAAUAAAAHAAAABwAAAAkAAAAJAAAACwUF[m
[31m-        BQsbGxtBJycn1Tw8PP9SUlL/UlJS/1BQUP9QUFD/UFBQ/1BQUP9QUFD/UFBQ/1BQUP9QUFD/UFBQ/09P[m
[31m-        T/9PT0//T09P/01NTf9GRkb/PT09/zIyMvcpKSnpIiIiyR4eHq8cHByTGxsbeRoaGmUXFxdXFhYWURUV[m
[31m-        FVEVFRVVGRkZXRkZGW0aGhqFGhoaoRwcHLsiIiLbKSkp8TMzM/s+Pj7/RUVF/0hISP9GRkb/RERE/0JC[m
[31m-        Qv9CQkL/QUFB/0BAQP8+Pj7/Pj4+/z09Pf88PDz/PDw8/zw8PP88PDz/NTU1/yQkJPcaGhqJDg4OFwAA[m
[31m-        AAkAAAAHAAAABwAAAAUAAAAFAAAAAwAAAAP///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEAAAADAAAAAwAAAAUAAAAFAAAABQAAAAcLCwsJICAgUysrK+1GRkb/VFRU/1JSUv9RUVH/UVFR/1FR[m
[31m-        Uf9RUVH/UVFR/1FRUf9RUVH/UVFR/1BQUP9QUFD/UFBQ/0tLS/89PT39Li4u8yUlJdcfHx+VGhoaUwsL[m
[31m-        CykAAAAVAAAAEwAAABMAAAAVAAAAFwAAABcAAAAXAAAAFwAAABcAAAAXAAAAFwAAABUAAAATAAAAEwMD[m
[31m-        AxsRERE5GRkZcRwcHLciIiLrLy8v+T8/P/9ISEj/R0dH/0RERP9CQkL/QUFB/0BAQP8/Pz//Pj4+/zw8[m
[31m-        PP88PDz/PDw8/zw8PP88PDz/Ojo6/ycnJ/0cHByrEhISGwAAAAUAAAAFAAAAAwAAAAP///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AQAAAAMAAAADERERBSMj[m
[31m-        I2UtLS31TExM/1VVVf9SUlL/UVFR/1JSUv9SUlL/UlJS/1JSUv9SUlL/UlJS/1FRUf9RUVH/UVFR/0hI[m
[31m-        SP81NTX7KSkp4yEhIY8XFxc5AwMDFQAAAA0AAAATAAAAEwAAABMAAAATAAAAEwAAABMAAAATAAAAEwAA[m
[31m-        ABMAAAATAAAAEwAAABMAAAATAAAAEwAAABMAAAATAAAAEQAAABEAAAAPAAAADwoKCiEZGRlfHh4evyYm[m
[31m-        Jvc3Nzf/SEhI/0dHR/9DQ0P/QUFB/0BAQP8/Pz//Pj4+/zw8PP88PDz/PDw8/zw8PP88PDz/Ozs7/yoq[m
[31m-        Kv8cHBy/FxcXH////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ARsbGwMmJiZtMTEx809PT/9VVVX/UlJS/1JSUv9TU1P/U1NT/1NT[m
[31m-        U/9TU1P/U1NT/1NTU/9TU1P/U1NT/0pKSv81NTX9KCgo0SAgIGMQEBAbAAAACQAAAA0AAAANAAAADQAA[m
[31m-        AA0AAAANAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPAAAADwAA[m
[31m-        AA0AAAANAAAADQAAAA0AAAANAAAADQAAAAsDAwMLFBQUORwcHJclJSXzNjY2/0hISP9GRkb/QUFB/0BA[m
[31m-        QP8+Pj7/PT09/zw8PP88PDz/PDw8/zw8PP88PDz/Ozs7/ywsLP8dHR2/Hx8fH////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wE4ODgDKSkpXzEx[m
[31m-        MfFQUFD/VlZW/1NTU/9TU1P/U1NT/1NTU/9TU1P/U1NT/1NTU/9TU1P/U1NT/1BQUP87Ozv/Kioq1yIi[m
[31m-        ImkQEBAPAAAABwAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAALAAAACQAAAAkAAAAJAAAACwAA[m
[31m-        AAsAAAALAAAACwAAAAsAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAHAAAABwAA[m
[31m-        AAcAAAAHAQEBBRUVFTEcHByjJycn+T09Pf9KSkr/Q0ND/z8/P/8+Pj7/PT09/zw8PP88PDz/PDw8/zw8[m
[31m-        PP88PDz/PDw8/ywsLP8eHh67Hx8fF////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AS4uLksvLy/vUFBQ/1dXV/9UVFT/VFRU/1RUVP9UVFT/VFRU/1RU[m
[31m-        VP9UVFT/VFRU/1RUVP9ISEj/Ly8v9ScnJ4sWFhYTAAAAAwAAAAMAAAADAAAAAwAAAAUAAAAFAAAABQAA[m
[31m-        AAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAUAAAAFAAAABQAA[m
[31m-        AAUAAAAFAAAABQAAAAUAAAAFAAAABQAAAAMAAAADAAAAAwAAAAMAAAAD////AQkJCQMaGhpBICAg0S8v[m
[31m-        L/9JSUn/RkZG/0BAQP8+Pj7/PT09/zw8PP88PDz/PDw8/zw8PP88PDz/PDw8/ysrK/8dHR2xGhoaDf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wElJSUxLS0t509P[m
[31m-        T/9YWFj/VFRU/1RUVP9UVFT/VFRU/1RUVP9VVVX/VVVV/1VVVf9UVFT/PT09/ysrK9cqKioz////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wEAAAADAAAAAwAAAAMAAAADAAAAAwAA[m
[31m-        AAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wEhISEJHx8fhyQkJP1CQkL/SUlJ/0BAQP8+Pj7/PT09/zw8[m
[31m-        PP88PDz/PDw8/zw8PP88PDz/Ozs7/ygoKP0cHByTCwsLBf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BODg4Fy0tLcVJSUn/Wlpa/1VVVf9VVVX/VVVV/1VVVf9VVVX/VVVV/1VV[m
[31m-        Vf9VVVX/VlZW/z09Pf8sLCzfLCwsHf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wEeHh4DISEhRSIiIuM5OTn/S0tL/0FBQf8+Pj7/PT09/zw8PP88PDz/PDw8/zw8PP88PDz/OTk5/yMj[m
[31m-        I/cbGxtf////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AS0tLQMqKiqTQEBA/Vpa[m
[31m-        Wv9WVlb/VlZW/1ZWVv9WVlb/VlZW/1ZWVv9WVlb/VlZW/1ZWVv9XV1f/VVVV/0JCQv0uLi7TLi4uM///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BIiIiJyIiIsc0NDT/S0tL/0FB[m
[31m-        Qf8+Pj7/PDw8/zw8PP88PDz/PDw8/zw8PP88PDz/Nzc3/yEhIecbGxs1////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BLy8vVTg4OPFZWVn/WFhY/1ZWVv9WVlb/V1dX/1dXV/9XV1f/V1dX/1dX[m
[31m-        V/9XV1f/V1dX/1dXV/9XV1f/V1dX/0pKSv8yMjLpLi4uYzExMQX///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BIyMjHyEhIbc0NDT9SkpK/0FBQf89PT3/PDw8/zw8PP88PDz/PDw8/zw8[m
[31m-        PP88PDz/Ly8v/x4eHrccHBwN////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AS8vLxMxMTHPUFBQ/1tb[m
[31m-        W/9XV1f/V1dX/1dXV/9XV1f/WFhY/1hYWP9YWFj/WFhY/1hYWP9YWFj/WFhY/1hYWP9YWFj/WFhY/1FR[m
[31m-        Uf84ODj5MDAwjzExMRX///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BIiIiGSEh[m
[31m-        Ibs4ODj9SkpK/0BAQP89PT3/PDw8/zw8PP88PDz/PDw8/zw8PP87Ozv/Jycn+xsbG3P///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BLi4ugUNDQ/1dXV3/WFhY/1dXV/9YWFj/WFhY/1hYWP9YWFj/WFhY/1hY[m
[31m-        WP9ZWVn/WVlZ/1lZWf9ZWVn/WVlZ/1lZWf9ZWVn/WVlZ/1dXV/9AQED7MjIywTIyMiv///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BHBwcGSIiIsk8PDz/SkpK/z4+Pv89PT3/PDw8/zw8[m
[31m-        PP88PDz/PDw8/zw8PP82Njb/Hx8f3xgYGBv///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ATAwMCU0NDTjWVlZ/1pa[m
[31m-        Wv9YWFj/WFhY/1hYWP9ZWVn/WVlZ/1lZWf9bW1v/ZmZm/1paWv9ZWVn/Wlpa/1paWv9aWlr/Wlpa/1pa[m
[31m-        Wv9aWlr/Wlpa/1lZWf9KSkr/NDQ03TExMVE0NDQF////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BICAgLSUlJddCQkL/R0dH/z4+Pv88PDz/PDw8/zw8PP88PDz/PDw8/zw8PP8sLCz9HR0dlf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BMTExiUhISP1eXl7/WVlZ/1lZWf9ZWVn/WVlZ/1lZWf9aWlr/Wlpa/0xM[m
[31m-        TP9iYmL/cnJy/15eXv9aWlr/W1tb/1tbW/9bW1v/W1tb/1tbW/9bW1v/Wlpa/1paWv9QUFD/Ojo67zIy[m
[31m-        MoEwMDAP////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BIyMjTyoqKu9LS0v/QkJC/z09[m
[31m-        Pf88PDz/PDw8/zw8PP88PDz/PDw8/zg4OP8gICDtHR0dIf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ATAwMCU2NjbnXV1d/1tb[m
[31m-        W/9ZWVn/WVlZ/1paWv9aWlr/Wlpa/1tbW/9UVFT/NjY26TY2NtNYWFj/dHR0/2RkZP9bW1v/XFxc/1xc[m
[31m-        XP9cXFz/XFxc/1tbW/9bW1v/W1tb/1tbW/9WVlb/QEBA+TQ0NKcxMTEn////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wEgICAFHx8fgzU1Nf1MTEz/Pz8//z09Pf88PDz/PDw8/zw8PP88PDz/Ozs7/y0t[m
[31m-        Lf0cHByL////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BMTExdUVFRf1hYWH/Wlpa/1paWv9aWlr/W1tb/1tbW/9bW1v/Wlpa/0FB[m
[31m-        Qfc1NTVpMjIyITU1NalLS0v5c3Nz/2pqav9dXV3/XFxc/1xcXP9cXFz/XFxc/1xcXP9cXFz/XFxc/1xc[m
[31m-        XP9aWlr/SEhI/zc3N9E1NTVDNjY2Bf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wEmJiYbJSUly0ZG[m
[31m-        Rv9HR0f/PT09/zw8PP88PDz/PDw8/zw8PP88PDz/OTk5/x8fH+sVFRUZ////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ATAwMA01NTXVWlpa/11d[m
[31m-        Xf9bW1v/W1tb/1tbW/9cXFz/XFxc/1xcXP9QUFD/NTU1wzMzMwv///8BNDQ0DTU1NXk/Pz/xbW1t/3Jy[m
[31m-        cv9fX1//XV1d/11dXf9dXV3/XV1d/11dXf9dXV3/XV1d/1xcXP9cXFz/UVFR/zs7O+s1NTVvLy8vC///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wEiIiJPLy8v805OTv9AQED/PT09/zw8PP88PDz/PDw8/zw8[m
[31m-        PP87Ozv5Jycn2RsbGzf///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BNTU1VUFBQfljY2P/XFxc/1tbW/9cXFz/XFxc/1xcXP9dXV3/W1tb/0FB[m
[31m-        QfMxMTFP////Af///wH///8BODg4BTc3N0s7OzvfYGBg/3d3d/9kZGT/XV1d/15eXv9eXl7/Xl5e/15e[m
[31m-        Xv9dXV3/XV1d/11dXf9dXV3/VlZW/0BAQPc2NjabNDQ0G////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ASMj[m
[31m-        IwslJSW3RUVF/0pKSv89PT3/PDw8/zw8PP87OzvrOjo6sTg4OFUvLy8fIiIiA////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wE0NDShUVFR/2Nj[m
[31m-        Y/9cXFz/XFxc/11dXf9dXV3/XV1d/15eXv9SUlL/OTk5uykpKQn///8B////Af///wH///8B////ATc3[m
[31m-        Nys4ODi5UlJS/Xd3d/9ra2v/X19f/19fX/9eXl7/Xl5e/15eXv9eXl7/Xl5e/11dXf9dXV3/Wlpa/0dH[m
[31m-        R/03NzfFNzc3Of///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////ASMjI00yMjLzUFBQ/0BAQPU8PDzJOjo6dTc3[m
[31m-        NzUzMzMH////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BNzc3DTg4ON9gYGD/YGBg/11dXf9dXV3/XV1d/15eXv9eXl7/Xl5e/0VF[m
[31m-        Rfs3Nzdn////Af///wH///8B////Af///wH///8B////ATg4OBE3NzeRSEhI9XJycv9xcXH/YmJi/19f[m
[31m-        X/9fX1//X19f/19fX/9eXl7/Xl5e/15eXv9eXl7/XV1d/05OTv87OzvjODg4WzExMQf///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BICAgDyYmJqVOTk6dRERETTAwMA////8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wE2NjZFQ0ND+WZm[m
[31m-        Zv9dXV3/XV1d/15eXv9eXl7/Xl5e/19fX/9ZWVn/PDw81y8vLxn///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////ATk5OQM3NzdfPj4+52pqav93d3f/ZGRk/2BgYP9gYGD/YGBg/19fX/9fX1//X19f/19f[m
[31m-        X/9eXl7/Xl5e/1ZWVv8+Pj75ODg4hzY2NhH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BKSkpB////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ATY2NodRUVH/ZmZm/15eXv9eXl7/X19f/19fX/9fX1//YGBg/05O[m
[31m-        Tv87OzuH////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wE7OzsxPDw8y1tb[m
[31m-        W/17e3v/aWlp/2BgYP9gYGD/YGBg/2BgYP9gYGD/X19f/19fX/9fX1//Xl5e/1tbW/9FRUX9OTk5uzg4[m
[31m-        OCP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BODg4w1tb[m
[31m-        W/9kZGT/Xl5e/19fX/9fX1//YGBg/2BgYP9fX1//RERE+T09PUv///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wE9PT0ZOjo6oU5OTvl3d3f/cHBw/2JiYv9hYWH/YWFh/2Fh[m
[31m-        Yf9gYGD/YGBg/19fX/9fX1//Xl5e/15eXv9OTk7/Ojo63zk5OUc8PDwD////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////ATY2NgU7OzvjZGRk/2JiYv9fX1//YGBg/2BgYP9gYGD/YWFh/11d[m
[31m-        Xf9AQEDfPDw8If///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wE+Pj4JOzs7bUVFRe1ubm7/d3d3/2VlZf9hYWH/YWFh/2FhYf9hYWH/YGBg/2BgYP9fX1//X19f/19f[m
[31m-        X/9VVVX/Pj4+9zk5OXk3NzcJ////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BOzs7GT8/[m
[31m-        P/Vqamr/YWFh/2BgYP9gYGD/YWFh/2FhYf9iYmL/WVlZ/z4+PrkqKioF////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BPj4+RT4+PtViYmL/e3t7/2lp[m
[31m-        af9iYmL/YmJi/2FhYf9hYWH/YGBg/2BgYP9gYGD/X19f/19fX/9bW1v/Q0ND/zg4OKU6Ojod////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wE9PT07RkZG+Wtra/9hYWH/YWFh/2FhYf9iYmL/YmJi/2Nj[m
[31m-        Y/9TU1P/PT09h////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BQEBAGz09PbdVVVX9fHx8/29vb/9jY2P/YmJi/2JiYv9hYWH/YWFh/2Bg[m
[31m-        YP9gYGD/YGBg/19fX/9fX1//SkpK/zo6Otk5OTkzOzs7A////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ATw8[m
[31m-        PFVOTk77a2tr/2FhYf9iYmL/YmJi/2JiYv9jY2P/ZGRk/05OTv8+Pj5f////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BRUVFCT4+[m
[31m-        Pn9ISEj5dnZ2/3h4eP9kZGT/YmJi/2JiYv9iYmL/YWFh/2FhYf9gYGD/YGBg/19fX/9fX1//VFRU/z09[m
[31m-        PfU4ODhhNDQ0Bf///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BPT09Z1NTU/1qamr/YmJi/2JiYv9jY2P/Y2Nj/2Rk[m
[31m-        ZP9kZGT/S0tL+T8/P0P///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BMjIyA0BAQEtDQ0PlZ2dn/319ff9paWn/YmJi/2Ji[m
[31m-        Yv9iYmL/YWFh/2FhYf9gYGD/YGBg/19fX/9fX1//Wlpa/0JCQv07OzudPDw8Ef///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wE9PT17WFhY/2pqav9jY2P/Y2Nj/2NjY/9kZGT/ZGRk/2RkZP9KSkrxQUFBM////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUNDQytAQEC9WVlZ/319ff9vb2//Y2Nj/2NjY/9iYmL/YWFh/2FhYf9gYGD/YGBg/19f[m
[31m-        X/9fX1//XFxc/0lJSf88PDzFODg4Mf///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AT4+PoVbW1v/ampq/2NjY/9kZGT/ZGRk/2Vl[m
[31m-        Zf9lZWX/ZWVl/0pKSu1CQkIv////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUJCQhFBQUGVT09P93h4[m
[31m-        eP91dXX/ZGRk/2NjY/9iYmL/YWFh/2FhYf9gYGD/YGBg/19fX/9eXl7/Xl5e/1BQUP8+Pj7lOTk5VTc3[m
[31m-        Nwf///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BPz8/hV1dXf9ra2v/ZGRk/2RkZP9lZWX/ZWVl/2ZmZv9lZWX/TExM7URERC////8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AT09PQdCQkJdRkZG7W5ubv98fHz/ZmZm/2NjY/9iYmL/YmJi/2Fh[m
[31m-        Yf9gYGD/YGBg/19fX/9eXl7/Xl5e/1dXV/9BQUH3Ozs7hzc3Nw3///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wE/Pz97XFxc/2xsbP9lZWX/ZWVl/2Zm[m
[31m-        Zv9mZmb/Z2dn/2dnZ/9NTU3vREREM////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUND[m
[31m-        QwM/Pz8zREREz19fX/9/f3//bGxs/2NjY/9iYmL/YmJi/2FhYf9gYGD/YGBg/19fX/9eXl7/Xl5e/1pa[m
[31m-        Wv9HR0f7PDw8tT4+PiX///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUFBQWlaWlr9bW1t/2VlZf9mZmb/Z2dn/2dnZ/9nZ2f/aGho/1BQUPdERERB////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFFRUUbREREnVJSUv16enr/dHR0/2Nj[m
[31m-        Y/9iYmL/YmJi/2FhYf9gYGD/YGBg/19fX/9eXl7/Xl5e/1xcXP9OTk79PT092To6Ok0xMTED////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BQ0NDV1ZWVv1vb2//ZmZm/2dn[m
[31m-        Z/9nZ2f/aGho/2hoaP9paWn/VFRU/0VFRV3///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFDQ0MNQ0NDcUxMTO9xcXH/eXl5/2ZmZv9iYmL/YmJi/2FhYf9gYGD/YGBg/19f[m
[31m-        X/9eXl7/XV1d/1xcXP9TU1P/QUFB6zs7O3s3NzcN////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFDQ0M9UlJS+XJycv9nZ2f/aGho/2hoaP9paWn/aWlp/2pqav9aWlr/R0dHgf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFFRUUDPz8/RUZG[m
[31m-        RtlnZ2f/e3t7/2pqav9iYmL/YmJi/2FhYf9gYGD/YGBg/19fX/9eXl7/XV1d/1xcXP9XV1f/RUVF+zw8[m
[31m-        PKE8PDwf////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////ATc3Nx1NTU31dHR0/2ho[m
[31m-        aP9oaGj/aWlp/2lpaf9qamr/ampq/2FhYf9JSUmvNjY2A////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BQ0NDH0NDQ7lZWVn9e3t7/3BwcP9iYmL/YWFh/2Fh[m
[31m-        Yf9gYGD/X19f/15eXv9eXl7/XV1d/1xcXP9aWlr/SkpK/Tw8PMs7Ozs7////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BRUVFB0hISOdzc3P/ampq/2lpaf9paWn/ampq/2pqav9ra2v/Z2dn/0xM[m
[31m-        TNlFRUUb////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BQ0NDEURERINPT0/1dXV1/3Z2dv9kZGT/YWFh/2FhYf9gYGD/X19f/15eXv9dXV3/XV1d/1xc[m
[31m-        XP9bW1v/UFBQ/z4+PuU7OztlLy8vB////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BRkZGyW5u[m
[31m-        bv9tbW3/aWlp/2pqav9ra2v/a2tr/2xsbP9qamr/UVFR9UtLS0H///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BSUlJB0RERFVJSUnhaWlp/3p6[m
[31m-        ev9oaGj/YWFh/2BgYP9gYGD/X19f/15eXv9dXV3/XFxc/1tbW/9aWlr/VFRU/0NDQ/U5OTmVPj4+E///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFHR0eTZ2dn/3Jycv9qamr/a2tr/2tra/9sbGz/bW1t/21t[m
[31m-        bf9aWlr/S0tLc////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AURERDVERES/YGBg/Xl5ef9sbGz/YWFh/2BgYP9fX1//Xl5e/15e[m
[31m-        Xv9dXV3/XFxc/1tbW/9aWlr/V1dX/0ZGRv07Ozu3Ojo6M////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUtL[m
[31m-        S1NbW1v7dnZ2/2tra/9sbGz/bGxs/21tbf9tbW3/bm5u/2ZmZv9OTk6/Pz8/C////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AURE[m
[31m-        RBVDQ0OZVFRU83V1df9xcXH/YmJi/2BgYP9fX1//Xl5e/11dXf9cXFz/W1tb/1paWv9ZWVn/WFhY/0xM[m
[31m-        TP89PT3jOzs7UTExMQX///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8BTk5OF1BQUOt4eHj/bW1t/2xsbP9tbW3/bW1t/25u[m
[31m-        bv9ubm7/bW1t/1VVVfFLS0tD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////ATs7OwdDQ0NpS0tL525ubv92dnb/ZGRk/19f[m
[31m-        X/9eXl7/Xl5e/11dXf9cXFz/W1tb/1paWv9ZWVn/WFhY/1FRUf8/Pz/3ODg4fTo6Og////8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8BSkpKs29vb/9ycnL/bW1t/21tbf9ubm7/b29v/29vb/9wcHD/YGBg/01NTZlSUlID////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUtLSwNFRUU9RUVFz2JiYv15eXn/aWlp/19fX/9eXl7/XV1d/1xcXP9bW1v/Wlpa/1lZ[m
[31m-        Wf9ZWVn/WFhY/1VVVf9DQ0P/OTk5sTg4OCH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFLS0tvYGBg/Xl5ef9ubm7/bm5u/29v[m
[31m-        b/9vb2//cHBw/3BwcP9tbW3/VFRU4VNTUyn///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFEREQfQ0NDp1ZW[m
[31m-        Vvl2dnb/b29v/19fX/9dXV3/XV1d/1xcXP9bW1v/Wlpa/1lZWf9YWFj/V1dX/1ZWVv9ISEj/Ozs71TU1[m
[31m-        NUc5OTkD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUpKSiFUVFTpe3t7/3BwcP9vb2//cHBw/3BwcP9xcXH/cXFx/3Jycv9hYWH/T09PlUlJ[m
[31m-        SQP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wE8PDwLQ0NDfU5OTu1wcHD/c3Nz/2FhYf9dXV3/XFxc/1tb[m
[31m-        W/9aWlr/WVlZ/1hYWP9YWFj/V1dX/1ZWVv9MTEz/PT097zk5OW06OjoN////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AU1NTZ1ubm7/d3d3/29v[m
[31m-        b/9wcHD/cXFx/3Fxcf9ycnL/cnJy/25ubv9WVlbrTU1NMf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFNTU0DRUVFS0VFRd9mZmb/d3d3/2RkZP9cXFz/XFxc/1tbW/9aWlr/WVlZ/1hYWP9XV1f/VlZW/1VV[m
[31m-        Vf9RUVH/Pj4+/Tg4OJk0NDQZ////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BUlJSR1lZWfV/f3//cnJy/3Fxcf9xcXH/cnJy/3Nzc/9zc3P/dHR0/2dn[m
[31m-        Z/9TU1O7SEhIC////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BRUVFI0NDQ71YWFj9eHh4/2lp[m
[31m-        af9cXFz/W1tb/1paWv9ZWVn/WFhY/1dXV/9WVlb/VVVV/1RUVP9TU1P/Q0ND/zk5Ocs1NTUzODg4A///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFPT08HUFBQu3V1[m
[31m-        df94eHj/cXFx/3Jycv9zc3P/c3Nz/3R0dP90dHT/c3Nz/11dXflRUVFt////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BPT09DUJCQo1NTU35cnJy/3Fxcf9cXFz/Wlpa/1lZWf9ZWVn/WFhY/1dX[m
[31m-        V/9VVVX/VVVV/1RUVP9TU1P/SUlJ/zk5Oek3NzddMzMzBf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFRUVFFXFxc84CAgP90dHT/c3Nz/3R0dP90dHT/dXV1/3V1[m
[31m-        df92dnb/cnJy/1lZWe9QUFA/////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BPT09BT8/[m
[31m-        P1VGRkbpZmZm/3d3d/9fX1//WVlZ/1lZWf9YWFj/V1dX/1ZWVv9VVVX/VFRU/1NTU/9SUlL/TExM/zw8[m
[31m-        PPc2NjaTOTk5Ef///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AVNT[m
[31m-        UwdUVFS3c3Nz/319ff90dHT/dHR0/3V1df91dXX/dnZ2/3Z2dv93d3f/bGxs/1ZWVtVZWVkh////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AUVFRS1CQkLJWlpa/3h4eP9kZGT/WVlZ/1hY[m
[31m-        WP9XV1f/VlZW/1VVVf9UVFT/U1NT/1JSUv9RUVH/T09P/z8/P/82Nja7NDQ0K////wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AUtLSzNaWlrrgYGB/3l5ef91dXX/dXV1/3Z2[m
[31m-        dv92dnb/d3d3/3h4eP94eHj/aWlp/1VVVccxMTET////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUJCQg9BQUGfTU1N/XR0dP9ra2v/WFhY/1dXV/9WVlb/VVVV/1RUVP9TU1P/UlJS/1FR[m
[31m-        Uf9QUFD/T09P/0RERP82NjbhNTU1T////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AVNTU49qamr/hYWF/3Z2dv92dnb/d3d3/3d3d/94eHj/eHh4/3l5ef95eXn/aWlp/1lZ[m
[31m-        WcdZWVkR////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUJCQgc/Pz9nRERE82pq[m
[31m-        av9ycnL/Wlpa/1ZWVv9WVlb/VVVV/1RUVP9TU1P/UVFR/1BQUP9PT0//T09P/0hISP83NzfzMzMzfzk5[m
[31m-        OQn///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BVVVVFVdXV8V3d3f/goKC/3d3[m
[31m-        d/93d3f/eHh4/3l5ef95eXn/eXl5/3p6ev95eXn/ampq/1lZWc1dXV0f////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AT4+PgM9PT03QUFB21tbW/90dHT/YGBg/1ZWVv9VVVX/VFRU/1NT[m
[31m-        U/9SUlL/UVFR/1BQUP9PT0//Tk5O/0tLS/9AQED7MjIyszExMR3///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BU1NTRV5eXu2Dg4P/f39//3h4eP95eXn/eXl5/3p6ev96enr/enp6/3t7[m
[31m-        e/97e3v/bW1t/1tbW9daWlo/////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFAQEAdPz8/rVBQUP1lZWX/VlZW/1VVVf9UVFT/U1NT/1JSUv9RUVH/UFBQ/09PT/9OTk7/W1tb/1ZW[m
[31m-        Vv81NTXNMTExI////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFbW1sDV1dXcWVl[m
[31m-        ZfmIiIj/fn5+/3l5ef96enr/e3t7/3t7e/97e3v/e3t7/3x8fP98fHz/cXFx/19fX+tcXFxlYWFhBf//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AUFBQSFAQECzR0dH/VVVVf9WVlb/VVVV/1RU[m
[31m-        VP9TU1P/UlJS/1FRUf9QUFD/T09P/1xcXP9cXFz/Ojo62TMzMzH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFXV1cLWVlZmW1tbfuKior/fn5+/3p6ev97e3v/fHx8/3x8[m
[31m-        fP98fHz/fX19/319ff99fX3/eHh4/2RkZPlcXFyjXV1dJ////wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AU1N[m
[31m-        TQlCQkJXQkJC3U1NTf9YWFj/WFhY/1dXV/9VVVX/VFRU/1NTU/9SUlL/UVFR/1FRUf9eXl7/Xl5e/zs7[m
[31m-        O+M0NDQ9////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFYWFgVWFhYs3Jycv+MjIz/f39//3x8fP98fHz/fX19/319ff9+fn7/fn5+/35+fv9+fn7/fHx8/25u[m
[31m-        bv9fX1/hXFxccV1dXRP///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////AUJCQgNEREQvRERErUdHR/VVVVX/Wlpa/1lZWf9YWFj/V1dX/1ZW[m
[31m-        Vv9VVVX/VFRU/1NTU/9SUlL/YWFh/2BgYP8+Pj7rNzc3UTc3NwP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFXV1cdXV1duXR0dP+Ojo7/gYGB/319[m
[31m-        ff9+fn7/fn5+/35+fv9/f3//f39//39/f/9/f3//fn5+/3l5ef9paWn5Xl5ez11dXWdeXl4T////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////AUFBQQNGRkYvREREm0dH[m
[31m-        R+lSUlL/Wlpa/1tbW/9aWlr/WVlZ/1hYWP9XV1f/VlZW/1VVVf9UVFT/VFRU/2RkZP9gYGD/Pz8/8TMz[m
[31m-        M2E3NzcD////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFcXFwjXl5et3Nzc/+Pj4//hISE/35+fv9/f3//f39//39/f/9/f3//f39//39/[m
[31m-        f/9/f3//f39//35+fv92dnb/aWlp+V9fX81eXl5/XV1dMVxcXAf///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AUpKShNHR0dVR0dHpUtLS+dTU1P/W1tb/11dXf9cXFz/W1tb/1paWv9ZWVn/WFhY/1dX[m
[31m-        V/9WVlb/VFRU/1dXV/9nZ2f/X19f/z8/P/E4ODhlNDQ0Bf///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wFeXl4hX19fr3Jy[m
[31m-        cv2Pj4//iIiI/4CAgP+AgID/gICA/4CAgP+AgID/gICA/4CAgP+AgID/f39//39/f/9+fn7/d3d3/2tr[m
[31m-        a/9jY2PpXV1dr1paWmVbW1s1VlZWE1xcXAP///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFNTU0FTExMG0tLS0VKSkp9TExMzVBQUPdXV1f/Xl5e/2Bg[m
[31m-        YP9eXl7/XV1d/1xcXP9cXFz/Wlpa/1lZWf9YWFj/V1dX/1ZWVv9bW1v/ampq/1xcXP8+Pj7pODg4Yzo6[m
[31m-        OgX///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wFgYGATYGBgm21tbfeNjY3/jIyM/4KCgv+BgYH/gYGB/4GB[m
[31m-        gf+BgYH/gYGB/4CAgP+AgID/f39//39/f/9+fn7/fn5+/3p6ev9ycnL/aGho/2FhYe9eXl7NW1tbm1lZ[m
[31m-        WWdZWVk7WlpaKVlZWSFXV1cbV1dXEVZWVg1VVVUNVFRUD1RUVBNTU1MbUVFRI1BQUCtPT09DTk5Oc05O[m
[31m-        TqtPT0/ZUVFR91dXV/9fX1//YmJi/2JiYv9hYWH/YGBg/19fX/9dXV3/XFxc/1xcXP9aWlr/WVlZ/1hY[m
[31m-        WP9XV1f/YGBg/21tbf9WVlb/PT093Tk5OU84ODgF////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFlZWULYWFhc2hoaO+Hh4f/kpKS/4WFhf+CgoL/goKC/4KCgv+CgoL/gYGB/4GBgf+AgID/f39//35+[m
[31m-        fv9+fn7/fX19/3x8fP97e3v/eHh4/3V1df9ubm7/Z2dn/2FhYfddXV3nW1tb31lZWddYWFjLVlZWx1ZW[m
[31m-        VsVVVVXHVFRUzVRUVNdUVFThVVVV61dXV/lbW1v/YGBg/2RkZP9lZWX/ZWVl/2RkZP9jY2P/YmJi/2Fh[m
[31m-        Yf9gYGD/X19f/11dXf9cXFz/XFxc/1tbW/9ZWVn/Wlpa/2hoaP9tbW3/Tk5O/T09Pcc8PDwzOzs7A///[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wFoaGgFY2NjS2ZmZtF6enr/k5OT/42N[m
[31m-        jf+EhIT/goKC/4KCgv+CgoL/gYGB/4GBgf+AgID/f39//35+fv99fX3/fHx8/3t7e/96enr/enp6/3l5[m
[31m-        ef94eHj/dnZ2/3R0dP9ycnL/b29v/2xsbP9ra2v/ampq/2lpaf9paWn/aWlp/2pqav9qamr/ampq/2pq[m
[31m-        av9oaGj/Z2dn/2ZmZv9lZWX/ZGRk/2NjY/9iYmL/YWFh/2BgYP9fX1//Xl5e/11dXf9cXFz/W1tb/2Fh[m
[31m-        Yf9wcHD/ZGRk/0dHR/c+Pj6VPT09H////wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BY2NjH2NjY5dubm71ioqK/5SUlP+Li4v/g4OD/4KCgv+CgoL/gYGB/4CA[m
[31m-        gP+AgID/f39//35+fv99fX3/fHx8/3t7e/96enr/eXl5/3h4eP93d3f/dnZ2/3V1df90dHT/c3Nz/3Jy[m
[31m-        cv9xcXH/cHBw/29vb/9ubm7/bW1t/2xsbP9ra2v/ampq/2lpaf9oaGj/ZmZm/2VlZf9kZGT/Y2Nj/2Ji[m
[31m-        Yv9hYWH/YGBg/19fX/9eXl7/XV1d/15eXv9sbGz/cHBw/1ZWVv9CQkLXPT09XTs7Owf///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BXl5eA2Rk[m
[31m-        ZFNmZmbLeXl5+5CQkP+Tk5P/ioqK/4SEhP+CgoL/gYGB/4CAgP9/f3//fn5+/319ff98fHz/e3t7/3p6[m
[31m-        ev95eXn/eHh4/3d3d/92dnb/dXV1/3R0dP9zc3P/cnJy/3Fxcf9wcHD/b29v/25ubv9tbW3/bGxs/2tr[m
[31m-        a/9qamr/aWlp/2hoaP9nZ2f/ZWVl/2RkZP9jY2P/YmJi/2FhYf9gYGD/X19f/2FhYf9paWn/c3Nz/2Rk[m
[31m-        ZP9ISEjvQEBAmUNDQyH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AWZmZg1mZmZzZ2dn33p6evuSkpL/lJSU/4uL[m
[31m-        i/+EhIT/gYGB/39/f/9+fn7/fX19/3x8fP97e3v/enp6/3l5ef94eHj/d3d3/3Z2dv91dXX/dHR0/3Nz[m
[31m-        c/9ycnL/cXFx/3BwcP9vb2//bm5u/21tbf9sbGz/a2tr/2pqav9paWn/aGho/2dnZ/9lZWX/ZWVl/2Nj[m
[31m-        Y/9iYmL/YmJi/2ZmZv9vb2//dnZ2/2tra/9NTU3zQUFBu0JCQjs/Pz8D////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wFoaGgVZWVlc2hoaNt0dHT5ioqK/5aWlv+RkZH/h4eH/4GBgf9+fn7/fX19/3x8[m
[31m-        fP97e3v/enp6/3h4eP93d3f/dnZ2/3V1df90dHT/c3Nz/3Jycv9xcXH/cHBw/29vb/9ubm7/bW1t/2xs[m
[31m-        bP9ra2v/ampq/2lpaf9oaGj/Z2dn/2ZmZv9lZWX/Z2dn/29vb/94eHj/d3d3/2JiYv1NTU3zREREtURE[m
[31m-        RD9EREQF////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8BaGhoFWZm[m
[31m-        ZlllZWW5bGxs83h4eP2Kior/k5OT/5GRkf+Kior/goKC/319ff96enr/eXl5/3h4eP92dnb/dXV1/3R0[m
[31m-        dP9zc3P/cnJy/3Fxcf9wcHD/b29v/25ubv9tbW3/bGxs/2tra/9qamr/aWlp/2pqav9ubm7/dXV1/3x8[m
[31m-        fP97e3v/bW1t/1hYWPtKSkrjRUVFi0RERDU3NzcD////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////AWVlZQNlZWUzZGRkf2JiYsFoaGjzdHR0/X9/[m
[31m-        f/+Kior/kJCQ/4+Pj/+Kior/hYWF/4KCgv9/f3//e3t7/3l5ef93d3f/dnZ2/3V1df91dXX/dXV1/3Z2[m
[31m-        dv94eHj/eXl5/3x8fP+AgID/f39//3d3d/9qamr/XFxc+05OTudHR0enSEhIYUhISBX///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8BYWFhA2RkZCNhYWFlX19fqV9fX9NhYWHzaGho/XFxcf95eXn/gICA/4WF[m
[31m-        hf+Ghob/h4eH/4eHh/+Hh4f/hoaG/4ODg/+BgYH/fn5+/3h4eP9vb2//ZGRk/VlZWf1RUVHtTExMyUpK[m
[31m-        SpdKSkpPS0tLE////wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AV5eXhNdXV05WVlZYVtbW4tZWVmtWFhYxVhYWNlXV1flVlZW61VVVetUVFTpU1NT41JS[m
[31m-        UtdRUVHBUFBQp09PT4NPT09bT09PMU9PTwv///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wFaWloDWVlZA1lZWQNXV1cDVlZWA1ZWVgNUVFQDU1NTA1NTUwP///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af///wH///8B////Af//[m
[31m-        /wH///8B////AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-        AAAAAAAAAAAAAAAAAAAAAAAA[m
[31m-</value>[m
[31m-  </data>[m
[31m-</root>[m
\ No newline at end of file[m
[1mdiff --git a/Softex.Residencia.Projeto.UI.Administrator/Softex.Residencia.Projeto.UI.Administrator.csproj b/Softex.Residencia.Projeto.UI.Administrator/Softex.Residencia.Projeto.UI.Administrator.csproj[m
[1mindex 3d33d8a..8733e11 100644[m
[1m--- a/Softex.Residencia.Projeto.UI.Administrator/Softex.Residencia.Projeto.UI.Administrator.csproj[m
[1m+++ b/Softex.Residencia.Projeto.UI.Administrator/Softex.Residencia.Projeto.UI.Administrator.csproj[m
[36m@@ -158,11 +158,11 @@[m
     <Compile Include="FrmPedido.Designer.cs">[m
       <DependentUpon>FrmPedido.cs</DependentUpon>[m
     </Compile>[m
[31m-    <Compile Include="FrmProduto.cs">[m
[32m+[m[32m    <Compile Include="FrmBackupProduto.cs">[m
       <SubType>Form</SubType>[m
     </Compile>[m
[31m-    <Compile Include="FrmProduto.Designer.cs">[m
[31m-      <DependentUpon>FrmProduto.cs</DependentUpon>[m
[32m+[m[32m    <Compile Include="FrmBackupProduto.Designer.cs">[m
[32m+[m[32m      <DependentUpon>FrmBackupProduto.cs</DependentUpon>[m
     </Compile>[m
     <Compile Include="FrmPrincipal.cs">[m
       <SubType>Form</SubType>[m
[36m@@ -176,11 +176,11 @@[m
     <Compile Include="FrmRelatorios.Designer.cs">[m
       <DependentUpon>FrmRelatorios.cs</DependentUpon>[m
     </Compile>[m
[31m-    <Compile Include="FrmTestProduto.cs">[m
[32m+[m[32m    <Compile Include="FrmProduto.cs">[m
       <SubType>Form</SubType>[m
     </Compile>[m
[31m-    <Compile Include="FrmTestProduto.Designer.cs">[m
[31m-      <DependentUpon>FrmTestProduto.cs</DependentUpon>[m
[32m+[m[32m    <Compile Include="FrmProduto.Designer.cs">[m
[32m+[m[32m      <DependentUpon>FrmProduto.cs</DependentUpon>[m
     </Compile>[m
     <Compile Include="Mensagens.Designer.cs">[m
       <AutoGen>True</AutoGen>[m
[36m@@ -234,8 +234,8 @@[m
     <EmbeddedResource Include="FrmPedido.resx">[m
       <DependentUpon>FrmPedido.cs</DependentUpon>[m
     </EmbeddedResource>[m
[31m-    <EmbeddedResource Include="FrmProduto.resx">[m
[31m-      <DependentUpon>FrmProduto.cs</DependentUpon>[m
[32m+[m[32m    <EmbeddedResource Include="FrmBackupProduto.resx">[m
[32m+[m[32m      <DependentUpon>FrmBackupProduto.cs</DependentUpon>[m
     </EmbeddedResource>[m
     <EmbeddedResource Include="FrmPrincipal.resx">[m
       <DependentUpon>FrmPrincipal.cs</DependentUpon>[m
[36m@@ -243,8 +243,8 @@[m
     <EmbeddedResource Include="FrmRelatorios.resx">[m
       <DependentUpon>FrmRelatorios.cs</DependentUpon>[m
     </EmbeddedResource>[m
[31m-    <EmbeddedResource Include="FrmTestProduto.resx">[m
[31m-      <DependentUpon>FrmTestProduto.cs</DependentUpon>[m
[32m+[m[32m    <EmbeddedResource Include="FrmProduto.resx">[m
[32m+[m[32m      <DependentUpon>FrmProduto.cs</DependentUpon>[m
     </EmbeddedResource>[m
     <EmbeddedResource Include="Mensagens.resx">[m
       <Generator>ResXFileCodeGenerator</Generator>[m
