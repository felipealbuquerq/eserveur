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
using Softex.Residencia.Projeto.UI.Client.Controls;
using System.IO;

namespace Softex.Residencia.Projeto.UI.Client
{
    public partial class FrmCliente : Form
    {
        private ProdutoBusiness produtoBusiness;

        public FrmCliente()
        {
            InitializeComponent();

            this.produtoBusiness = new ProdutoBusiness();

            this.CarregarInterface();
        }

        private void CarregarInterface()
        {
            IEnumerable<Produto> produtos = this.produtoBusiness.RecuperarProdutosDisponiveis();
            /*
            foreach (Produto produto in produtos)
            {
                ThumbnailControl thumbnailControl = new ThumbnailControl();

                using (MemoryStream ms = new MemoryStream(produto.Imagem))
                {
                    thumbnailControl.ImagemProduto = Image.FromStream(ms);
                    thumbnailControl.NomeProduto = produto.Nome;
                }

                //int i = this.tabPratos.Controls.Count;

                if (i > 0)
                {
                    //Control c = this.tabPratos.Controls[i - 1];

                    if (c != null)
                    {
                        thumbnailControl.Location = new Point(c.Location.X + 150, c.Location.Y);
                    }
                }
                
                //this.tabPratos.Controls.Add(thumbnailControl);
            }*/
        }
    }
}
