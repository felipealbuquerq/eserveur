using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using System.Collections;
using System.Collections.Generic;
using System.Web.UI.WebControls;

using Softex.Residencia.EServeur.Business;
using Softex.Residencia.EServeur.Business.Exceptions;
using Softex.Residencia.EServeur.Model;



namespace Softex.Residencia.Projeto.UI.Administrator
{
    public partial class FrmProduto : Form
    {
        private readonly IngredienteBusiness ingredienteBusiness;
        private readonly ProdutoBusiness produtoBusiness;
        private readonly CategoriaBusiness categoriaBusiness;

        public FrmProduto()
        {
            InitializeComponent();

            this.ingredienteBusiness = new IngredienteBusiness();
            this.produtoBusiness = new ProdutoBusiness();
            this.categoriaBusiness = new CategoriaBusiness();

            // Modificações de formato das strings
            this.lblPreco.Text = String.Format("Preço ({0:C}): ", 0);

            AtualizarCamposFormulario();
            DesativarSalvarModificacao();
        }

        
        #region Métodos
        //------------------------

        private void AtualizarCamposFormulario()
        {
            try
            {
                // 1. Limpar e atualizar lista de produtos do BD
                this.cboListaDeProdutos.Items.Clear();
                foreach (Produto produto in this.produtoBusiness.RecuperarProdutos())
                {
                    this.cboListaDeProdutos.Items.Add(produto);
                }

                this.cboListaDeProdutos.DisplayMember = "Nome";
                this.cboListaDeProdutos.ValueMember = "Id";

                if (this.cboListaDeProdutos.Items.Count > 0)
                {
                    this.cboListaDeProdutos.SelectedIndex = 0;
                }

                // 2. Atualizar lista de categorias
                this.cboCategoria.DisplayMember = "Nome";
                this.cboCategoria.ValueMember = "Id";
                this.cboCategoria.DataSource = this.categoriaBusiness.RecuperarCategorias();

                // 3. Atualizar lista de ingredientes
                this.chkListaDeIngredientesProduto.Items.Clear();
                foreach (Ingrediente ingrediente in this.ingredienteBusiness.RecuperarIngredientes()){
                    ListItem listItem = new ListItem()
                    {
                        Text = ingrediente.Nome,
                        Value = ingrediente.Id.ToString()
                    };

                    this.chkListaDeIngredientesProduto.Items.Add(listItem);
                }

                #region testes de algoritimos para 3. Atualizar lista de ingredientes
                /* USANDO Nome dos ingredientes como labels
                 -----------------------------------------------------------*/
                //this.chkListaDeIngredientesProduto.DataSource = this.ingredienteBusiness.RecuperarNomesIngredientes();
                //this.chkListaDeIngredientesProduto.DisplayMember = "Nome";


                /* USANDO ObjectCollection para inserir nos items
                 -----------------------------------------------------------*/
                /*
                System.Windows.Forms.CheckedListBox.ObjectCollection listaDeIngredientes = 
                                  new System.Windows.Forms.CheckedListBox.ObjectCollection(this.chkListaDeIngredientesProduto);

                foreach (Ingrediente ingrediente in this.ingredienteBusiness.RecuperarIngredientes()){
                    ListItem listItem = new ListItem()
                    {
                        Text = ingrediente.Nome,
                        Value = ingrediente.Nome
                    };

                    listaDeIngredientes.Add(listItem);
                }
                */



                /*
                this.chkListaDeIngredientesProduto.DataSource = this.ingredienteBusiness.RecuperarIngredientes();
                this.chkListaDeIngredientesProduto.DisplayMember = "Nome";
                 */
                #endregion

            }
            catch (Exception)
            {
                MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //
        private void PreencherFormularioProduto(Produto produto) 
        {
            // 1. Preencher nome do produto
            this.txtNomeProduto.Text = produto.Nome;

            // 2. Preencher categoria do produto
            this.cboCategoria.SelectedValue = produto.CategoriaId;

            // 3. Preencher preço do produto
            this.txtPrecoProduto.Text = Convert.ToString(produto.Preco);

            
            // 4. Selecionar ingredientes que compoem produto
            for (int i = 0; i != this.chkListaDeIngredientesProduto.Items.Count; ++i) {

                ListItem item = (ListItem)this.chkListaDeIngredientesProduto.Items[i];

                // Se o item representa um ingrediente da lista de ingredientes do Produto,
                // checar o ingrediente na lista de ingredientes da tela
                if (produto.Ingredientes.Where(elemento => elemento.Nome == item.Text).FirstOrDefault() != null) {
                    if (chkListaDeIngredientesProduto.GetItemCheckState(i) == CheckState.Indeterminate ||
                        chkListaDeIngredientesProduto.GetItemCheckState(i) == CheckState.Unchecked) {
                        chkListaDeIngredientesProduto.SetItemCheckState(i, CheckState.Checked);
                    }
                }
                else {
                    if (chkListaDeIngredientesProduto.GetItemCheckState(i) == CheckState.Checked){
                        chkListaDeIngredientesProduto.SetItemCheckState(i, CheckState.Unchecked);
                    }
                }

            }
            #region Testes de algoritimo para 4. Selecionar ingredientes que compoem produto
            /*
            this.chkListaDeIngredientesProduto.Items.Clear();
            foreach (Ingrediente ingrediente in this.ingredienteBusiness.RecuperarIngredientes()) {
                foreach (Ingrediente ingredienteParaSelecionar in produto.Ingredientes) {
                        ListItem listItem = new ListItem()
                        {
                            Text = ingrediente.Nome,
                            Value = ingrediente.Nome,  
                        };
                    if (ingredienteParaSelecionar == ingrediente) {
                        listItem.Selected = true;
                    }

                    this.chkListaDeIngredientesProduto.Items.Add(listItem);
                }
            }
            */

            /*
            foreach (ListItem item in this.chkListaDeIngredientesProduto.Items) {
                foreach (Ingrediente ing in produto.Ingredientes) {
                    if (item.Text == ing.Nome) {
                        item.Selected = true;
                    }
                }
            }
            */

            /*
            for (int i = 0; i < this.chkListaDeIngredientesProduto.Items.Count; i++) {
                foreach (Ingrediente ing in produto.Ingredientes) {
                    if (((Ingrediente)this.chkListaDeIngredientesProduto.Items[i]) == ing) {
                        ((ListItem)this.chkListaDeIngredientesProduto.Items[i]).Selected = true;
                    }
                }
            }
            
            foreach (ListItem item in this.chkListaDeIngredientesProduto.Items) {
                foreach (Ingrediente ing in produto.Ingredientes) {
                    if (item.Value == ing.Nome) {
                        item.Selected = true;
                    }
                }
            }
            */
            #endregion

            // 5. Preencher descrição do produto
            this.txtDescricaoProduto.Text = produto.Descricao;

            // 6. Adicionar imagem do produto
            ImageConverter ic = new ImageConverter();
            this.picImagemProduto.Image = (System.Drawing.Image)ic.ConvertFrom(produto.Imagem);
        }

        //
        private void LimparCamposFormulario()
        {
            this.txtNomeProduto.Text = "";
            this.txtDescricaoProduto.Text = "";
            this.txtPrecoProduto.Text = "";

            if (this.cboCategoria.SelectedIndex > 0)
            {
                this.cboCategoria.SelectedIndex = 0;
            }

            this.chkListaDeIngredientesProduto.Items.Clear();
            foreach (Ingrediente ingrediente in this.ingredienteBusiness.RecuperarIngredientes())
            {
                ListItem listItem = new ListItem()
                {
                    Text = ingrediente.Nome,
                    Value = ingrediente.Id.ToString()
                };

                this.chkListaDeIngredientesProduto.Items.Add(listItem);
            }

            this.picImagemProduto.Image = null;
        }

        //
        private void ValidarCamposFormulario()
        {
            // 1. Testar o campo de nome do produto
            string campoNomeProduto = this.txtNomeProduto.Text;
            if (string.IsNullOrWhiteSpace(campoNomeProduto)) {
                throw new GenericWarningException("Informe o nome do produto!");
            }

            if (string.IsNullOrEmpty(campoNomeProduto)) {
                throw new GenericWarningException("Informe o nome do produto!");
            }

            if (this.txtNomeProduto.Text == "[Nome do novo produto]") {
                throw new GenericWarningException("Escolha um novo nome para o produto!");
            }

            // 2. Testar o campo de preco do produto
            decimal d;
            if (!decimal.TryParse(this.txtPrecoProduto.Text, out d)) {
                throw new GenericWarningException("Informe o preço do produto corretamente!");
            }

            // 3. Testar o campo de categoria
            if (this.cboCategoria.SelectedValue == null) {
                throw new GenericWarningException("Informe a categoria do produto!");
            }

            // 4. Testar o campo de imagem do produto
            if (this.picImagemProduto.Image == null) {
                throw new GenericWarningException("Adicione uma imagem do produto!");
            }

            // 2. Testar o campo de descricao do produto
            if (string.IsNullOrWhiteSpace(this.txtDescricaoProduto.Text)) {
                throw new GenericWarningException("Informe a descrição do produto!");
            }
        }

        //
        private Produto criarProdutoDoForm()
        {
            Produto novoProduto = new Produto()
            {
                Nome = this.txtNomeProduto.Text,
                Descricao = this.txtDescricaoProduto.Text,
                Preco = Convert.ToDecimal(this.txtPrecoProduto.Text),
                CategoriaId = (int)cboCategoria.SelectedValue,
            };

            // Construir imagem do produto
            using (MemoryStream ms = new MemoryStream()) {
                System.Drawing.Image image = this.picImagemProduto.Image;
                image.Save(ms, ImageFormat.Png);

                novoProduto.Imagem = ms.ToArray();
            }


            // 3. Recuperar e adicionar os ingredientes selecionados ao produto
            foreach (ListItem itemChecado in chkListaDeIngredientesProduto.CheckedItems) {
                Int32 itemId = Convert.ToInt32(itemChecado.Value);
                Ingrediente ingrediente = ingredienteBusiness.RecuperarIngrediente(itemId);
                novoProduto.Ingredientes.Add(ingrediente);
            }

            return novoProduto;
        }


        private void AtivarSalvarModificacao()
        {
            btnSalvarModificacaoProduto.Enabled = true;
            btnCancelarModificacaoProduto.Enabled = true;
        }

        private void DesativarSalvarModificacao()
        {
            btnSalvarModificacaoProduto.Enabled = false;
            btnCancelarModificacaoProduto.Enabled = false;
        }

        private void RemoverProdutoSelecionado()
        {
           Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
           this.produtoBusiness.RemoverProduto(produto.Id); 
        }

        private void RemoverProdutoEscrito()
        {
            string nomeDoProduto = this.txtNomeProduto.Text;
            IEnumerable<Produto> produtos = this.produtoBusiness.RecuperarProdutosPorNome(nomeDoProduto);
            foreach (Produto produtoExcluir in produtos)
            {
                this.produtoBusiness.RemoverProduto(produtoExcluir.Id);
            }
        }

        #endregion Metodos
        //------------------------


        #region Eventos
        //------------------------
        private void btnAdicionarImagemNovoProduto_Click(object sender, EventArgs e)
        {
            if (this.dlgUploadImagem.ShowDialog() == DialogResult.OK) {
                this.picImagemProduto.Image = new Bitmap(this.dlgUploadImagem.FileName);
            }
        }

        private void cboListaDeProdutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.cboListaDeProdutos.SelectedItem == null) {
                // Se o objeto selecionado é null, não fazer nada
            }
            else {
                try {
                    Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
                    PreencherFormularioProduto(produto);
                }
                catch (Exception) {
                    MessageBox.Show(Mensagens.Falha, Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            DesativarSalvarModificacao();
        }

        private void btnSalvarModificacaoProduto_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Pedir confirmação da modificação
                String mensagemAlerta;
                if (this.cboListaDeProdutos.SelectedItem != null)
                {
                    mensagemAlerta = String.Format("Modificar produto: {0}?", this.cboListaDeProdutos.Text);
                }
                else
                {
                    mensagemAlerta = String.Format("Adicionar produto: {0}?", this.txtNomeProduto.Text);
                }
                DialogResult confirmacao = MessageBox.Show(mensagemAlerta, 
                                                           Mensagens.Mensagem, 
                                                           MessageBoxButtons.OKCancel, 
                                                           MessageBoxIcon.Warning
                                                           );

                // Se o cliente nao escolher OK, retornar ao modo inicial
                if (confirmacao != DialogResult.OK) {
                    return;
                }

                // 2. Validar campos do formulário
                ValidarCamposFormulario();
                Console.WriteLine("11111111111111111111111111111111111111111111111111111111111");
                // 3. Criar novo produto a partir dos campos do formulario
                Produto novoProduto = criarProdutoDoForm();

                // 4. Ver se um produto com o mesmo nome já está registrado
                //    Se SIM remover produto do banco
                if (this.cboListaDeProdutos.SelectedItem != null)
                {
                    this.RemoverProdutoSelecionado();
                }
                else
                {
                    this.RemoverProdutoEscrito();
                }
                /*
                IEnumerable<Produto> produtosRegistrados = this.produtoBusiness.RecuperarProdutos();
                Produto produtoBuscado = produtosRegistrados.Where(i => i.Nome == this.txtNomeProduto.Text).FirstOrDefault();
                if (produtoBuscado != null) {
                    this.RemoverProdutoSelecionado();
                }
                */

                // 5. Adicionar o novo produto ao banco de dados
                this.produtoBusiness.CadastrarProduto(novoProduto);

                // 6. Desativar os botoes de salvar e cancelar
                this.DesativarSalvarModificacao();

                // 7. Recarregar lista de produtos
                this.AtualizarCamposFormulario();
            }
            catch (GenericWarningException ex){
                MessageBox.Show(ex.Message, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
            catch (Exception){
                MessageBox.Show(Mensagens.CadastroProdutoFalha, Mensagens.Mensagem, MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
            }
        }

        private void btnCancelarModificacaoProduto_Click(object sender, EventArgs e)
        {
            Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
            if (produto == null) {
                this.LimparCamposFormulario();
                this.DesativarSalvarModificacao();
            }
            else {
                this.PreencherFormularioProduto(produto);
                this.DesativarSalvarModificacao();
            }
        }

        private void btnRemoverProduto_Click(object sender, EventArgs e)
        {
            // 1. Pedir confirmação da supressão
            String mensagemAlerta = String.Format("Deletar produto: {0}?", this.cboListaDeProdutos.Text);
            DialogResult confirmacao = MessageBox.Show(mensagemAlerta,
                                                       Mensagens.Mensagem,
                                                       MessageBoxButtons.OKCancel,
                                                       MessageBoxIcon.Warning
                                                       );

            if (confirmacao != DialogResult.OK) { // Se o cliente NÃO escolher OK, retornar ao modo inicial
                return;
            }


            // 2. Proceder com a supressão
            try {
                Produto produto = (Produto)this.cboListaDeProdutos.SelectedItem;
                this.produtoBusiness.RemoverProduto(produto.Id);
            }
            catch (Exception) {
                MessageBox.Show("O produto não pôde ser removido", Mensagens.Mensagem, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


            // 3. Recarregar lista de produtos
            this.AtualizarCamposFormulario();
        }

        

        private void btnAdicionarProduto_Click(object sender, EventArgs e)
        {
            this.LimparCamposFormulario();
            
            this.txtNomeProduto.Text = "[Nome do novo produto]";
            this.cboListaDeProdutos.SelectedItem = null;
        }

        private void formatarNomeNovoProduto(object sender, EventArgs e)
        {
            this.txtNomeProduto.Text = "";
        }

        private void testeNomeDoProdutoModificado(object sender, EventArgs e)
        {
            // Se o nome do produto foi selecionado mas não foi modificado
            if (this.txtNomeProduto.Text == "") {

                // Se o nome na lista de produto esta em branco,
                // é porque o usuário clicou em adicionar novo produto
                if (this.cboListaDeProdutos == null ||
                    this.cboListaDeProdutos.Text == "") {

                    this.txtNomeProduto.Text = "[Nome do novo produto]";
                }
                else {
                    this.txtNomeProduto.Text = this.cboListaDeProdutos.Text;
                }
                this.DesativarSalvarModificacao();
            }
        }

        private void listaDeIngredientes_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            this.AtivarSalvarModificacao();
        }

        private void AtivarSalvarModificacao_Event(object sender, EventArgs e)
        {
            this.AtivarSalvarModificacao();
        }

        private void AtivarSalvarModificacao_Event(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
        {
            this.AtivarSalvarModificacao();
        }

        #endregion Eventos

        private void chkListaDeIngredientesProduto_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.AtivarSalvarModificacao();
        }


    }
}
