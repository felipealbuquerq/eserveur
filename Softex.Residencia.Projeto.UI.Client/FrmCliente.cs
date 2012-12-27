using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.Projeto.UI.Administrator;
using Softex.Residencia.Projeto.UI.Client.Controls;
using Softex.Residencia.Projeto.UI.Calculadora;
using Softex.Residencia.EServeur.Business.Exceptions;


namespace Softex.Residencia.Projeto.UI.Client
{
    public partial class FrmCliente : Form
    {
        private CategoriaBusiness categoriasBusiness;
        private ProdutoBusiness produtoBusiness;
        private PedidoBusiness pedidoBusiness;
        private IList<ItemPedido> itensPedidos;
        private IList<string> nomesListViews;

        public FrmCliente()
        {
            InitializeComponent();

            this.categoriasBusiness = new CategoriaBusiness();
            this.produtoBusiness = new ProdutoBusiness();
            this.pedidoBusiness = new PedidoBusiness();
            this.itensPedidos = new List<ItemPedido>();
            this.nomesListViews = new List<string>();

            this.CarregarTabsCategorias();
        }

        private void CarregarTabsCategorias()
        {
            // 1. Criar tabs com os nomes das categorias
            foreach (Categoria categoria in this.categoriasBusiness.RecuperarCategorias())
            {
                TabPage tabPage = new TabPage(categoria.Nome); 
                this.tabCategorias.TabPages.Add(tabPage);

                ImageList imageList = new ImageList();
                imageList.ImageSize = new System.Drawing.Size(96, 96);  

                ListView lstView = new ListView()
                {
                    Name = "lstView" + categoria.Nome,
                    Dock = DockStyle.Fill,
                    LargeImageList = imageList
                };
                                                
                lstView.MouseDoubleClick += new MouseEventHandler(listView_MouseDoubleClick);

                this.nomesListViews.Add(lstView.Name);
                tabPage.Controls.Add(lstView);
                
                // 2. Adicionar produtos das categorias nas tabs
                if (categoria.Produtos != null) {
                    foreach (Produto produto in categoria.Produtos) {
                        using (MemoryStream ms = new MemoryStream(produto.Imagem)) {
                            Bitmap icone = new Bitmap(ms);
                            imageList.Images.Add(icone);
                        }
                        /*
                        string labelDoProduto = String.Format("{0}\n[{1:C}]", produto.Nome, produto.Preco);
                        ListViewItem listViewItem = new ListViewItem(labelDoProduto); 
                         * */
                        ListViewItem listViewItem = new IconeProduto(produto.Nome, produto.Preco);
                        listViewItem.ImageIndex = imageList.Images.Count - 1;
                        lstView.Items.Add(listViewItem);
                    }
                }
            }
        }

        void listView_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            this.btnAdicionarProduto_Click(sender, e);
        }

        private void btnAdicionarProduto_Click(object sender, EventArgs e)
        {
            TabPage tabPage = this.tabCategorias.SelectedTab;
            ListView lstView = null;

            foreach (string nomeListView in this.nomesListViews)
	        {
                if (tabPage.Controls.ContainsKey(nomeListView))
	            {
                    lstView = tabPage.Controls.Find(nomeListView, true).First() as ListView;
                    break;
	            }                
	        }

            if (lstView == null)
            {
                return;
            }

            string nomeProduto = ((IconeProduto)lstView.SelectedItems[0]).NomeDoProduto;

            Produto produto = this.produtoBusiness.RecuperarProdutos(p => p.Nome == nomeProduto).FirstOrDefault();
            
            if (produto != null)
            {
                this.AdicionarProdutoLista(produto); 
            }            
        }

        private void AdicionarProdutoLista(Produto produto)
        {
            ItemPedido itemPedido = this.itensPedidos.FirstOrDefault(item => item.Produto == produto);

            if (itemPedido != null)
            {
                itemPedido.QtdProduto += 1;
            }
            else
            {
                itemPedido = new ItemPedido()
                {
                    Produto = produto,
                    QtdProduto = 1
                };

                this.itensPedidos.Add(itemPedido);
            }

            this.MostrarProdutosLista();
        }

