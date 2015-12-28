namespace Softex.Residencia.Projeto.UI.Kitchen
{
    partial class FrmPrincipalKitchen
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPrincipalKitchen));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tblLayoutPedidos = new System.Windows.Forms.TableLayoutPanel();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnModificarDisponibilidadeIngrediente = new System.Windows.Forms.Button();
            this.btnNaFila = new System.Windows.Forms.Button();
            this.btnFeito = new System.Windows.Forms.Button();
            this.btnEntregue = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.tblLayoutPedidos.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.tblLayoutPedidos);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1354, 635);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Pedidos";
            // 
            // tblLayoutPedidos
            // 
            this.tblLayoutPedidos.AutoScroll = true;
            this.tblLayoutPedidos.AutoSize = true;
            this.tblLayoutPedidos.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.tblLayoutPedidos.ColumnCount = 3;
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 171F));
            this.tblLayoutPedidos.Controls.Add(this.label3, 0, 0);
            this.tblLayoutPedidos.Controls.Add(this.label4, 1, 0);
            this.tblLayoutPedidos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblLayoutPedidos.Location = new System.Drawing.Point(3, 41);
            this.tblLayoutPedidos.Name = "tblLayoutPedidos";
            this.tblLayoutPedidos.RowCount = 3;
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 54F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 490F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tblLayoutPedidos.Size = new System.Drawing.Size(1348, 591);
            this.tblLayoutPedidos.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 39);
            this.label3.TabIndex = 4;
            this.label3.Text = "Mesa";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(109, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(136, 39);
            this.label4.TabIndex = 5;
            this.label4.Text = "Produto";
            // 
            // btnModificarDisponibilidadeIngrediente
            // 
            this.btnModificarDisponibilidadeIngrediente.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.btnModificarDisponibilidadeIngrediente.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModificarDisponibilidadeIngrediente.Location = new System.Drawing.Point(403, 641);
            this.btnModificarDisponibilidadeIngrediente.Name = "btnModificarDisponibilidadeIngrediente";
            this.btnModificarDisponibilidadeIngrediente.Size = new System.Drawing.Size(502, 77);
            this.btnModificarDisponibilidadeIngrediente.TabIndex = 4;
            this.btnModificarDisponibilidadeIngrediente.Text = "Modificar Disponibilidade";
            this.btnModificarDisponibilidadeIngrediente.UseVisualStyleBackColor = true;
            this.btnModificarDisponibilidadeIngrediente.Click += new System.EventHandler(this.btnModificarDisponibilidadeIngrediente_Click);
            // 
            // btnNaFila
            // 
            this.btnNaFila.AutoSize = true;
            this.btnNaFila.Location = new System.Drawing.Point(13, 641);
            this.btnNaFila.Name = "btnNaFila";
            this.btnNaFila.Size = new System.Drawing.Size(219, 23);
            this.btnNaFila.TabIndex = 5;
            this.btnNaFila.Text = "Teste Batata Frita - Na Fila";
            this.btnNaFila.UseVisualStyleBackColor = true;
            this.btnNaFila.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnFeito
            // 
            this.btnFeito.AutoSize = true;
            this.btnFeito.Location = new System.Drawing.Point(13, 670);
            this.btnFeito.Name = "btnFeito";
            this.btnFeito.Size = new System.Drawing.Size(219, 23);
            this.btnFeito.TabIndex = 6;
            this.btnFeito.Text = "Teste Batata Frita - Feito";
            this.btnFeito.UseVisualStyleBackColor = true;
            this.btnFeito.Click += new System.EventHandler(this.btnFeito_Click);
            // 
            // btnEntregue
            // 
            this.btnEntregue.AutoSize = true;
            this.btnEntregue.Location = new System.Drawing.Point(12, 699);
            this.btnEntregue.Name = "btnEntregue";
            this.btnEntregue.Size = new System.Drawing.Size(220, 23);
            this.btnEntregue.TabIndex = 7;
            this.btnEntregue.Text = "Teste Batata Frita - Entregue";
            this.btnEntregue.UseVisualStyleBackColor = true;
            this.btnEntregue.Click += new System.EventHandler(this.btnEntregue_Click);
            // 
            // FrmPrincipalKitchen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1350, 730);
            this.Controls.Add(this.btnEntregue);
            this.Controls.Add(this.btnFeito);
            this.Controls.Add(this.btnNaFila);
            this.Controls.Add(this.btnModificarDisponibilidadeIngrediente);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmPrincipalKitchen";
            this.Text = "e-Serveur - Cozinha";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tblLayoutPedidos.ResumeLayout(false);
            this.tblLayoutPedidos.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnModificarDisponibilidadeIngrediente;
        private System.Windows.Forms.TableLayoutPanel tblLayoutPedidos;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnNaFila;
        private System.Windows.Forms.Button btnFeito;
        private System.Windows.Forms.Button btnEntregue;
    }
}

