namespace Softex.Residencia.Projeto.UI.Administrator {
    partial class FrmPedido {
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPedido));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtCodigoPedido = new System.Windows.Forms.TextBox();
            this.btnConsultarPedidoPorCodigo = new System.Windows.Forms.Button();
            this.btnCancelarPedidoPorCodigo = new System.Windows.Forms.Button();
            this.btnConsultarPedidoPorMesa = new System.Windows.Forms.Button();
            this.txtCodigoMesa = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnCancelarPedidoPorMesa = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnCancelarPedidoPorCodigo);
            this.groupBox1.Controls.Add(this.btnConsultarPedidoPorCodigo);
            this.groupBox1.Controls.Add(this.txtCodigoPedido);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(13, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(606, 106);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Por código";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnCancelarPedidoPorMesa);
            this.groupBox2.Controls.Add(this.btnConsultarPedidoPorMesa);
            this.groupBox2.Controls.Add(this.txtCodigoMesa);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(13, 148);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(606, 88);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Por mesa";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Código do pedido:";
            // 
            // txtCodigoPedido
            // 
            this.txtCodigoPedido.Location = new System.Drawing.Point(159, 34);
            this.txtCodigoPedido.Name = "txtCodigoPedido";
            this.txtCodigoPedido.Size = new System.Drawing.Size(434, 26);
            this.txtCodigoPedido.TabIndex = 1;
            // 
            // btnConsultarPedidoPorCodigo
            // 
            this.btnConsultarPedidoPorCodigo.Location = new System.Drawing.Point(254, 66);
            this.btnConsultarPedidoPorCodigo.Name = "btnConsultarPedidoPorCodigo";
            this.btnConsultarPedidoPorCodigo.Size = new System.Drawing.Size(165, 27);
            this.btnConsultarPedidoPorCodigo.TabIndex = 2;
            this.btnConsultarPedidoPorCodigo.Text = "Consultar/Modificar";
            this.btnConsultarPedidoPorCodigo.UseVisualStyleBackColor = true;
            this.btnConsultarPedidoPorCodigo.Click += new System.EventHandler(this.btnConsultarPedidoPorCodigo_Click);
            // 
            // btnCancelarPedidoPorCodigo
            // 
            this.btnCancelarPedidoPorCodigo.Location = new System.Drawing.Point(428, 66);
            this.btnCancelarPedidoPorCodigo.Name = "btnCancelarPedidoPorCodigo";
            this.btnCancelarPedidoPorCodigo.Size = new System.Drawing.Size(165, 27);
            this.btnCancelarPedidoPorCodigo.TabIndex = 3;
            this.btnCancelarPedidoPorCodigo.Text = "Cancelar pedido";
            this.btnCancelarPedidoPorCodigo.UseVisualStyleBackColor = true;
            this.btnCancelarPedidoPorCodigo.Click += new System.EventHandler(this.btnCancelarPedidoPorCodigo_Click);
            // 
            // btnConsultarPedidoPorMesa
            // 
            this.btnConsultarPedidoPorMesa.Location = new System.Drawing.Point(253, 48);
            this.btnConsultarPedidoPorMesa.Name = "btnConsultarPedidoPorMesa";
            this.btnConsultarPedidoPorMesa.Size = new System.Drawing.Size(165, 27);
            this.btnConsultarPedidoPorMesa.TabIndex = 6;
            this.btnConsultarPedidoPorMesa.Text = "Consultar/Modificar";
            this.btnConsultarPedidoPorMesa.UseVisualStyleBackColor = true;
            this.btnConsultarPedidoPorMesa.Click += new System.EventHandler(this.btnConsultarPedidoPorMesa_Click);
            // 
            // txtCodigoMesa
            // 
            this.txtCodigoMesa.Location = new System.Drawing.Point(158, 16);
            this.txtCodigoMesa.Name = "txtCodigoMesa";
            this.txtCodigoMesa.Size = new System.Drawing.Size(434, 26);
            this.txtCodigoMesa.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 19);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(137, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Código do pedido:";
            // 
            // btnCancelarPedidoPorMesa
            // 
            this.btnCancelarPedidoPorMesa.Location = new System.Drawing.Point(428, 48);
            this.btnCancelarPedidoPorMesa.Name = "btnCancelarPedidoPorMesa";
            this.btnCancelarPedidoPorMesa.Size = new System.Drawing.Size(165, 27);
            this.btnCancelarPedidoPorMesa.TabIndex = 4;
            this.btnCancelarPedidoPorMesa.Text = "Cancelar pedido";
            this.btnCancelarPedidoPorMesa.UseVisualStyleBackColor = true;
            this.btnCancelarPedidoPorMesa.Click += new System.EventHandler(this.btnCancelarPedidoPorMesa_Click);
            // 
            // FrmPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(637, 322);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmPedido";
            this.Text = "Pedidos";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnCancelarPedidoPorCodigo;
        private System.Windows.Forms.Button btnConsultarPedidoPorCodigo;
        private System.Windows.Forms.TextBox txtCodigoPedido;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnConsultarPedidoPorMesa;
        private System.Windows.Forms.TextBox txtCodigoMesa;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnCancelarPedidoPorMesa;
    }
}