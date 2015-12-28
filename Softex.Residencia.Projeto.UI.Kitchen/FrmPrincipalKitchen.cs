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
        private const int alturaDaLinha = 60;

        public FrmPrincipalKitchen()
        {
            InitializeComponent();

            this.tblLayoutPedidos.AutoSize = true;
            tblLayoutPedidos.RowStyles.Clear();
            tblLayoutPedidos.AutoScroll = true;
            tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(SizeType.Absolute, 40));
            tblLayoutPedidos.AutoSize = true;
            this.tblLayoutPedidos.Dock = DockStyle.Fill;
        }

        private static Label labelModificadaDoLayout(string texto, int width, int height, bool bold = false)
        {
            Label novaLabel = new Label();
            novaLabel.Text = texto;

            if (bold)
                novaLabel.Font = new Font("Segoe UI", 25, FontStyle.Bold);
            else
                novaLabel.Font = new Font("Segoe UI", 25);

            novaLabel.Size = new Size(width, height);

            return novaLabel;
        }

        private static Button botaoModificadaDoLayout(string texto, Color cor)
        {
            Button novoBotao = new Button();
            novoBotao.Text = texto;
            novoBotao.Font = new Font("Segoe UI", 25);
            novoBotao.Size = new Size(165, 60);
            novoBotao.BackColor = cor;
            novoBotao.ForeColor = Color.Black;

            return novoBotao;
        }

        private void adicionarProdutoTabela(int numeroMesa, string nomeProduto, string status, Color cor)
        {
            Label lblNumeroMesa     = labelModificadaDoLayout(numeroMesa.ToString(), 90, 60);
            Label lblNomeProduto    = labelModificadaDoLayout(nomeProduto, 500, 60, true);
            Button btnEntregue      = botaoModificadaDoLayout(status, cor);
            lblNumeroMesa.Refresh();

            this.tblLayoutPedidos.Controls.Add(lblNumeroMesa, 0, numeroDaLinha);
            this.tblLayoutPedidos.Controls.Add(lblNomeProduto, 1, numeroDaLinha);
            this.tblLayoutPedidos.Controls.Add(btnEntregue, 2, numeroDaLinha);

            ++numeroDaLinha;
            this.tblLayoutPedidos.PerformLayout();
            //tblLayoutPedidos.Scale(new SizeF(200, 30));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            adicionarProdutoTabela(6, "Batata frita", "Na Fila", Color.Yellow);
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btnModificarDisponibilidadeIngrediente_Click(object sender, EventArgs e)
        {

        }

        private void btnFeito_Click(object sender, EventArgs e)
        {
            adicionarProdutoTabela(6, "Batata frita", "Feito", Color.Blue);
        }

        private void btnEntregue_Click(object sender, EventArgs e)
        {
            adicionarProdutoTabela(6, "Batata frita", "Entregue", Color.LimeGreen);
        }
    }
}
