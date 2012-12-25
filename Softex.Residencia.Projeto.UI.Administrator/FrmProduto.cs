using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using System.Collections;
using System.Collections.Generic;

using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Business.Exceptions;
using Softex.Residencia.EServeur.Model;


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

            // Modificações de formato das strings
            this.lblPreco.Text = String.Format("Preço ({0:C}): ", 0);

            AtualizarCamposFormulario();
            DesativarSalvarModificacao();
        }

        #region Métodos

        private void AtualizarCamposFormulario()
        {
            try
            {
                // 1. Limpar e atualizar lista de produtos do BD
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

                // 2. Atualizar lista de categorias
                this.cboCategoria.DisplayMember = "Nome";
                this.cboCategoria.ValueMember = "Id";
                this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();

                // 3. Atualizar lista de ingredientes
                this.chkListaDeIngredientesProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();


                // 4. Preencher os campos com informações do produto selecionado necessários
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //
        private void PreencherFormularioProduto(Produto produto) 
        {
            // 1. Preencher nome do produto
            this.txtNomeProduto.Text = produto.Nome;

            // 2. Preencher categoria do produto
            this.cboCategoria.SelectedValue = produto.CategoriaId;

            // 3. Preencher preço do produto
            Console.WriteLine("preço" + produto.Preco.ToString());
            this.txtPrecoProduto.Text = Convert.ToString(produto.Preco);

            // 4. Selecionar ingredientes que compoem produto
            /**** TODO: Falta implementar ****/

            // 5. Preencher descrição do produto
            this.txtDescricaoProduto.Text = produto.Descricao;

            // 6. Adicionar imagem do produto
            ImageConverter ic = new ImageConverter();
            this.picImagemProduto.Image = (Image)ic.ConvertFrom(produto.Imagem);
        }

        //
        private void LimparCamposFormulario()
        {
            this.txtNomeProduto.Text = "";
            this.txtDescricaoProduto.Text = "";
            this.txtPrecoProduto.Text = "";

            if (this.cboCategoria.SelectedIndex > 0)
            {
                this.cboCategoria.SelectedIndex = 0;
            }

            this.picImagemProduto.Image = null;
        }

        //
        private void ValidarCamposFormulario()
        {
            if (string.IsNullOrWhiteSpace(this.txtNomeProduto.Text)) {
                throw new GenericWarningException("Informe o nome do produto!");
            }

            decimal d;

            if (!decimal.TryParse(this.txtPrecoProduto.Text, out d)) {
                throw new GenericWarningException("Informe o preço do produto corretamente!");
            }

            if (this.cboCategoria.SelectedValue == null) {
                throw new GenericWarningException("Informe a categoria do produto!");
            }

            if (this.picImagemProduto.Image == null) {
                throw new GenericWarningException("Informe a imagem do produto!");
            }

            if (string.IsNullOrWhiteSpace(this.txtDescricaoProduto.Text)) {
                throw new GenericWarningException("Informe a descrição do produto!");
            }
        }


        private void AtivarSalvarModificacao(object sender, EventArgs e)
        {
            btnSalvarModificacaoProduto.Enabled = true;
            btnCancelarModificacaoProduto.Enabled = true;
        }

        private void DesativarSalvarModificacao()
        {
            btnSalvarModificacaoProduto.Enabled = false;
            btnCancelarModificacaoProduto.Enabled = false;
        }

        private void RemoverProdutoSelecionado()
        {
            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
            this.produtoBusiness.RemoverProduto(produto.Id);
        }

        #endregion
        #region Eventos

        private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)
        {
            if (this.dlgUploadImagem.ShowDialog() == DialogResult.OK) {
                this.picImagemProduto.Image = new Bitmap(this.dlgUploadImagem.FileName);
            }
        }

        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {
                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
                PreencherFormularioProduto(produto);
            }
            catch (Exception) {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            DesativarSalvarModificacao();
        }

        private void btnSalvarModificacaoProduto_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Validar campos do formulário
                ValidarCamposFormulario();

                // 2. Remover o produto selecionado
                RemoverProdutoSelecionado();

                // 3. Criar um novo produto a partir dos campos modificados
                Produto novoProduto = new Produto()
                {
                    Nome = this.txtNomeProduto.Text,
                    Descricao = this.txtDescricaoProduto.Text,
                    Preco = Convert.ToDecimal(this.txtPrecoProduto.Text),
                    CategoriaId = (int)cboCategoria.SelectedValue
                };
               
                using (MemoryStream ms = new MemoryStream()) 
                {
                    Image image = this.picImagemProduto.Image;
                    image.Save(ms, ImageFormat.Png);

                    novoProduto.Imagem = ms.ToArray();
                }

                // 4. Adicionar o novo produto ao banco de dados
                this.produtoBusiness.CadastrarProduto(novoProduto);

                // 5. Desativar os botoes de salvar e cancelar
                DesativarSalvarModificacao();
            }
            catch (GenericWarningException ex){
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
            catch (Exception){
                MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
            }
        }

        private void btnCancelarModificacaoProduto_Click(object sender, EventArgs e)
        {
            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
            PreencherFormularioProduto(produto);
            DesativarSalvarModificacao();
        }

        #endregion
    }
}
