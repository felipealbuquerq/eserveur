using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Business.Exceptions;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.Projeto.UI.Administrator 
{
    public partial class FrmCategoria : Form
    {
        private readonly CategoriaBusiness categoriaBusiness;

        public FrmCategoria() 
        {
            InitializeComponent();

            this.categoriaBusiness = new CategoriaBusiness();
            this.CarregarCategorias();
        }

        private void CarregarCategorias()
        {
            try
            {
                this.cboListaDeCategoria.Items.Clear();

                foreach (Categoria categoria in this.categoriaBusiness.RecuperarCategorias())
                {
                    this.cboListaDeCategoria.Items.Add(categoria);
                }

                this.cboListaDeCategoria.DisplayMember = "Nome";
                this.cboListaDeCategoria.ValueMember = "Id";

                if (this.cboListaDeCategoria.Items.Count > 0)
                {
                    this.cboListaDeCategoria.SelectedItem = 0;
                }
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnAdicionarCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(this.txtNomeNovaCategoria.Text))
                {
                    throw new GenericWarningException("Informe o nome da categoria!");
                }

                Categoria categoria = new Categoria()
                {
                    Nome = this.txtNomeNovaCategoria.Text
                };

                this.categoriaBusiness.CadastrarCategoria(categoria);

                MessageBox.Show(Mensagens.CadastroCategoriaSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Information);

                this.CarregarCategorias();
            }
            catch (GenericWarningException ex)
            {
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (CategoryAlreadyExistsException ex)
            {
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.CadastroCategoriaFalha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRemoverCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.cboListaDeCategoria.SelectedItem == null)
                {
                    throw new GenericWarningException("Selecione a categoria que deseja excluir!");
                }

                Categoria categoria = (Categoria)this.cboListaDeCategoria.SelectedItem;

                if (MessageBox.Show(Mensagens.ExcluirProduto, Mensagens.Mensagem, MessageBoxButtons.YesNo,
                                    MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    this.categoriaBusiness.RemoverCategoria(categoria.Id);

                    MessageBox.Show(Mensagens.CategoriaExcluidaSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Information);

                    this.CarregarCategorias();
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
