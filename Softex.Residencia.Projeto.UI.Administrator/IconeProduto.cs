using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.Projeto.UI.Client.Controls;

namespace Softex.Residencia.Projeto.UI.Administrator
{
    class IconeProduto : System.Windows.Forms.ListViewItem
    {
        string NomeDoProduto { get; set; }
    }
}
