namespace Softex.Residencia.Projeto.UI.Administrator
{
    partial class FrmPrincipal
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPrincipal));
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.arquivoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.sairToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.fecharToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cadastrarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.produtoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ingredienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.categoriaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.combosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pedidosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.produtoTesteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.relatóriosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.relatóriosToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.faturasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bancoDeDadosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ingredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.categoriasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.produtosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.combosToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.faturasToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.ajudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sobreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ajudaToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.tsbAdicionarProduto = new System.Windows.Forms.ToolStrip();
            this.toolStripButton7 = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.tsbModificarIngrediente = new System.Windows.Forms.ToolStripButton();
            this.tsbAdicionarIngrediente = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton3 = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.tsbGerarRelatorio = new System.Windows.Forms.ToolStripButton();
            this.tsbGerarNotaFiscal = new System.Windows.Forms.ToolStripButton();
            this.tsbAjuda = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.menuStrip.SuspendLayout();
            this.tsbAdicionarProduto.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.arquivoToolStripMenuItem,
            this.contaToolStripMenuItem,
            this.cadastrarToolStripMenuItem,
            this.relatóriosToolStripMenuItem,
            this.bancoDeDadosToolStripMenuItem,
            this.ajudaToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(1350, 24);
            this.menuStrip.TabIndex = 1;
            this.menuStrip.Text = "menuStrip";
            // 
            // arquivoToolStripMenuItem
            // 
            this.arquivoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripSeparator2,
            this.sairToolStripMenuItem});
            this.arquivoToolStripMenuItem.Name = "arquivoToolStripMenuItem";
            this.arquivoToolStripMenuItem.Size = new System.Drawing.Size(61, 20);
            this.arquivoToolStripMenuItem.Text = "Arquivo";
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(133, 6);
            // 
            // sairToolStripMenuItem
            // 
            this.sairToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("sairToolStripMenuItem.Image")));
            this.sairToolStripMenuItem.Name = "sairToolStripMenuItem";
            this.sairToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Q)));
            this.sairToolStripMenuItem.Size = new System.Drawing.Size(136, 22);
            this.sairToolStripMenuItem.Text = "Sair";
            this.sairToolStripMenuItem.Click += new System.EventHandler(this.sairToolStripMenuItem_Click);
            // 
            // contaToolStripMenuItem
            // 
            this.contaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consultarToolStripMenuItem,
            this.fecharToolStripMenuItem});
            this.contaToolStripMenuItem.Name = "contaToolStripMenuItem";
            this.contaToolStripMenuItem.Size = new System.Drawing.Size(56, 20);
            this.contaToolStripMenuItem.Text = "Contas";
            // 
            // consultarToolStripMenuItem
            // 
            this.consultarToolStripMenuItem.Name = "consultarToolStripMenuItem";
            this.consultarToolStripMenuItem.Size = new System.Drawing.Size(125, 22);
            this.consultarToolStripMenuItem.Text = "Consultar";
            this.consultarToolStripMenuItem.Click += new System.EventHandler(this.consultarToolStripMenuItem_Click);
            // 
            // fecharToolStripMenuItem
            // 
            this.fecharToolStripMenuItem.Name = "fecharToolStripMenuItem";
            this.fecharToolStripMenuItem.Size = new System.Drawing.Size(125, 22);
            this.fecharToolStripMenuItem.Text = "Fechar";
            // 
            // cadastrarToolStripMenuItem
            // 
            this.cadastrarToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.produtoToolStripMenuItem,
            this.ingredienteToolStripMenuItem,
            this.categoriaToolStripMenuItem,
            this.combosToolStripMenuItem,
            this.pedidosToolStripMenuItem,
            this.produtoTesteToolStripMenuItem});
            this.cadastrarToolStripMenuItem.Name = "cadastrarToolStripMenuItem";
            this.cadastrarToolStripMenuItem.Size = new System.Drawing.Size(86, 20);
            this.cadastrarToolStripMenuItem.Text = "Inserir/Editar";
            // 
            // produtoToolStripMenuItem
            // 
            this.produtoToolStripMenuItem.Name = "produtoToolStripMenuItem";
            this.produtoToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.produtoToolStripMenuItem.Text = "Produto";
            this.produtoToolStripMenuItem.Click += new System.EventHandler(this.produtoToolStripMenuItem_Click);
            // 
            // ingredienteToolStripMenuItem
            // 
            this.ingredienteToolStripMenuItem.Name = "ingredienteToolStripMenuItem";
            this.ingredienteToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.ingredienteToolStripMenuItem.Text = "Ingrediente";
            this.ingredienteToolStripMenuItem.Click += new System.EventHandler(this.ingredienteToolStripMenuItem_Click);
            // 
            // categoriaToolStripMenuItem
            // 
            this.categoriaToolStripMenuItem.Name = "categoriaToolStripMenuItem";
            this.categoriaToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.categoriaToolStripMenuItem.Text = "Categoria";
            this.categoriaToolStripMenuItem.Click += new System.EventHandler(this.categoriaToolStripMenuItem_Click);
            // 
            // combosToolStripMenuItem
            // 
            this.combosToolStripMenuItem.Name = "combosToolStripMenuItem";
            this.combosToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.combosToolStripMenuItem.Text = "Combos";
            this.combosToolStripMenuItem.Click += new System.EventHandler(this.combosToolStripMenuItem_Click);
            // 
            // pedidosToolStripMenuItem
            // 
            this.pedidosToolStripMenuItem.Name = "pedidosToolStripMenuItem";
            this.pedidosToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.pedidosToolStripMenuItem.Text = "Pedidos";
            this.pedidosToolStripMenuItem.Click += new System.EventHandler(this.pedidosToolStripMenuItem_Click);
            // 
            // produtoTesteToolStripMenuItem
            // 
            this.produtoTesteToolStripMenuItem.Name = "produtoTesteToolStripMenuItem";
            this.produtoTesteToolStripMenuItem.Size = new System.Drawing.Size(145, 22);
            this.produtoTesteToolStripMenuItem.Text = "ProdutoTeste";
            this.produtoTesteToolStripMenuItem.Click += new System.EventHandler(this.produtoTesteToolStripMenuItem_Click);
            // 
            // relatóriosToolStripMenuItem
            // 
            this.relatóriosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.relatóriosToolStripMenuItem1,
            this.faturasToolStripMenuItem});
            this.relatóriosToolStripMenuItem.Name = "relatóriosToolStripMenuItem";
            this.relatóriosToolStripMenuItem.Size = new System.Drawing.Size(47, 20);
            this.relatóriosToolStripMenuItem.Text = "Gerar";
            // 
            // relatóriosToolStripMenuItem1
            // 
            this.relatóriosToolStripMenuItem1.Image = ((System.Drawing.Image)(resources.GetObject("relatóriosToolStripMenuItem1.Image")));
            this.relatóriosToolStripMenuItem1.Name = "relatóriosToolStripMenuItem1";
            this.relatóriosToolStripMenuItem1.Size = new System.Drawing.Size(132, 22);
            this.relatóriosToolStripMenuItem1.Text = "Relatórios";
            this.relatóriosToolStripMenuItem1.Click += new System.EventHandler(this.relatóriosToolStripMenuItem1_Click);
            // 
            // faturasToolStripMenuItem
            // 
            this.faturasToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("faturasToolStripMenuItem.Image")));
            this.faturasToolStripMenuItem.Name = "faturasToolStripMenuItem";
            this.faturasToolStripMenuItem.Size = new System.Drawing.Size(132, 22);
            this.faturasToolStripMenuItem.Text = "Nota Fiscal";
            this.faturasToolStripMenuItem.Click += new System.EventHandler(this.faturasToolStripMenuItem_Click);
            // 
            // bancoDeDadosToolStripMenuItem
            // 
            this.bancoDeDadosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ingredientesToolStripMenuItem,
            this.categoriasToolStripMenuItem,
            this.produtosToolStripMenuItem,
            this.combosToolStripMenuItem1,
            this.faturasToolStripMenuItem1});
            this.bancoDeDadosToolStripMenuItem.Name = "bancoDeDadosToolStripMenuItem";
            this.bancoDeDadosToolStripMenuItem.Size = new System.Drawing.Size(103, 20);
            this.bancoDeDadosToolStripMenuItem.Text = "Banco de dados";
            // 
            // ingredientesToolStripMenuItem
            // 
            this.ingredientesToolStripMenuItem.Name = "ingredientesToolStripMenuItem";
            this.ingredientesToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.ingredientesToolStripMenuItem.Text = "Ingredientes";
            this.ingredientesToolStripMenuItem.Click += new System.EventHandler(this.ingredientesToolStripMenuItem_Click);
            // 
            // categoriasToolStripMenuItem
            // 
            this.categoriasToolStripMenuItem.Name = "categoriasToolStripMenuItem";
            this.categoriasToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.categoriasToolStripMenuItem.Text = "Categorias";
            this.categoriasToolStripMenuItem.Click += new System.EventHandler(this.categoriasToolStripMenuItem_Click);
            // 
            // produtosToolStripMenuItem
            // 
            this.produtosToolStripMenuItem.Name = "produtosToolStripMenuItem";
            this.produtosToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.produtosToolStripMenuItem.Text = "Produtos";
            this.produtosToolStripMenuItem.Click += new System.EventHandler(this.produtosToolStripMenuItem_Click);
            // 
            // combosToolStripMenuItem1
            // 
            this.combosToolStripMenuItem1.Name = "combosToolStripMenuItem1";
            this.combosToolStripMenuItem1.Size = new System.Drawing.Size(142, 22);
            this.combosToolStripMenuItem1.Text = "Combos";
            this.combosToolStripMenuItem1.Click += new System.EventHandler(this.combosToolStripMenuItem1_Click);
            // 
            // faturasToolStripMenuItem1
            // 
            this.faturasToolStripMenuItem1.Name = "faturasToolStripMenuItem1";
            this.faturasToolStripMenuItem1.Size = new System.Drawing.Size(142, 22);
            this.faturasToolStripMenuItem1.Text = "Notas Fiscais";
            this.faturasToolStripMenuItem1.Click += new System.EventHandler(this.faturasToolStripMenuItem1_Click);
            // 
            // ajudaToolStripMenuItem
            // 
            this.ajudaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.sobreToolStripMenuItem,
            this.ajudaToolStripMenuItem1});
            this.ajudaToolStripMenuItem.Name = "ajudaToolStripMenuItem";
            this.ajudaToolStripMenuItem.Size = new System.Drawing.Size(50, 20);
            this.ajudaToolStripMenuItem.Text = "Ajuda";
            // 
            // sobreToolStripMenuItem
            // 
            this.sobreToolStripMenuItem.Name = "sobreToolStripMenuItem";
            this.sobreToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.sobreToolStripMenuItem.Text = "Sobre";
            this.sobreToolStripMenuItem.Click += new System.EventHandler(this.sobreToolStripMenuItem_Click);
            // 
            // ajudaToolStripMenuItem1
            // 
            this.ajudaToolStripMenuItem1.Name = "ajudaToolStripMenuItem1";
            this.ajudaToolStripMenuItem1.Size = new System.Drawing.Size(152, 22);
            this.ajudaToolStripMenuItem1.Text = "Ajuda";
            // 
            // tsbAdicionarProduto
            // 
            this.tsbAdicionarProduto.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButton7,
            this.toolStripSeparator3,
            this.tsbModificarIngrediente,
            this.tsbAdicionarIngrediente,
            this.toolStripButton3,
            this.toolStripSeparator1,
            this.tsbGerarRelatorio,
            this.tsbGerarNotaFiscal,
            this.tsbAjuda,
            this.toolStripSeparator4});
            this.tsbAdicionarProduto.Location = new System.Drawing.Point(0, 24);
            this.tsbAdicionarProduto.Name = "tsbAdicionarProduto";
            this.tsbAdicionarProduto.Size = new System.Drawing.Size(1350, 25);
            this.tsbAdicionarProduto.TabIndex = 2;
            this.tsbAdicionarProduto.Text = "toolStrip";
            // 
            // toolStripButton7
            // 
            this.toolStripButton7.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton7.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton7.Image")));
            this.toolStripButton7.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton7.Name = "toolStripButton7";
            this.toolStripButton7.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton7.Text = "Sair";
            this.toolStripButton7.Click += new System.EventHandler(this.toolStripButton7_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // tsbModificarIngrediente
            // 
            this.tsbModificarIngrediente.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbModificarIngrediente.Image = ((System.Drawing.Image)(resources.GetObject("tsbModificarIngrediente.Image")));
            this.tsbModificarIngrediente.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tsbModificarIngrediente.Name = "tsbModificarIngrediente";
            this.tsbModificarIngrediente.Size = new System.Drawing.Size(23, 22);
            this.tsbModificarIngrediente.Text = "Modificar disponibilidade de um ingrediente";
            this.tsbModificarIngrediente.Click += new System.EventHandler(this.tsbModificarIngrediente_Click);
            // 
            // tsbAdicionarIngrediente
            // 
            this.tsbAdicionarIngrediente.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbAdicionarIngrediente.Image = ((System.Drawing.Image)(resources.GetObject("tsbAdicionarIngrediente.Image")));
            this.tsbAdicionarIngrediente.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tsbAdicionarIngrediente.Name = "tsbAdicionarIngrediente";
            this.tsbAdicionarIngrediente.Size = new System.Drawing.Size(23, 22);
            this.tsbAdicionarIngrediente.Text = "Adicionar ingrediente";
            this.tsbAdicionarIngrediente.Click += new System.EventHandler(this.tsbAdicionarIngrediente_Click);
            // 
            // toolStripButton3
            // 
            this.toolStripButton3.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton3.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton3.Image")));
            this.toolStripButton3.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton3.Name = "toolStripButton3";
            this.toolStripButton3.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton3.Text = "Adicionar produto";
            this.toolStripButton3.Click += new System.EventHandler(this.toolStripButton3_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // tsbGerarRelatorio
            // 
            this.tsbGerarRelatorio.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbGerarRelatorio.Image = ((System.Drawing.Image)(resources.GetObject("tsbGerarRelatorio.Image")));
            this.tsbGerarRelatorio.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tsbGerarRelatorio.Name = "tsbGerarRelatorio";
            this.tsbGerarRelatorio.Size = new System.Drawing.Size(23, 22);
            this.tsbGerarRelatorio.Text = "Gerar Relatórios";
            this.tsbGerarRelatorio.Click += new System.EventHandler(this.tsbGerarRelatorio_Click);
            // 
            // tsbGerarNotaFiscal
            // 
            this.tsbGerarNotaFiscal.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbGerarNotaFiscal.Image = ((System.Drawing.Image)(resources.GetObject("tsbGerarNotaFiscal.Image")));
            this.tsbGerarNotaFiscal.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tsbGerarNotaFiscal.Name = "tsbGerarNotaFiscal";
            this.tsbGerarNotaFiscal.Size = new System.Drawing.Size(23, 22);
            this.tsbGerarNotaFiscal.Text = "Gerar notas fiscais";
            this.tsbGerarNotaFiscal.Click += new System.EventHandler(this.tsbGerarNotaFiscal_Click);
            // 
            // tsbAjuda
            // 
            this.tsbAjuda.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbAjuda.Image = ((System.Drawing.Image)(resources.GetObject("tsbAjuda.Image")));
            this.tsbAjuda.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.tsbAjuda.Name = "tsbAjuda";
            this.tsbAjuda.Size = new System.Drawing.Size(23, 22);
            this.tsbAjuda.Text = "Ajuda";
            this.tsbAjuda.Click += new System.EventHandler(this.tsbAjuda_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 25);
            // 
            // FrmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1350, 730);
            this.Controls.Add(this.tsbAdicionarProduto);
            this.Controls.Add(this.menuStrip);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Name = "FrmPrincipal";
            this.Text = "e-Serveur";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.tsbAdicionarProduto.ResumeLayout(false);
            this.tsbAdicionarProduto.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem arquivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cadastrarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem relatóriosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ajudaToolStripMenuItem;
        private System.Windows.Forms.ToolStrip tsbAdicionarProduto;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem sairToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem produtoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sobreToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ingredienteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem categoriaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem combosToolStripMenuItem;
        private System.Windows.Forms.ToolStripButton tsbModificarIngrediente;
        private System.Windows.Forms.ToolStripMenuItem ajudaToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem contaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem fecharToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem relatóriosToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem faturasToolStripMenuItem;
        private System.Windows.Forms.ToolStripButton tsbAdicionarIngrediente;
        private System.Windows.Forms.ToolStripButton toolStripButton3;
        private System.Windows.Forms.ToolStripMenuItem pedidosToolStripMenuItem;
        private System.Windows.Forms.ToolStripButton toolStripButton7;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton tsbGerarRelatorio;
        private System.Windows.Forms.ToolStripButton tsbGerarNotaFiscal;
        private System.Windows.Forms.ToolStripButton tsbAjuda;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem bancoDeDadosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ingredientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem categoriasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem produtosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem combosToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem faturasToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem produtoTesteToolStripMenuItem;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
    }
}

