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

        // Carrega a comboBox com os ingredientes cadastrados no sistema
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


        // Mostra botao "disponível" e esconde o botao "não disponível"
        private void mostrarBotaoDisponivel()
        {
            this.btnDisponivel.Enabled = true;
            this.btnDisponivel.Show();
            this.btnNaoDisponivel.Hide();
            this.lblDisponibilidade.Text = "Disponível";

        }

        // Mostra botao "não disponível" e esconde o botao "disponível"
        private void mostrarBotaoNaoDisponivel()
        {
            this.btnNaoDisponivel.Enabled = true;
            this.btnNaoDisponivel.Show();
            this.btnDisponivel.Hide();
            this.lblDisponibilidade.Text = "Não disponível";
        }


        // Adicionar novo ingrediente ao banco de dados
        private void btnAdicionarIngrediente_Click(object sender, EventArgs e)
        {
            // Tentar adicionar o ingrediente ao banco de dados
            try
            {
                if (string.IsNullOrWhiteSpace(this.cboListaDeIngrediente.Text))
                {
                    throw new GenericWarningException("Informe o nome do ingrediente!");
                }
                else{
                    foreach (var ing in ingredienteBusiness.RecuperarIngredientes()) {
                        if (ing.Nome == this.cboListaDeIngrediente.Text) {
                            throw new GenericWarningException("Ingrediente com o mesmo nome já está registrado!");
                        }
                    }
                }
                Ingrediente novoIngrediente = new Ingrediente()
                {
                    Nome = this.cboListaDeIngrediente.Text,
                    Disponivel = true // Os produtos são sempre adicionados disponível
                };

                this.ingredienteBusiness.CadastrarIngrediente(novoIngrediente);

                MessageBox.Show("Ingrediente registrado com sucesso", Mensagens.Mensagem, MessageBoxButtons.OK,
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


        // Remover ingrediente selecionado do banco de dados
        private void btnRemoverIngrediente_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.cboListaDeIngrediente.SelectedItem == null)
                {
                    throw new GenericWarningException("Selecione o ingrediente que deseja excluir!");
                }

                Ingrediente ingrediente = (Ingrediente)this.cboListaDeIngrediente.SelectedItem;

                if (
                    MessageBox.Show(Mensagens.ExcluirIngrediente, Mensagens.Mensagem, MessageBoxButtons.YesNo,
                                    MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    this.ingredienteBusiness.RemoverIngrediente(ingrediente.Id);
                    this.CarregarIngredientes();

                    MessageBox.Show(Mensagens.IngredienteExcluidoSucesso, Mensagens.Mensagem, MessageBoxButtons.OK,
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


        // Método para carregar as informações sobre o ingrediente selecionado e modificar
        // a apresentação de sua disponibilidade
        private void ingredienteSelecionado(object sender, EventArgs e)
        {
            Ingrediente ingredienteSelecionado = (Ingrediente)cboListaDeIngrediente.SelectedItem;

            if (ingredienteSelecionado.Disponivel) {
                this.btnDisponivel.Enabled = true;
                this.btnDisponivel.Show();
                this.btnNaoDisponivel.Hide();
                this.lblDisponibilidade.Text = "Disponível";
            }
            else {
                this.btnNaoDisponivel.Enabled = true;
                this.btnNaoDisponivel.Show();
                this.btnDisponivel.Hide();
                this.lblDisponibilidade.Text = "Não disponível";
            }
        }


        // Método para indisponibilizar ingrediente
        // Quando o botao informa que o ingrediente está disponível, clicando nele torna-o indisponível
        private void btnDisponivel_Click(object sender, EventArgs e)
        {
            try {
                Ingrediente ingredienteSelecionado = (Ingrediente)cboListaDeIngrediente.SelectedItem;

                // 1. Testar se o nome produto ja existe no banco de dados
                /*foreach(var ingredienteNome in this.ingredienteBusiness.RecuperarNomesIngredientes()){
                    if (this.cboListaDeIngrediente.Text == ingredienteNome){

                    }
                }*/
                if (ingredienteSelecionado == null) {
                    throw new GenericWarningException("Ingrediente deve ser registrado antes de modificar a disponibilidade!");
                }

                // 2. Muda o icone de disponível em não disponível
                this.mostrarBotaoNaoDisponivel();

                // 3. Indisponibiliza o ingrediente no banco de dados 
                this.ingredienteBusiness.IndisponibilizarIngrediente(ingredienteSelecionado.Id);
            }
            catch (GenericWarningException ex){
                // Limpa o campo de nome do ingrediente
                this.cboListaDeIngrediente.SelectedItem = null;
                this.cboListaDeIngrediente.Text = "";

                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            
        }


        // Método para indisponibilizar ingrediente
        // Quando o botao informa que o ingrediente está disponível, 
        // clicando nele torna-o indisponível
        private void btnNaoDisponivel_Click(object sender, EventArgs e)
        {
            try {
                Ingrediente ingredienteSelecionado = (Ingrediente)cboListaDeIngrediente.SelectedItem;

                // 1. Testar se o nome produto ja existe no banco de dados
                if (ingredienteSelecionado == null) {
                    throw new GenericWarningException("Ingrediente deve ser registrado antes de modificar a disponibilidade!");
                }

                // 2. Mudar o icone de não disponível em disponível
                this.mostrarBotaoDisponivel();

                // 3. Disponibilizar ingrediente no banco de dados 
                this.ingredienteBusiness.DisponibilizarIngrediente(ingredienteSelecionado.Id);
            }
            catch (GenericWarningException ex) {
                // Limpa o campo de nome do ingrediente
                this.cboListaDeIngrediente.SelectedItem = null;
                this.cboListaDeIngrediente.Text = "";

                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }


        // Double click no campo de nome do ingrediente apaga o nome 
        // para registro de novo ingrediente 
        private void nomeIngrediente_DoubleClick(object sender, MouseEventArgs e)
        {
            // Limpa o campo de nome do ingrediente
            this.cboListaDeIngrediente.SelectedItem = null;
            this.cboListaDeIngrediente.Text = "";
        }
    }
}
