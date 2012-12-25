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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCategoria));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.cboListaDeCategoria = new System.Windows.Forms.ComboBox();
            this.btnRemoverCategoria = new System.Windows.Forms.Button();
            this.btnAdicionarCategoria = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.cboListaDeCategoria);
            this.groupBox3.Controls.Add(this.btnAdicionarCategoria);
            this.groupBox3.Controls.Add(this.btnRemoverCategoria);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(9, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(534, 91);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Lista de categoria";
            // 
            // cboListaDeCategoria
            // 
            this.cboListaDeCategoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboListaDeCategoria.FormattingEnabled = true;
            this.cboListaDeCategoria.Location = new System.Drawing.Point(6, 39);
            this.cboListaDeCategoria.Name = "cboListaDeCategoria";
            this.cboListaDeCategoria.Size = new System.Drawing.Size(403, 28);
            this.cboListaDeCategoria.TabIndex = 3;
            // 
            // btnRemoverCategoria
            // 
            this.btnRemoverCategoria.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnRemoverCategoria.BackgroundImage")));
            this.btnRemoverCategoria.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnRemoverCategoria.Location = new System.Drawing.Point(477, 32);
            this.btnRemoverCategoria.Name = "btnRemoverCategoria";
            this.btnRemoverCategoria.Size = new System.Drawing.Size(44, 41);
            this.btnRemoverCategoria.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnRemoverCategoria, "Remover categoria");
            this.btnRemoverCategoria.UseMnemonic = false;
            this.btnRemoverCategoria.UseVisualStyleBackColor = true;
            this.btnRemoverCategoria.Click += new System.EventHandler(this.btnRemoverCategoria_Click);
            // 
            // btnAdicionarCategoria
            // 
            this.btnAdicionarCategoria.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnAdicionarCategoria.BackgroundImage")));
            this.btnAdicionarCategoria.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdicionarCategoria.Location = new System.Drawing.Point(427, 32);
            this.btnAdicionarCategoria.Name = "btnAdicionarCategoria";
            this.btnAdicionarCategoria.Size = new System.Drawing.Size(44, 41);
            this.btnAdicionarCategoria.TabIndex = 2;
            this.toolTip1.SetToolTip(this.btnAdicionarCategoria, "Adicionar categoria");
            this.btnAdicionarCategoria.UseMnemonic = false;
            this.btnAdicionarCategoria.UseVisualStyleBackColor = true;
            this.btnAdicionarCategoria.Click += new System.EventHandler(this.btnAdicionarCategoria_Click);
            // 
            // FrmCategoria
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(553, 126);
            this.Controls.Add(this.groupBox3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmCategoria";
            this.Text = "Categorias";
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnAdicionarCategoria;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cboListaDeCategoria;
        private System.Windows.Forms.Button btnRemoverCategoria;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}