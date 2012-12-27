using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Business;


namespace Softex.Residencia.Projeto.UI.Client
{
    public partial class FrmConta : Form
    {
        private readonly PedidoBusiness pedidoBusiness;

        public FrmConta()
        {
            InitializeComponent();

            pedidoBusiness = new PedidoBusiness();
        }

        public FrmConta(int numeroDaMesa)
        {
            InitializeComponent();

            pedidoBusiness = new PedidoBusiness();

            AddTodosPedidos(numeroDaMesa);
        }

        private void AddPedido(Pedido pedido)
        {

        }

        private void AddTodosPedidos(int numeroDaMesa)
        {
            this.listBox1.DataSource = pedidoBusiness.RecuperarPedidosEmEspera(numeroDaMesa);
        }
    }
}
