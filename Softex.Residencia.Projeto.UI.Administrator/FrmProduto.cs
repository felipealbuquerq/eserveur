using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Business.Exceptions;
using Softex.Residencia.EServeur.Model;
using System.Collections;
using System.Collections.Generic;

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
            try
            {
                this.cboListaDeProdutos.Items.Clear();

                foreach (Produto produto in this.produtoBusiness.RecuperarProdutos())
                {
                    this.cboListaDeProdutos.Items.Add(produto);
                }

                this.cboListaDeProdutos.DisplayMember = "Nome";
                this.cboListaDeProdutos.ValueMember = "Id";

                if (this.cboListaDeProdutos.Items.Count > 0)
                {
                    this.cboListaDeProdutos.SelectedIndex = 0;
                }

                this.cboCategoria.DisplayMember = "Nome";
                this.cboCategoria.ValueMember = "Id";
                this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();
                               
                this.chkListaDeIngredientesNovoProduto.Items.Clear();

                foreach (string nomeIngrediente in this.ingredienteBusiness.RecuperarNomesIngredientes())
                {
                    this.chkListaDeIngredientesNovoProduto.Items.Add(nomeIngrediente);
                }
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //
        private void LimparCamposFormulario()
        {
            this.txtNomeNovoProduto.Text = "";
            this.txtDescricaoNovoProduto.Text = "";
            this.txtPrecoNovoProduto.Text = "";

            if (this.cboCategoria.SelectedIndex > 0)
            {
                this.cboCategoria.SelectedIndex = 0;
            }
            
            this.picImagemNovoProduto.Image = null;
        }

        //
        private void ValidarCamposFormulario()
        {
            if (string.IsNullOrWhiteSpace(this.txtNomeNovoProduto.Text))
            {
                throw new GenericWarningException("Informe o nome do produto!");
            }

            decimal d;

            if (!decimal.TryParse(this.txtPrecoNovoProduto.Text, out d))
            {
                throw new GenericWarningException("Informe o preço do produto corretamente!");
            }

            if (this.cboCategoria.SelectedValue == null)
            {
                throw new GenericWarningException("Informe a categoria do produto!");
            }

            if (this.picImagemNovoProduto.Image == null)
            {
                throw new GenericWarningException("Informe a imagem do produto!");
            }

            if (string.IsNullOrWhiteSpace(this.txtDescricaoNovoProduto.Text))
            {
                throw new GenericWarningException("Informe a descrição do produto!");
            }
        }

        //
        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;

                using (MemoryStream ms = new MemoryStream(produto.Imagem))
                {
                    this.picProdutoSelecionado.Image = new Bitmap(ms);
                }

                this.txtDescricaoProdutoSelecionado.Text = produto.Descricao;
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //
        private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)
        {
            if (this.openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.picImagemNovoProduto.Image = new Bitmap(this.openFileDialog.FileName);
            }
        }

        //
        private void btnSalvarProduto_Click(object sender, EventArgs e)
        {
            try
            {
                this.ValidarCamposFormulario();

                Produto produto = new Produto()
                {
                    Nome = this.txtNomeNovoProduto.Text,
                    Descricao = this.txtDescricaoNovoProduto.Text,
                    Preco = Convert.ToDecimal(this.txtPrecoNovoProduto.Text),
                    CategoriaId = (int) cboCategoria.SelectedValue
                };

                using (MemoryStream ms = new MemoryStream())
                {
                    Image image = this.picImagemNovoProduto.Image;
                    image.Save(ms, ImageFormat.Png);

                    produto.Imagem = ms.ToArray();
                }

                foreach (string item in this.chkListaDeIngredientesNovoProduto.SelectedItems)
                {
                    Ingrediente ingrediente = this.ingredienteBusiness.RecuperarIngredientes(i => i.Nome == item).FirstOrDefault();

                    if (ingrediente != null)
                    {
                        produto.Ingredientes.Add(ingrediente);
                    }                    
                }

                this.produtoBusiness.CadastrarProduto(produto);                

                MessageBox.Show(Mensagens.CadastroProdutoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Information);

                this.LimparCamposFormulario();
                this.PreencherCamposFormulario();
            }
            catch (GenericWarningException ex)
            {
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
            }
        }

        //
        private void btnCancelarRegistroNovoProduto_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        //
        private void btnRemoverProduto_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.cboListaDeProdutos.SelectedItem == null)
                {
                    throw new GenericWarningException("Selecione o produto que deseja excluir!");
                }

                Produto produto = (Produto) this.cboListaDeProdutos.SelectedItem;

                if (
                    MessageBox.Show(Mensagens.ExcluirProduto, Mensagens.Mensagem, MessageBoxButtons.YesNo,
                                    MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    this.produtoBusiness.RemoverProduto(produto.Id);
                    this.PreencherCamposFormulario();

                    MessageBox.Show(Mensagens.ProdutoExcluidoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                    MessageBoxIcon.Information);
                }
            }
            catch (GenericWarningException ex)
            {
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
            }
        }
    }
}
