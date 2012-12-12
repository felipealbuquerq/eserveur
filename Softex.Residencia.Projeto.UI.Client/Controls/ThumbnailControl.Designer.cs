namespace Softex.Residencia.Projeto.UI.Client.Controls
{
    partial class ThumbnailControl
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
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblNomeProduto = new System.Windows.Forms.Label();
            this.btnIconeProduto = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblNomeProduto
            // 
            this.lblNomeProduto.AutoSize = true;
            this.lblNomeProduto.Location = new System.Drawing.Point(4, 150);
            this.lblNomeProduto.Name = "lblNomeProduto";
            this.lblNomeProduto.Size = new System.Drawing.Size(0, 13);
            this.lblNomeProduto.TabIndex = 1;
            this.lblNomeProduto.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnIconeProduto
            // 
            this.btnIconeProduto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnIconeProduto.Location = new System.Drawing.Point(0, 0);
            this.btnIconeProduto.Name = "btnIconeProduto";
            this.btnIconeProduto.Size = new System.Drawing.Size(146, 147);
            this.btnIconeProduto.TabIndex = 2;
            this.btnIconeProduto.UseVisualStyleBackColor = true;
            this.btnIconeProduto.Click += new System.EventHandler(this.btnIconeProduto_Click);
            // 
            // ThumbnailControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnIconeProduto);
            this.Controls.Add(this.lblNomeProduto);
            this.Name = "ThumbnailControl";
            this.Size = new System.Drawing.Size(146, 174);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblNomeProduto;
        private System.Windows.Forms.Button btnIconeProduto;
    }
}