        private void MostrarProdutosLista()
        {
            this.lstViewProdutos.Items.Clear();

            foreach (ItemPedido itemPedido in this.itensPedidos)
            {
                ListViewItem lstViewItem = new ListViewItem(itemPedido.Produto.Nome);
                lstViewItem.SubItems.Add(itemPedido.QtdProduto.ToString());
                lstViewItem.SubItems.Add(itemPedido.Valor.ToString("C"));

                this.lstViewProdutos.Items.Add(lstViewItem);
            }

            if (this.itensPedidos.Count > 0)
            {
                this.txtTotalDoPedido.Text = this.itensPedidos.Sum(item => item.Valor).ToString("C");
            }
            else
            {
                this.txtTotalDoPedido.Text = string.Format("{0:c}", 0);
            }
        }

        private void btnRemoverProduto_Click(object sender, EventArgs e)
        {
            if (this.lstViewProdutos.SelectedItems.Count <= 0)
            {
                MessageBox.Show("Selecione o produto que deseja remover!", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            string nomeProdutoSelecionado = this.lstViewProdutos.SelectedItems[0].Text;
            ItemPedido itemPedido = this.itensPedidos.FirstOrDefault(item => item.Produto.Nome == nomeProdutoSelecionado);

            if (itemPedido == null)
            {
                return;
            }
            else if (itemPedido.QtdProduto > 1)
            {
                itemPedido.QtdProduto -= 1;
            }
            else
            {
                this.itensPedidos.Remove(itemPedido);
            }

            this.MostrarProdutosLista();
        }

        private void btnRealizarPedido_Click(object sender, EventArgs e) 
        {
            try
            {
                if (string.IsNullOrWhiteSpace(this.txtNumeroDaMesa.Text))
                {
                    MessageBox.Show("Informe o número da mesa!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }

                foreach (char c in this.txtNumeroDaMesa.Text.ToCharArray())
                {
                    if (!char.IsNumber(c))
                    {
                        MessageBox.Show("O número da mesa informado é inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }
                }

                
                string mensagem = string.Format("Efetuar pedido no valor: {0:c}? \nMesa: {1}", txtTotalDoPedido.Text, txtNumeroDaMesa.Text);
                
                if (MessageBox.Show(mensagem, "Confirmar pedido", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    Pedido novoPedido = new Pedido()
                    {
                        HorarioEntrada = DateTime.Now,
                        MesaId = Convert.ToInt32(this.txtNumeroDaMesa.Text),
                        StatusId = (int)StatusPedido.NaoPago,
                        ItensPedidos = this.itensPedidos
                    };

                    this.pedidoBusiness.CadastrarPedido(novoPedido);
                    MessageBox.Show("Pedido realizado com sucesso!", "", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    this.LimparCamposFormulario();
                }
            }
            catch(Exception)
            {
                MessageBox.Show("Não foi possível realizar o pedido!", "Falha", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimparCamposFormulario()
        {
            this.lstViewProdutos.Items.Clear();
            this.txtNumeroDaMesa.Text = "";
            this.txtTotalDoPedido.Text = "";
            this.itensPedidos.Clear();
        }

        private void pedidoDoubleClick(object sender, MouseEventArgs e)
        {
            if (this.lstViewProdutos.SelectedItems.Count <= 0) {
                MessageBox.Show("Selecione o produto que deseja remover!", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            string nomeProdutoSelecionado = this.lstViewProdutos.SelectedItems[0].Text;
            ItemPedido itemPedido = this.itensPedidos.FirstOrDefault(item => item.Produto.Nome == nomeProdutoSelecionado);

            if (itemPedido == null) {
                return;
            }
            else if (itemPedido.QtdProduto > 1) {
                itemPedido.QtdProduto -= 1;
            }
            else {
                this.itensPedidos.Remove(itemPedido);
            }

            this.MostrarProdutosLista();
        }

        private void btnAbrirCalculadora_Click(object sender, EventArgs e)
        {
            FrmCalculadora calculadora = new FrmCalculadora();
            calculadora.Show();
        }

        private void btnValorDaConta_Click(object sender, EventArgs e)
        {
            try {
                if (string.IsNullOrWhiteSpace(this.txtNumeroDaMesa.Text)) {
                    MessageBox.Show("Informe o número da mesa!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }

                foreach (char c in this.txtNumeroDaMesa.Text.ToCharArray()) {
                    if (!char.IsNumber(c)) {
                        MessageBox.Show("O número da mesa informado é inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }
                }

                Form telaDaConta = new FrmConta(Convert.ToInt32(this.txtNumeroDaMesa.Text));
                telaDaConta.ShowDialog();
            }
            catch (Exception) {
                MessageBox.Show("Não foi possível carregar os pedidos da conta!", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
