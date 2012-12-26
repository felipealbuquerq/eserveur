using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Softex.Residencia.EServeur.Business;

namespace Softex.Residencia.Projeto.UI.Administrator {
    public partial class FrmBDIngrediente : Form {

        IngredienteBusiness ingredienteBusiness;

        public FrmBDIngrediente() {
            InitializeComponent();

            this.ingredienteBusiness = new IngredienteBusiness();

            this.dgvIngredientes.DataSource = ingredienteBusiness.RecuperarIngredientes();
        }
    }
}
