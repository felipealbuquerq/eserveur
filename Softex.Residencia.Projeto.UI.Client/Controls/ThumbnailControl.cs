using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Softex.Residencia.Projeto.UI.Client.Controls
{
    public partial class ThumbnailControl : UserControl
    {
        public ThumbnailControl()
        {
            InitializeComponent();
        }

        public Image ImagemProduto
        {
            get { return this.btnIconeProduto.BackgroundImage; }
            set { this.btnIconeProduto.BackgroundImage = value; }
        }

        public string NomeProduto
        {
            get { return this.lblNomeProduto.Text; }
            set { this.lblNomeProduto.Text = value; }
        }

        private void btnIconeProduto_Click(object sender, EventArgs e)
        {

        }
    }
}
