namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmBDCategoria {
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBDCategoria));
            this.dvgCategoria = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dvgCategoria)).BeginInit();
            this.SuspendLayout();
            // 
            // dvgCategoria
            // 
            this.dvgCategoria.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dvgCategoria.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dvgCategoria.Location = new System.Drawing.Point(0, 0);
            this.dvgCategoria.Name = "dvgCategoria";
            this.dvgCategoria.Size = new System.Drawing.Size(736, 444);
            this.dvgCategoria.TabIndex = 1;
            // 
            // FrmBDCategoria
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(736, 444);
            this.Controls.Add(this.dvgCategoria);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmBDCategoria";
            this.Text = "Banco de dados de categorias";
            ((System.ComponentModel.ISupportInitialize)(this.dvgCategoria)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dvgCategoria;
    }
}