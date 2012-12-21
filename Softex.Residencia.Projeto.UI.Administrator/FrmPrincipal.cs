using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Softex.Residencia.Projeto.UI.Client;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmPrincipal : Form
    {
        public FrmPrincipal()
        {
            InitializeComponent();
        }


        
        //------------------------------------------
        // Botoes da barra de ferramentas
        //------------------------------------------

        private void toolStripButton7_Click(object sender, EventArgs e) {
            this.Close();
        }

        private void tsbModificarIngrediente_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void tsbAdicionarIngrediente_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void toolStripButton3_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmProduto);

            frmCliente = new FrmProduto() { MdiParent = this }; // test
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
            throw new NotImplementedException();
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

            /* TODO: Reparar o banco de dados
            if (frmCliente == null)
            {
                frmCliente = new FrmCadastroProduto
                {
                    MdiParent = this
                };
            }
             * */

            frmCliente = new FrmProduto() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void ingredienteToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmIngrediente);

            frmCliente = new FrmIngrediente() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void categoriaToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCategoria);

            frmCliente = new FrmCategoria() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void combosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCombo);

            frmCliente = new FrmCombo() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void relatóriosToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmRelatorios);

            frmCliente = new FrmRelatorios() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void faturasToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmNotaFiscal);

            frmCliente = new FrmNotaFiscal() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void pedidosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmPedido);

            frmCliente = new FrmPedido() { MdiParent = this }; // test
            frmCliente.Focus();
        }


        private void ingredientesToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDIngrediente);

            frmCliente = new FrmBDIngrediente() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void categoriasToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDCategoria);

            frmCliente = new FrmBDCategoria() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void produtosToolStripMenuItem_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDProduto);

            frmCliente = new FrmBDProduto() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void combosToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDCombo);

            frmCliente = new FrmBDCombo() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void faturasToolStripMenuItem1_Click(object sender, EventArgs e) {
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmBDNotaFiscal);

            frmCliente = new FrmBDNotaFiscal() { MdiParent = this }; // test
            frmCliente.Focus();
        }

        private void atendenteToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
