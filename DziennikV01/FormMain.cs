using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DziennikV01
{
    public partial class FormMain : Form
    { 
        public bool ifFormAddSudentIsOn = false;
        
        public FormMain()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
            FormWelcome FWelcome = new FormWelcome();

            //if (this.Contains(AddStu) == false)

            FWelcome.TopLevel = false;
            FWelcome.MdiParent = this;
            FWelcome.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            FWelcome.Dock = DockStyle.Fill;
            FWelcome.Show();
        }

        private void dodajToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            FormAddStudent AddStu = new FormAddStudent();
            
            //if (this.Contains(AddStu) == false)
                
                    AddStu.TopLevel = false;
                    AddStu.MdiParent = this;
                    AddStu.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
                    AddStu.Dock = DockStyle.Fill;
                    AddStu.Show();
                        
        }
    }
}
