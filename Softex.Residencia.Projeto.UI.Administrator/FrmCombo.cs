using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Business.Exceptions;
using System.IO;
using Softex.Residencia.EServeur.Business;
using System.Drawing.Imaging;

namespace Softex.Residencia.Projeto.UI.Administrator 
{
    public partial class FrmCombo : Form 
    {
        private readonly ProdutoBusiness produtoBusiness;
        private readonly CategoriaBusiness categoriaBusiness;

        public FrmCombo()
        {
            InitializeComponent();

            this.produtoBusiness = new ProdutoBusiness();
            this.categoriaBusiness = new CategoriaBusiness();

            this.PreencherCamposFormulario();
        }

        private void PreencherCamposFormulario()
        {
            try
            {
                this.cboListaDeCombo.Items.Clear();

                foreach (Produto produto in this.produtoBusiness.RecuperarCombos())
                {
                    this.cboListaDeCombo.Items.Add(produto);
                }

                this.cboListaDeCombo.DisplayMember = "Nome";
                this.cboListaDeCombo.ValueMember = "Id";

                if (this.cboListaDeCombo.Items.Count > 0)
                {
                    this.cboListaDeCombo.SelectedIndex = 0;
                }

                this.chkListaDeProdutos.Items.Clear();

                foreach (string nomeProduto in this.produtoBusiness.RecuperarNomesProdutos())
                {
                    this.chkListaDeProdutos.Items.Add(nomeProduto);
                }
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimparCamposFormulario()
        {
            this.txtNomeCombo.Text = "";
            this.txtDescricaoCombo.Text = "";
            this.txtPrecoCombo.Text = "";
            this.picImagemCombo.Image = null;
        }		

        private void ValidarCamposFormulario()
        {
            if (string.IsNullOrWhiteSpace(this.txtNomeCombo.Text))
            {
                throw new GenericWarningException("Informe o nome do produto!");
            }

            decimal d;
            
            if (!decimal.TryParse(this.txtPrecoCombo.Text, out d))
            {
                throw new GenericWarningException("Informe o preço do produto corretamente!");
            }
            
            if (string.IsNullOrWhiteSpace(this.txtDescricaoCombo.Text))
            {
                throw new GenericWarningException("Informe a descrição do produto!");
            }
        }

        private void cboListaDeCombo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Produto produto = (Produto)this.cboListaDeCombo.SelectedItem;

                using (MemoryStream ms = new MemoryStream(produto.Imagem))
                {
                    this.picComboSelecionado.Image = new Bitmap(ms);
                }

                this.txtDescricaoComboSelecionado.Text = produto.Descricao;
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void btnAdicionarImagemCombo_Click(object sender, EventArgs e)
        {
            if (this.openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.picImagemCombo.Image = new Bitmap(this.openFileDialog.FileName);
            }
        }

        private void btnSalvarCombo_Click(object sender, EventArgs e)
        {
            try
            {
                this.ValidarCamposFormulario();

                Produto combo = new Produto()
                {
                    Nome = this.txtNomeCombo.Text,
                    Descricao = this.txtDescricaoCombo.Text,
                    Preco = Convert.ToDecimal(this.txtPrecoCombo.Text),
                    IsCombo = true
                };

                using (MemoryStream ms = new MemoryStream())
                {
                    Image image = this.picImagemCombo.Image;
                    image.Save(ms, ImageFormat.Png);

                    combo.Imagem = ms.ToArray();
                }

                foreach (string nomeProduto in this.chkListaDeProdutos.Items)
                {
                    Produto produto = this.produtoBusiness.RecuperarProdutos(p => p.Nome == nomeProduto).FirstOrDefault();

                    if (produto != null)
                    {
                        combo.Produtos.Add(produto);
                    }
                }

                this.produtoBusiness.CadastrarProduto(combo);                

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

        private void btnCancelarRegistroCombo_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRemoverCombo_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.cboListaDeCombo.SelectedItem == null)
                {
                    throw new GenericWarningException("Selecione o produto que deseja excluir!");
                }

                Produto produto = (Produto) this.cboListaDeCombo.SelectedItem;

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
