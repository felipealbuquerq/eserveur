using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.Projeto.UI.Administrator.Reports;
using CrystalDecisions.CrystalReports.Engine;
using System.IO;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmVisualizarRelatorio : Form
    {
        private TiposRelatorios tipoRelatorio;

        public FrmVisualizarRelatorio()
        {
            InitializeComponent();
        }

        public FrmVisualizarRelatorio(TiposRelatorios tipoRelatorio)
        {
            InitializeComponent();

            this.tipoRelatorio = tipoRelatorio;
            this.CarregarRelatorio();
        }

        private void CarregarRelatorio()
        {
            ReportDocument report = new ReportDocument();
            string path = "";

            switch (this.tipoRelatorio)
            {
                case TiposRelatorios.ListagemDeProdutos:
                    path = @"Reports\Produtos.rpt";
                    break;
                case TiposRelatorios.Vendas:
                    path = @"Reports\RelatórioDeVendas.rpt";
                    break;
                default:
                    break;
            }

            report.Load(path);
            crystalReportViewer.ReportSource = report;
        }
    }
}
