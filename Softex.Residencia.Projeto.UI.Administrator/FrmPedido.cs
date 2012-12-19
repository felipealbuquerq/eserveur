using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Softex.Residencia.Projeto.UI.Administrator {
    public partial class FrmPedido : Form {
        public FrmPedido() {
            InitializeComponent();
        }

        // Consultar pedido por codigo de pedido
        private void btnConsultarPedidoPorCodigo_Click(object sender, EventArgs e) {
            if (txtCodigoPedido.Text.Length == 0) {
                FrmConsultaPedido telaConsultaDePedido = new FrmConsultaPedido();
                telaConsultaDePedido.ShowDialog();
            }
            else {
                throw new NotImplementedException();
            }
        }

        // Cancelar pedido por codigo de pedido
        private void btnCancelarPedidoPorCodigo_Click(object sender, EventArgs e) {
            string entrada = txtCodigoPedido.Text;
            if (MessageBox.Show(string.Format("Cancelar pedido numero: [{0}]?", entrada), "Confirmar cancelamento", MessageBoxButtons.OKCancel) == DialogResult.Yes) {
                // a 'DialogResult.Yes' value was returned from the MessageBox
                // proceed with your deletion
            }
        }

        // Consultar pedido por numero da mesa
        private void btnConsultarPedidoPorMesa_Click(object sender, EventArgs e) {
            if (txtCodigoMesa.Text.Length == 0) {
                FrmConsultaPedido telaConsultaDePedido = new FrmConsultaPedido();
                telaConsultaDePedido.ShowDialog();
            }
            else {
                throw new NotImplementedException();
            }
        }

        // Cancelar pedido por numero da mesa
        private void btnCancelarPedidoPorMesa_Click(object sender, EventArgs e) {
            string entrada = txtCodigoPedido.Text;
            if (MessageBox.Show(string.Format("Cancelar pedido numero: [{0}]?", entrada), "Confirmar cancelamento", MessageBoxButtons.OKCancel) == DialogResult.Yes) {
                // a 'DialogResult.Yes' value was returned from the MessageBox
                // proceed with your deletion
            }
        }

    }
}
