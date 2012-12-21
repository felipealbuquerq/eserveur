using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Business.Exceptions;
using Softex.Residencia.EServeur.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Softex.Residencia.Projeto.UI.Administrator {
    public partial class FrmIngrediente : Form {
        private IngredienteBusiness ingredienteBusiness;

        public FrmIngrediente() {
            InitializeComponent();

            this.ingredienteBusiness = new IngredienteBusiness();
            this.CarregarIngredientes();
        }

        private void CarregarIngredientes()
        {
            try
            {
                this.cboListaDeIngrediente.Items.Clear();

                foreach (Ingrediente ingrediente in this.ingredienteBusiness.RecuperarIngredientes())
                {
                    this.cboListaDeIngrediente.Items.Add(ingrediente);
                }

                this.cboListaDeIngrediente.DisplayMember = "Nome";
                this.cboListaDeIngrediente.ValueMember = "Id";

                if (this.cboListaDeIngrediente.Items.Count > 0)
                {
                    this.cboListaDeIngrediente.SelectedItem = 0;
                }
            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnAdicionarIngrediente_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(this.txtNomeNovaIngrediente.Text))
                {
                    throw new GenericWarningException("Informe o nome do ingrediente!");
                }

                Ingrediente novoIngrediente = new Ingrediente()
                {
                    Nome = this.txtNomeNovaIngrediente.Text
                };

                this.ingredienteBusiness.CadastrarIngrediente(novoIngrediente);

                MessageBox.Show(Mensagens.CadastroCategoriaSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Information);

                this.CarregarIngredientes();
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
    }
}
