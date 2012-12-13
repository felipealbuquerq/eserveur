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
            Form frmCliente = this.MdiChildren.FirstOrDefault(i => i is FrmCadastroProduto);

            /* TODO: Reparar o banco de dados
            if (frmCliente == null)
            {
                frmCliente = new FrmCadastroProduto
                {
                    MdiParent = this
                };
            }
             * */

            frmCliente = new FrmCadastroProduto() { MdiParent = this }; // test
            frmCliente.Focus();
        }
    }
}
