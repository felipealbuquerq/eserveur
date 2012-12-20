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
            this.cboListaDeCategoria.DataSource = this.categoriaBusiness.RecuperarNomesCategorias();
        }

        private void btnAdicionarCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                Categoria categoria = new Categoria()
                {
                    Nome = this.txtNomeNovaCategoria.Text
                };

                this.categoriaBusiness.CadastrarCategoria(categoria);

                MessageBox.Show(Mensagens.CadastroCategoriaSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
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
