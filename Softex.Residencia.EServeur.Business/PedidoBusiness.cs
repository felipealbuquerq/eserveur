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
            DateTime dataAtual = DateTime.Now;

            
            return this.RecuperarPedidos(p =>
                                            //Subtrai o horario atual com o horario em que o pedido foi realizado
                                            //e verifica se o intervalo é menor ou igual a 3 horas.
                                            dataAtual.Subtract(p.HorarioEntrada).Hours <= 3 &&
                                            //Verifica se o horario de saida é nulo, o que significa que o pedido ainda não foi atendido
                                            p.HorarioSaida == null);
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
