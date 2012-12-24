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

namespace Softex.Residencia.Projeto.UI.Kitchen
{
    public partial class FrmPrincipalKitchen : Form
    {
        private int numeroDaLinha = 2;
        private const int alturaDaLinha = 30;

        public FrmPrincipalKitchen()
        {
            InitializeComponent();

            this.tblLayoutPedidos.AutoSize = true;
            tblLayoutPedidos.RowStyles.Clear();
            tblLayoutPedidos.AutoScroll = true;
            tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(SizeType.Absolute, 40));
            tblLayoutPedidos.AutoSize = true;
            //this.tblLayoutPedidos.Dock = DockStyle.Fill;
        }

        private static Label labelModificadaDoLayout(string texto)
        {
            Label novaLabel = new Label();
            novaLabel.Text = texto;
            novaLabel.Font = new Font("Segoe UI", 25, FontStyle.Bold);

            return novaLabel;
        }

        private static Button botaoModificadaDoLayout(string texto)
        {
            Button novoBotao = new Button();
            novoBotao.Text = texto;
            novoBotao.Font = new Font("Segoe UI", 25);
            novoBotao.Size = new Size(165, 50);


            return novoBotao;
        }

        private void adicionarProdutoTabela(int numeroMesa, string nomeProduto)
        {
            Label lblNumeroMesa     = labelModificadaDoLayout(numeroMesa.ToString());
            Label lblNomeProduto    = labelModificadaDoLayout(nomeProduto);
            Button btnEntregue      = botaoModificadaDoLayout("Entregue");
            lblNumeroMesa.Refresh();

            this.tblLayoutPedidos.Controls.Add(lblNumeroMesa, 0, numeroDaLinha);
            this.tblLayoutPedidos.Controls.Add(lblNomeProduto, 1, numeroDaLinha);
            this.tblLayoutPedidos.Controls.Add(btnEntregue, 1, numeroDaLinha);

            ++numeroDaLinha;
            this.tblLayoutPedidos.PerformLayout();
            //tblLayoutPedidos.Scale(new SizeF(200, 30));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            adicionarProdutoTabela(6, "Batata frita");
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
