using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Web.UI.WebControls;

using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Model;



namespace Softex.Residencia.Projeto.UI.Client
{
    public partial class FrmVerConta : Form
    {
        private readonly PedidoBusiness pedidoBusiness;

        private FrmVerConta()
        {
            InitializeComponent();
        }


        public FrmVerConta(int numeroMesa)
        {
            InitializeComponent();

            this.pedidoBusiness = new PedidoBusiness();

            this.gpbNomeMesa.Text = String.Format("Conta da mesa: {0}", numeroMesa);

            adicionarPedidosNaLista(numeroMesa);
            calcularTotalPedidos(numeroMesa);
        }

        private void calcularTotalPedidos(int numeroMesa)
        {
            Decimal valorTotal = 0;
            foreach (Pedido pedidoAberto in this.pedidoBusiness.RecuperarPedidosEmEspera(numeroMesa)) {
                valorTotal += pedidoAberto.ValorPedido;
            }

            this.txtValorTotalConta.Text = String.Format("{0:C}", valorTotal);
        }

        private void adicionarPedidosNaLista(int numeroMesa)
        {
            this.ckbListaPedidos.Items.Clear();

            // 1. Adicionar
            int indexPedido = 1;
            foreach (Pedido pedidoAberto in this.pedidoBusiness.RecuperarPedidosEmEspera(numeroMesa)) {
                String tituloPedido = String.Format("[{0}] -- Data: {1} -- ID: {2}", indexPedido, pedidoAberto.HorarioEntrada, pedidoAberto.Id);
                ListItem pedidoAbertoListItem = new ListItem()
                {
                    Text = tituloPedido,
                    Value = pedidoAberto.Id.ToString(),
                    Selected = true,
                    Enabled = true
                };

                this.ckbListaPedidos.Items.Add(pedidoAbertoListItem);

                foreach (ItemPedido itemPedido in pedidoAberto.ItensPedidos) {
                    String strQtdeItemPedido = itemPedido.QtdProduto.ToString().PadRight(4);
                    String strNomeItemPedido = itemPedido.Produto.Nome.ToString().PadRight(80, '_');
                    String strValorItemPedido = String.Format("{0:C}", itemPedido.Valor).PadRight(10);

                    String tituloItemPedido = "  " + strQtdeItemPedido + strNomeItemPedido + strValorItemPedido;
                    ListItem itemPedidoListItem = new ListItem()
                    {
                        Text = tituloItemPedido,
                        Value = itemPedido.Id.ToString(),
                        Selected = false,
                        Enabled = false // nao será possível selecionar
                    };

                    this.ckbListaPedidos.Items.Add(itemPedidoListItem);
                }


                // 
                for (int i = 0; i != this.ckbListaPedidos.Items.Count; ++i) {

                    ListItem item = (ListItem)this.ckbListaPedidos.Items[i];

                    if (item.Enabled) {
                        ckbListaPedidos.SetItemCheckState(i, CheckState.Checked);
                    }
                }
            }
        }
    }
}
