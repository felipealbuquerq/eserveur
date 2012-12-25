using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmConta : Form
    {
        PedidoBusiness pedidoBusiness;

        public FrmConta()
        {
            InitializeComponent();

            pedidoBusiness = new PedidoBusiness();

            this.LimparCamposFormulario();
        }

        private void LimparCamposFormulario()
        {
            this.lstViewDetalhesConta.Items.Clear();
            this.lblTotal.Text = string.Format("{0:c}", 0);
        }

        private void adicionarProdutosNaLista(List<Pedido> pedidosNaoPagos)
        {
            this.lstViewDetalhesConta.Items.Clear();

            foreach (Pedido pedido in pedidosNaoPagos)
            {
                foreach (ItemPedido item in pedido.ItensPedidos)
                {
                    ListViewItem listViewItem = new ListViewItem()
                    {
                        Text = item.Produto.Nome
                    };

                    listViewItem.SubItems.Add(item.QtdProduto.ToString());
                    listViewItem.SubItems.Add(item.Valor.ToString("C"));
                    this.lstViewDetalhesConta.Items.Add(listViewItem);
                }                
            }

            this.lblTotal.Text = pedidosNaoPagos.Sum(p => p.ValorPedido).ToString("C");
        }

        private void btnConsultarMesa_Click(object sender, EventArgs e)
        {
            List<Pedido> listaDePedidosNaoPagos = pedidoBusiness.RecuperarPedidosPendentes(Convert.ToInt32(this.txtNumeroMesa.Text)).ToList();

            if (listaDePedidosNaoPagos.Count > 0)
            {
                adicionarProdutosNaLista(listaDePedidosNaoPagos);
            }
            else
            {
                MessageBox.Show("A mesa informada não possui pedidos à pagar!", "", MessageBoxButtons.OK, MessageBoxIcon.Information);

                this.LimparCamposFormulario();
            }
        }
    }
}
