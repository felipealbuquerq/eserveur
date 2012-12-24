namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmIngrediente {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmIngrediente));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.cboListaDeIngrediente = new System.Windows.Forms.ComboBox();
            this.btnRemoverIngrediente = new System.Windows.Forms.Button();
            this.btnAdicionarIngrediente = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.btnModificarDisponibilidade = new System.Windows.Forms.Button();
            this.lblDisponibilidade = new System.Windows.Forms.Label();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.lblDisponibilidade);
            this.groupBox3.Controls.Add(this.btnModificarDisponibilidade);
            this.groupBox3.Controls.Add(this.cboListaDeIngrediente);
            this.groupBox3.Controls.Add(this.btnAdicionarIngrediente);
            this.groupBox3.Controls.Add(this.btnRemoverIngrediente);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(12, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(501, 128);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Lista de ingredientes";
            // 
            // cboListaDeIngrediente
            // 
            this.cboListaDeIngrediente.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeIngrediente.FormattingEnabled = true;
            this.cboListaDeIngrediente.Location = new System.Drawing.Point(18, 35);
            this.cboListaDeIngrediente.Name = "cboListaDeIngrediente";
            this.cboListaDeIngrediente.Size = new System.Drawing.Size(359, 28);
            this.cboListaDeIngrediente.TabIndex = 3;
            this.cboListaDeIngrediente.SelectedIndexChanged += new System.EventHandler(this.ingredienteSelecionado);
            // 
            // btnRemoverIngrediente
            // 
            this.btnRemoverIngrediente.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverIngrediente.BackgroundImage")));
            this.btnRemoverIngrediente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverIngrediente.Location = new System.Drawing.Point(436, 27);
            this.btnRemoverIngrediente.Name = "btnRemoverIngrediente";
            this.btnRemoverIngrediente.Size = new System.Drawing.Size(47, 42);
            this.btnRemoverIngrediente.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnRemoverIngrediente, "Remover ingrediente do banco de dados");
            this.btnRemoverIngrediente.UseMnemonic = false;
            this.btnRemoverIngrediente.UseVisualStyleBackColor = true;
            this.btnRemoverIngrediente.Click += new System.EventHandler(this.btnRemoverIngrediente_Click);
            // 
            // btnAdicionarIngrediente
            // 
            this.btnAdicionarIngrediente.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarIngrediente.BackgroundImage")));
            this.btnAdicionarIngrediente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdicionarIngrediente.Location = new System.Drawing.Point(383, 27);
            this.btnAdicionarIngrediente.Name = "btnAdicionarIngrediente";
            this.btnAdicionarIngrediente.Size = new System.Drawing.Size(47, 43);
            this.btnAdicionarIngrediente.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnAdicionarIngrediente, "Adicionar ingrediente");
            this.btnAdicionarIngrediente.UseMnemonic = false;
            this.btnAdicionarIngrediente.UseVisualStyleBackColor = true;
            this.btnAdicionarIngrediente.Click += new System.EventHandler(this.btnAdicionarIngrediente_Click);
            // 
            // btnModificarDisponibilidade
            // 
            this.btnModificarDisponibilidade.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnModificarDisponibilidade.BackgroundImage")));
            this.btnModificarDisponibilidade.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnModificarDisponibilidade.Location = new System.Drawing.Point(383, 71);
            this.btnModificarDisponibilidade.Name = "btnModificarDisponibilidade";
            this.btnModificarDisponibilidade.Size = new System.Drawing.Size(47, 43);
            this.btnModificarDisponibilidade.TabIndex = 4;
            this.toolTip1.SetToolTip(this.btnModificarDisponibilidade, "Adicionar ingrediente");
            this.btnModificarDisponibilidade.UseMnemonic = false;
            this.btnModificarDisponibilidade.UseVisualStyleBackColor = true;
            // 
            // lblDisponibilidade
            // 
            this.lblDisponibilidade.AutoSize = true;
            this.lblDisponibilidade.Location = new System.Drawing.Point(18, 82);
            this.lblDisponibilidade.Name = "lblDisponibilidade";
            this.lblDisponibilidade.Size = new System.Drawing.Size(81, 20);
            this.lblDisponibilidade.TabIndex = 5;
            this.lblDisponibilidade.Text = "Disponível";
            // 
            // FrmIngrediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(530, 179);
            this.Controls.Add(this.groupBox3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmIngrediente";
            this.Text = "Ingredientes";
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cboListaDeIngrediente;
        private System.Windows.Forms.Button btnRemoverIngrediente;
        private System.Windows.Forms.Button btnAdicionarIngrediente;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Button btnModificarDisponibilidade;
        private System.Windows.Forms.Label lblDisponibilidade;
    }
}