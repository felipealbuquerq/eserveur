using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Model;
using System.IO;
using System.Drawing.Imaging;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmProduto : Form
    {
        private readonly IngredienteBusiness ingredienteBusiness;
        private readonly ProdutoBusiness produtoBusiness;
        private readonly CategoriaBusiness categoriaBusiness;

        public FrmProduto()
        {
            InitializeComponent();

            this.ingredienteBusiness = new IngredienteBusiness();
            this.produtoBusiness = new ProdutoBusiness();
            this.categoriaBusiness = new CategoriaBusiness();

            this.PreencherCamposFormulario();
        }

        private void PreencherCamposFormulario()
        {
            this.cboListaDeProdutos.DisplayMember = "Nome";
            this.cboListaDeProdutos.ValueMember = "Id";
            this.cboListaDeProdutos.DataSource = this.produtoBusiness.RecuperarProdutos();
            this.cboListaDeProdutos.Refresh();

            this.cboCategoria.DisplayMember = "Nome";
            this.cboCategoria.ValueMember = "Id";
            this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();

            this.chkListaDeIngredientesNovoProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();

            this.txtNomeNovoProduto.Text = "";
        }

        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int produtoId = (int)this.cboListaDeProdutos.SelectedValue;
            Produto produto = this.produtoBusiness.RecuperarProduto(produtoId);

            using (MemoryStream ms = new MemoryStream(produto.Imagem))
            {
                this.picProdutoSelecionado.Image = new Bitmap(ms);
            }

            this.txtDescricaoProdutoSelecionado.Text = produto.Descricao;
        }

        private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)
        {
            if (this.openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.picImagemNovoProduto.Image = new Bitmap(this.openFileDialog.FileName);
            }
        }

        private void btnSalvarProduto_Click(object sender, EventArgs e)
        {
            try
            {
                Produto produto = new Produto()
                {
                    Nome = this.txtNomeNovoProduto.Text,
                    Descricao = this.txtDescricaoNovoProduto.Text,
                    Preco = Convert.ToDecimal(this.txtPrecoNovoProduto.Text),
                    CategoriaId = (int)cboCategoria.SelectedValue
                };

                using (MemoryStream ms = new MemoryStream())
                {
                    Image image = this.picImagemNovoProduto.Image;
                    image.Save(ms, ImageFormat.Png);

                    produto.Imagem = ms.ToArray();
                }

                this.produtoBusiness.CadastrarProduto(produto);

                this.PreencherCamposFormulario();

                MessageBox.Show(Mensagens.CadastroProdutoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelarRegistroNovoProduto_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
