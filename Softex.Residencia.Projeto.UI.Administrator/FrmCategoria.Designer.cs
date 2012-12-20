namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmCategoria {
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCategoria));
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.cboListaDeCategoria = new System.Windows.Forms.ComboBox();
            this.btnRemoverCategoria = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnAdicionarCategoria = new System.Windows.Forms.Button();
            this.txtNomeNovaCategoria = new System.Windows.Forms.TextBox();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(15, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(118, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nome da categoria: ";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.cboListaDeCategoria);
            this.groupBox3.Controls.Add(this.btnRemoverCategoria);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(12, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(488, 97);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Lista de categoria";
            // 
            // cboListaDeCategoria
            // 
            this.cboListaDeCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeCategoria.FormattingEnabled = true;
            this.cboListaDeCategoria.Location = new System.Drawing.Point(18, 38);
            this.cboListaDeCategoria.Name = "cboListaDeCategoria";
            this.cboListaDeCategoria.Size = new System.Drawing.Size(403, 23);
            this.cboListaDeCategoria.TabIndex = 3;
            // 
            // btnRemoverCategoria
            // 
            this.btnRemoverCategoria.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverCategoria.BackgroundImage")));
            this.btnRemoverCategoria.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverCategoria.Location = new System.Drawing.Point(427, 31);
            this.btnRemoverCategoria.Name = "btnRemoverCategoria";
            this.btnRemoverCategoria.Size = new System.Drawing.Size(36, 33);
            this.btnRemoverCategoria.TabIndex = 2;
            this.btnRemoverCategoria.UseMnemonic = false;
            this.btnRemoverCategoria.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btnAdicionarCategoria);
            this.groupBox2.Controls.Add(this.txtNomeNovaCategoria);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(12, 115);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(488, 97);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Adicionar nova categoria";
            // 
            // btnAdicionarCategoria
            // 
            this.btnAdicionarCategoria.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarCategoria.BackgroundImage")));
            this.btnAdicionarCategoria.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdicionarCategoria.Location = new System.Drawing.Point(427, 35);
            this.btnAdicionarCategoria.Name = "btnAdicionarCategoria";
            this.btnAdicionarCategoria.Size = new System.Drawing.Size(36, 33);
            this.btnAdicionarCategoria.TabIndex = 2;
            this.btnAdicionarCategoria.UseMnemonic = false;
            this.btnAdicionarCategoria.UseVisualStyleBackColor = true;
            this.btnAdicionarCategoria.Click += new System.EventHandler(this.btnAdicionarCategoria_Click);
            // 
            // txtNomeNovaCategoria
            // 
            this.txtNomeNovaCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNomeNovaCategoria.Location = new System.Drawing.Point(134, 42);
            this.txtNomeNovaCategoria.Name = "txtNomeNovaCategoria";
            this.txtNomeNovaCategoria.Size = new System.Drawing.Size(287, 21);
            this.txtNomeNovaCategoria.TabIndex = 1;
            // 
            // FrmCategoria
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(518, 231);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmCategoria";
            this.Text = "Categorias";
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtNomeNovaCategoria;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnAdicionarCategoria;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cboListaDeCategoria;
        private System.Windows.Forms.Button btnRemoverCategoria;
    }
}