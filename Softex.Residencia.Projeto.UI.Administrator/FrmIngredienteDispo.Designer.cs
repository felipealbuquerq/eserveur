namespace Softex.Residencia.Projeto.UI.Administrator
{
    partial class FrmIngredienteDispo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
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
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmIngredienteDispo));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnModificarDisponibilidade = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnModificarDisponibilidade);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(589, 157);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Modificar disponibilidade de um ingrediente";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(115, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Ingrediente:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(138, 67);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(366, 30);
            this.textBox1.TabIndex = 1;
            // 
            // btnModificarDisponibilidade
            // 
            this.btnModificarDisponibilidade.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnModificarDisponibilidade.BackgroundImage")));
            this.btnModificarDisponibilidade.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnModificarDisponibilidade.Location = new System.Drawing.Point(510, 61);
            this.btnModificarDisponibilidade.Name = "btnModificarDisponibilidade";
            this.btnModificarDisponibilidade.Size = new System.Drawing.Size(47, 43);
            this.btnModificarDisponibilidade.TabIndex = 2;
            this.btnModificarDisponibilidade.UseVisualStyleBackColor = true;
            // 
            // FrmIngredienteDispo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(589, 157);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmIngredienteDispo";
            this.Text = "Disponibilidade dos ingredientes";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnModificarDisponibilidade;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
    }
}