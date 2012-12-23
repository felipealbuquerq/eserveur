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

            this.lblTotal.Text = string.Format("{0:c}", 0);
        }


        private void adicionarProdutosNaLista(List<Pedido> pedidosNaoPagos)
        {
            foreach (var pedido in pedidosNaoPagos)
            {
                foreach (var produto in pedido.Produtos)
                {
                    this.lsbListaDeProdutos.Items.Add(produto.Nome);
                }                
            }
        }

        private void btnConsultarMesa_Click(object sender, EventArgs e)
        {
            List<Pedido> listaDePedidosNaoPagos = pedidoBusiness.RecuperarPedidosPendentes(Convert.ToInt32(this.txtNumeroMesa.Text)).ToList();
            adicionarProdutosNaLista(listaDePedidosNaoPagos);
        }
    }
}
