using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.Projeto.UI.Administrator.Reports;

namespace Softex.Residencia.Projeto.UI.Administrator 
{
    public partial class FrmRelatorios : Form 
    {
        public FrmRelatorios() 
        {
            InitializeComponent();
        }

        private void btnGerarRelatorioOperacional_Click(object sender, EventArgs e)
        {
            Form frmVisualizarRelatorio = new FrmVisualizarRelatorio(TiposRelatorios.ListagemDeProdutos)
            {
                MdiParent = this.MdiParent
            };

            frmVisualizarRelatorio.Show();
        }
    }
}
