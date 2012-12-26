using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Softex.Residencia.Projeto.UI.Calculadora
{
    public partial class FrmCalculadora : Form
    {
        public FrmCalculadora()
        {
            InitializeComponent();
        }

        private void botao0_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "0";
        }

        private void botao1_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "1";
        }

        private void botao2_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "2";
        }

        private void botao3_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "3";
        }

        private void botao4_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "4";
        }

        private void botao5_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "5";
        }

        private void botao6_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "6";
        }

        private void botao7_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "7";
        }

        private void botao8_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "8";
        }

        private void botao9_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "9";
        }

        private void botaoOperadorSoma_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "+";
        }

        private void botaoOperadorSubtracao_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "-";
        }

        private void botaoOperadorMultiplicacao_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "*";
        }

        private void botaoOperadorDivisao_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "/";
        }

        private void botaoOperadorPorcentagem_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += "%";
        }

        private void botaoVirgula_Click(object sender, EventArgs e)
        {
            this.txtDisplay.Text += ",";
        }

        private void botaoTotal_Click(object sender, EventArgs e)
        {

        }

    }
}
