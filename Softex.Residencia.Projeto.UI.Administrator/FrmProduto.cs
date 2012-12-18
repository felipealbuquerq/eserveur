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

        public FrmProduto()
        {
            InitializeComponent();

            //this.ingredienteBusiness = new IngredienteBusiness();
            //this.produtoBusiness = new ProdutoBusiness();

            //this.CarregarIngredientes();
        }


        private void CarregarIngredientes()
        {
            this.chkListaDeIngredientesNovoProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();
        }

        private void btnAdicionarImagemPrato_Click(object sender, EventArgs e)
        {
            if (this.openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.picImagemNovoProduto.Image = new Bitmap(this.openFileDialog.FileName);
            }
        }

		// botao para salvar prato
		// TODO: modificar de prato a produto
        private void btnSalvarPrato_Click(object sender, EventArgs e)
        {
            Categoria categoria = new Categoria(){
                                          Nome = "Produtos"
                                      };

            Produto produto = new Produto()
            {
                Nome = this.txtNomeNovoProduto.Text,
                Descricao = this.txtDescricaoNovoProduto.Text,
                Preco = Convert.ToDecimal(this.txtPrecoNovoProduto.Text),
                Categoria = categoria
            };

            using (MemoryStream ms = new MemoryStream())
            {
                Image image = this.picImagemNovoProduto.Image;
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
