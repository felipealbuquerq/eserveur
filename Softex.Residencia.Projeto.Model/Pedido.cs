using System;
using System.Collections.Generic;
using System.Linq;

namespace Softex.Residencia.EServeur.Model
{
    public class Pedido
    {
        public Pedido()
        {
            this.ItensPedidos = new List<ItemPedido>();
        }

        public int Id { get; set; }
        public DateTime HorarioEntrada { get; set; }
        public DateTime HorarioSaida { get; set; }
        public int StatusId { get; set; }
        public int MesaId { get; set; }
        public virtual Status Status { get; set; }
        public virtual IList<ItemPedido> ItensPedidos { get; set; }

        public decimal ValorPedido
        {
            get { return this.ItensPedidos.Sum(i => i.Valor); }
        }
    }
}
