using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class PedidoBusiness
    {
        private readonly IPedidoRepository repository;

        public PedidoBusiness()
        {
            this.repository = new PedidoRepository();
        }

        public void PagarPedido(int pedidoId)
        {
            if (pedidoId <= 0)
            {
                throw new ArgumentException("O identificador do pedido não pode ser menor ou igual a zero!");
            }
            Pedido pedido = RecuperarPedido(pedidoId);
            this.repository.Remove(pedido);
            pedido.StatusId = 2;
            CadastrarPedido(pedido);
        }

        public void CancelarPedido(int pedidoId)
        {
            if (pedidoId <= 0)
            {
                throw new ArgumentException("O identificador do pedido não pode ser menor ou igual a zero!");
            }
            Pedido pedido = RecuperarPedido(pedidoId);
            this.repository.Remove(pedido);
            pedido.StatusId = 3;
            CadastrarPedido(pedido);
        }

        public void CadastrarPedido(Pedido pedido)
        {
            if (pedido == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(pedido);
            this.repository.Save();
        }

        public Pedido RecuperarPedido(int pedidoId)
        {
            if (pedidoId <= 0)
            {
                throw new ArgumentException("O identificador do pedido não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(pedidoId);
        }

        // Metodo para recuperator todos os pedidos
        public IEnumerable<Pedido> RecuperarPedidos()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Pedido> RecuperarPedidos(Expression<Func<Pedido, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Pedido> RecuperarPedidos(Expression<Func<Pedido, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }

        public IEnumerable<Pedido> RecuperarPedidosEmEspera()
        {
            return this.RecuperarPedidos(p =>
                //Verifica se o horario de saida é nulo, o que significa que o pedido ainda não foi atendido
                                            p.HorarioSaida == null);
        }

        public IEnumerable<Pedido> RecuperarPedidosEmEspera(int numeroDaMesa)
        {
            //Verifica se o horario de saida é nulo, o que significa que o pedido ainda não foi atendido
            return this.RecuperarPedidos(p => p.MesaId == numeroDaMesa && p.HorarioSaida == null);
        }

        public IEnumerable<Pedido> RecuperarPedidosPendentes(int numeroDaMesa)
        {
            return this.RecuperarPedidos(p => p.MesaId == numeroDaMesa && p.Status.Id == (int)StatusPedido.NaoPago);
        }

        public decimal RecuperarValorPedidosPendentes(int numeroDaMesa)
        {
            IEnumerable<Pedido> pedidos = this.RecuperarPedidosPendentes(numeroDaMesa);
            decimal valorPedidos = 0;
            foreach (Pedido ped_temp in pedidos)
            {
                valorPedidos += ped_temp.ValorPedido;
            }
            return valorPedidos;
        }

        public decimal RecuperarValorPedidosEmEspera()
        {
            IEnumerable<Pedido> pedidos = this.RecuperarPedidosEmEspera();
            decimal valorPedidos = 0;
            foreach (Pedido ped_temp in pedidos)
            {
                valorPedidos += ped_temp.ValorPedido;
            }
            return valorPedidos;
        }


        public void RemoverPedido(int pedidoId)
        {
            if (pedidoId <= 0)
            {
                throw new ArgumentException("O identificador do pedido não pode ser menor ou igual a zero!");
            }

            Pedido pedido = this.RecuperarPedido(pedidoId);

            this.repository.Remove(pedido);
            this.repository.Save();
        }
    }
}
