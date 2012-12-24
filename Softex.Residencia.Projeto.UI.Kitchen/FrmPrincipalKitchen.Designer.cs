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
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tblLayoutPedidos = new System.Windows.Forms.TableLayoutPanel();
            this.label2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnModificarDisponibilidadeIngrediente = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.tblLayoutPedidos.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 47);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 46);
            this.label1.TabIndex = 0;
            this.label1.Text = "12";
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
            this.tblLayoutPedidos.ColumnCount = 3;
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tblLayoutPedidos.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 171F));
            this.tblLayoutPedidos.Controls.Add(this.label2, 1, 1);
            this.tblLayoutPedidos.Controls.Add(this.label1, 0, 1);
            this.tblLayoutPedidos.Controls.Add(this.button1, 2, 1);
            this.tblLayoutPedidos.Controls.Add(this.label3, 0, 0);
            this.tblLayoutPedidos.Controls.Add(this.label4, 1, 0);
            this.tblLayoutPedidos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblLayoutPedidos.Location = new System.Drawing.Point(3, 41);
            this.tblLayoutPedidos.Name = "tblLayoutPedidos";
            this.tblLayoutPedidos.RowCount = 3;
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 60F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 484F));
            this.tblLayoutPedidos.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tblLayoutPedidos.Size = new System.Drawing.Size(1348, 591);
            this.tblLayoutPedidos.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(109, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(240, 46);
            this.label2.TabIndex = 2;
            this.label2.Text = "Café expresso";
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.LimeGreen;
            this.button1.ForeColor = System.Drawing.Color.Black;
            this.button1.Location = new System.Drawing.Point(1180, 50);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(165, 51);
            this.button1.TabIndex = 3;
            this.button1.Text = "Entregue";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
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
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(32, 677);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 5;
            this.button2.Text = "button2";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // FrmPrincipalKitchen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1350, 730);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnModificarDisponibilidadeIngrediente);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmPrincipalKitchen";
            this.Text = "e-Serveur - Cozinha";
            this.groupBox1.ResumeLayout(false);
            this.tblLayoutPedidos.ResumeLayout(false);
            this.tblLayoutPedidos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnModificarDisponibilidadeIngrediente;
        private System.Windows.Forms.TableLayoutPanel tblLayoutPedidos;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button button2;


    }
}

