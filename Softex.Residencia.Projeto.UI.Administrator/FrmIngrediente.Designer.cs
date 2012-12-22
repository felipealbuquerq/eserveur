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
            this.btnIngredienteNaoDisponivel = new System.Windows.Forms.Button();
            this.cboListaDeIngrediente = new System.Windows.Forms.ComboBox();
            this.btnRemoverIngrediente = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAdicionarIngrediente = new System.Windows.Forms.Button();
            this.txtNomeNovaIngrediente = new System.Windows.Forms.TextBox();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnIngredienteNaoDisponivel);
            this.groupBox3.Controls.Add(this.cboListaDeIngrediente);
            this.groupBox3.Controls.Add(this.btnRemoverIngrediente);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(12, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(497, 97);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Lista de ingredientes";
            // 
            // btnIngredienteNaoDisponivel
            // 
            this.btnIngredienteNaoDisponivel.AccessibleDescription = "";
            this.btnIngredienteNaoDisponivel.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnIngredienteNaoDisponivel.BackgroundImage")));
            this.btnIngredienteNaoDisponivel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnIngredienteNaoDisponivel.Location = new System.Drawing.Point(383, 26);
            this.btnIngredienteNaoDisponivel.Name = "btnIngredienteNaoDisponivel";
            this.btnIngredienteNaoDisponivel.Size = new System.Drawing.Size(44, 42);
            this.btnIngredienteNaoDisponivel.TabIndex = 4;
            this.btnIngredienteNaoDisponivel.Tag = "";
            this.toolTip1.SetToolTip(this.btnIngredienteNaoDisponivel, "Modificar a disponibilidade");
            this.btnIngredienteNaoDisponivel.UseMnemonic = false;
            this.btnIngredienteNaoDisponivel.UseVisualStyleBackColor = true;
            this.btnIngredienteNaoDisponivel.Click += new System.EventHandler(this.btnIngredienteNaoDisponivel_Click);
            // 
            // cboListaDeIngrediente
            // 
            this.cboListaDeIngrediente.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeIngrediente.FormattingEnabled = true;
            this.cboListaDeIngrediente.Location = new System.Drawing.Point(18, 38);
            this.cboListaDeIngrediente.Name = "cboListaDeIngrediente";
            this.cboListaDeIngrediente.Size = new System.Drawing.Size(359, 23);
            this.cboListaDeIngrediente.TabIndex = 3;
            // 
            // btnRemoverIngrediente
            // 
            this.btnRemoverIngrediente.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverIngrediente.BackgroundImage")));
            this.btnRemoverIngrediente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverIngrediente.Location = new System.Drawing.Point(433, 26);
            this.btnRemoverIngrediente.Name = "btnRemoverIngrediente";
            this.btnRemoverIngrediente.Size = new System.Drawing.Size(47, 42);
            this.btnRemoverIngrediente.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnRemoverIngrediente, "Remover ingrediente do banco de dados");
            this.btnRemoverIngrediente.UseMnemonic = false;
            this.btnRemoverIngrediente.UseVisualStyleBackColor = true;
            this.btnRemoverIngrediente.Click += new System.EventHandler(this.btnRemoverIngrediente_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btnAdicionarIngrediente);
            this.groupBox2.Controls.Add(this.txtNomeNovaIngrediente);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(12, 115);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(497, 98);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Adicionar novo ingrediente";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(9, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nome: ";
            // 
            // btnAdicionarIngrediente
            // 
            this.btnAdicionarIngrediente.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarIngrediente.BackgroundImage")));
            this.btnAdicionarIngrediente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdicionarIngrediente.Location = new System.Drawing.Point(433, 30);
            this.btnAdicionarIngrediente.Name = "btnAdicionarIngrediente";
            this.btnAdicionarIngrediente.Size = new System.Drawing.Size(47, 43);
            this.btnAdicionarIngrediente.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnAdicionarIngrediente, "Adicionar ingrediente");
            this.btnAdicionarIngrediente.UseMnemonic = false;
            this.btnAdicionarIngrediente.UseVisualStyleBackColor = true;
            this.btnAdicionarIngrediente.Click += new System.EventHandler(this.btnAdicionarIngrediente_Click);
            // 
            // txtNomeNovaIngrediente
            // 
            this.txtNomeNovaIngrediente.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNomeNovaIngrediente.Location = new System.Drawing.Point(74, 42);
            this.txtNomeNovaIngrediente.Name = "txtNomeNovaIngrediente";
            this.txtNomeNovaIngrediente.Size = new System.Drawing.Size(353, 26);
            this.txtNomeNovaIngrediente.TabIndex = 1;
            // 
            // FrmIngrediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(519, 231);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmIngrediente";
            this.Text = "Ingredientes";
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cboListaDeIngrediente;
        private System.Windows.Forms.Button btnRemoverIngrediente;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnAdicionarIngrediente;
        private System.Windows.Forms.TextBox txtNomeNovaIngrediente;
        private System.Windows.Forms.Button btnIngredienteNaoDisponivel;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}