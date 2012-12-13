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
    public partial class FrmCadastroProduto : Form
    {
        private readonly IngredienteBusiness ingredienteBusiness;
        private readonly ProdutoBusiness produtoBusiness;

        public FrmCadastroProduto()
        {
            InitializeComponent();

            //this.ingredienteBusiness = new IngredienteBusiness();
            //this.produtoBusiness = new ProdutoBusiness();

            //this.CarregarIngredientes();
        }


        private void CarregarIngredientes()
        {
            this.cboIngredientes.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();
        }

        private void btnAdicionarImagemPrato_Click(object sender, EventArgs e)
        {
            if (this.openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.picImagemPrato.Image = new Bitmap(this.openFileDialog.FileName);
            }
        }

		// botao para salvar prato
		// TODO: modificar de prato a produto
        private void btnSalvarPrato_Click(object sender, EventArgs e)
        {
            Categoria categoria = new Categoria(){
                                          Nome = "Pratos"
                                      };

            Produto produto = new Produto()
            {
                Nome = this.txtNomePrato.Text,
                Descricao = this.txtDescricaoPrato.Text,
                Preco = Convert.ToDecimal(this.txtPrecoPrato.Text),
                Categoria = categoria
            };

            using (MemoryStream ms = new MemoryStream())
            {
                Image image = this.picImagemPrato.Image;
                image.Save(ms, ImageFormat.Png);

                produto.Imagem = ms.ToArray();
            }

            this.produtoBusiness.CadastrarProduto(produto);
        }

        private void button1_Click(object sender, EventArgs e) {
            this.Close();
        }

    }
}
