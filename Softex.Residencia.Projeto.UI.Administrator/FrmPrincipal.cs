using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Softex.Residencia.Projeto.UI.Client;
using Softex.Residencia.Projeto.UI.Kitchen;
using Softex.Residencia.Projeto.UI.Calculadora;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmPrincipal : Form
    {
        public FrmPrincipal()
        {
            InitializeComponent();
        }

        private void abrirTelaWelcome() 
        {
            Form frmInicio = this.MdiChildren.FirstOrDefault(i => i is FrmWelcome);

            if (frmInicio == null) {
                frmInicio = new FrmWelcome() { MdiParent = this };
            }
            
            frmInicio.Focus();
            frmInicio.WindowState = FormWindowState.Maximized;
            
        }
        
        //------------------------------------------
        // Botoes da barra de ferramentas
        //------------------------------------------

        private void toolStripButton7_Click(object sender, EventArgs e) {
            this.Close();
        }

        private void tsbModificarIngrediente_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            if (frmCliente == null) {
                frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void tsbAdicionarIngrediente_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            if (frmCliente == null) {
                frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            }

            frmCliente.Focus();
        }

        private void toolStripButton3_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBackupProduto);

            if (frmCliente == null) {
                frmCliente = new FrmBackupProduto() { MdiParent = this }; // test
            }

            frmCliente.Focus();
        }

        private void tsbGerarRelatorio_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmRelatorios);

            frmCliente = new FrmRelatorios() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void tsbGerarNotaFiscal_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmNotaFiscal);

            frmCliente = new FrmNotaFiscal() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void tsbAjuda_Click(object sender, EventArgs e) {
            abrirTelaWelcome();
        }


        //------------------------------------------
        // Botoes da barra de menu
        //------------------------------------------ 
        private void sairToolStripMenuItem_Click(object sender, EventArgs e) {
            this.Close();
        }


        private void RealizarPedidoToolStripMenuItemClick(object sender, EventArgs e)
        {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCliente);
            
            if (frmCliente == null)
            {
                frmCliente = new FrmCliente
                {
                    MdiParent = this
                };
            }

            frmCliente.Focus();
        }

        private void produtoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmProduto);

            if (frmCliente == null) {
                frmCliente = new FrmProduto() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void ingredienteToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            if (frmCliente == null) {
                frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void categoriaToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCategoria);

            if (frmCliente == null) {
                frmCliente = new FrmCategoria() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void combosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCombo);

            if (frmCliente == null) {
                frmCliente = new FrmCombo() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void relatóriosToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmRelatorios);

            if (frmCliente == null) {
                frmCliente = new FrmRelatorios() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void faturasToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmNotaFiscal);

            if (frmCliente == null) {
                frmCliente = new FrmNotaFiscal() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void pedidosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmPedido);

            if (frmCliente == null) {
                frmCliente = new FrmPedido() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }


        private void ingredientesToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDIngrediente);

            if (frmCliente == null) {
                frmCliente = new FrmBDIngrediente() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void categoriasToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDCategoria);

            if (frmCliente == null) {
                frmCliente = new FrmBDCategoria() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void produtosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDProduto);

            if (frmCliente == null) {
                frmCliente = new FrmBDProduto() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void combosToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDCombo);

            if (frmCliente == null) {
                frmCliente = new FrmBDCombo() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void faturasToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDNotaFiscal);

            if (frmCliente == null) {
                frmCliente = new FrmBDNotaFiscal() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void atendenteToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void consultarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmConta);

            if (frmCliente == null) {
            frmCliente = new FrmConta() { MdiParent = this }; // test
            }
            frmCliente.Focus();
        }

        private void produtoTesteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmProduto);
            if (frmCliente == null) {
                frmCliente = new FrmProduto() { MdiParent = this };
            }
            frmCliente.Focus();
        }

        private void sobreToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAboutBox aboutBox = new FrmAboutBox();
            aboutBox.ShowDialog();
        }

        private void clienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCliente telaDoCliente = new FrmCliente();
            telaDoCliente.Show();
        }

        private void cozinhaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrincipalKitchen telaDaCozinha = new FrmPrincipalKitchen();
            telaDaCozinha.Show();
        }

        private void ajudaToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.abrirTelaWelcome();
        }

        private void calculadoraToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCalculadora telaCalculadora = new FrmCalculadora();
            telaCalculadora.Show();
        }
    }
}
