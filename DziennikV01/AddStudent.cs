using MySql.Data.MySqlClient;
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
    public partial class FormAddStudent : Form
    {
        public FormAddStudent()
        {
            InitializeComponent();
                       
        }

        private void buttonExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void checkBoxOpiekunAdres_Click(object sender, EventArgs e)
        {
            if(checkBoxAdresOpiekuna1.CheckState == CheckState.Checked)
            {
                textBoxOpiekunUlica2.Enabled = false;
                textBoxOpiekunUlica2.Text = textBoxOpiekunUlica1.Text;
                textBoxOpiekunNrDomu2.Enabled = false;
                textBoxOpiekunNrDomu2.Text = textBoxOpiekunNrDomu1.Text;
                textBoxOpiekunMiejscowosc2.Enabled = false;
                textBoxOpiekunMiejscowosc2.Text = textBoxOpiekunMiejscowosc1.Text;
                textBoxOpiekunKodPocztowy2.Enabled = false;
                textBoxOpiekunKodPocztowy2.Text = textBoxOpiekunKodPocztowy1.Text;
                radioButtonAdres2.Checked = false;
                radioButtonAdres2.Enabled = false;
                radioButtonAdres1.Checked = true;
            }
            else
            {
                textBoxOpiekunUlica2.Enabled = true;
                textBoxOpiekunNrDomu2.Enabled = true;
                textBoxOpiekunMiejscowosc2.Enabled = true;
                textBoxOpiekunKodPocztowy2.Enabled = true;

                textBoxOpiekunUlica2.Text = null;
                textBoxOpiekunNrDomu2.Text = null;
                textBoxOpiekunMiejscowosc2.Text = null;
                textBoxOpiekunKodPocztowy2.Text = null;
                radioButtonAdres2.Enabled = true;
                radioButtonAdres1.Checked = false;
                radioButtonAdres2.Checked = false;
            }
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            
            bool ConnO = false;
            
            int checkSum = 0;
            // generowanie id typu GUID

            string newGUIDidUcz = Convert.ToString(System.Guid.NewGuid());
            string newGUIDidOp1 = Convert.ToString(System.Guid.NewGuid());
            string newGUIDidOp2 = Convert.ToString(System.Guid.NewGuid());
            // UCZEN - domyslnie adres opiekuna 1
            string uczen_id = newGUIDidUcz;
            string uczen_imie = textBoxName.Text;
            string uczen_nazwisko = textBoxLastName.Text;
            string uczen_data = dateTimePicker1.Value.ToString("yyyyMMdd");
            string uczen_ulica = textBoxOpiekunUlica1.Text;
            string uczen_nrD = textBoxOpiekunNrDomu1.Text;
            string uczen_miejsc = textBoxOpiekunMiejscowosc1.Text;
            string uczen_kod = textBoxOpiekunKodPocztowy1.Text;
            string uczen_tel = textBoxNrTelefonu.Text;
            string uczen_email = textBoxEmail.Text;
            

            // OPIEKUN 1
            string op1_imie = textBoxOpiekunImie1.Text;
            string op1_nazwisko = textBoxOpiekunNazwisko1.Text;
            string op1_ulica = textBoxOpiekunUlica1.Text;
            string op1_nrD = textBoxOpiekunNrDomu1.Text;
            string op1_miejsc = textBoxOpiekunMiejscowosc1.Text;
            string op1_kod = textBoxOpiekunKodPocztowy1.Text;
            string op1_tel = textBoxOpiekunNrTelefonu1.Text;
            string op1_email = textBoxOpiekunEmail1.Text;
            
            // OPIEKUN 2 
            string op2_imie = textBoxOpiekunImie2.Text;
            string op2_nazwisko = textBoxOpiekunNazwisko2.Text;
            string op2_ulica = textBoxOpiekunUlica2.Text;
            string op2_nrD = textBoxOpiekunNrDomu2.Text;
            string op2_miejsc = textBoxOpiekunMiejscowosc2.Text;
            string op2_kod = textBoxOpiekunKodPocztowy2.Text;
            string op2_tel = textBoxOpiekunNrTelefonu2.Text;
            string op2_email = textBoxOpiekunEmail2.Text;

                      

            if (checkBoxTylko1Opiekun.Checked == true) //jeżeli 1 opiekun
            {
                checkSum = (textBoxName.Text.Length * textBoxLastName.Text.Length * textBoxNrTelefonu.Text.Length);
                checkSum *= (textBoxOpiekunImie1.Text.Length * textBoxOpiekunNazwisko1.Text.Length * textBoxOpiekunUlica1.Text.Length * textBoxOpiekunNrDomu1.Text.Length * textBoxOpiekunMiejscowosc1.Text.Length * textBoxOpiekunKodPocztowy1.Text.Length * textBoxOpiekunNrTelefonu1.Text.Length);
                
            }
            else if (checkBoxTylko1Opiekun.Checked == false && checkBoxAdresOpiekuna1.Checked == true) // jeżeli 2 opiekunów pod jednym adresem
            {
                checkSum = (textBoxName.Text.Length * textBoxLastName.Text.Length * textBoxNrTelefonu.Text.Length);
                checkSum *= (textBoxOpiekunImie1.Text.Length * textBoxOpiekunNazwisko1.Text.Length * textBoxOpiekunUlica1.Text.Length * textBoxOpiekunNrDomu1.Text.Length * textBoxOpiekunMiejscowosc1.Text.Length * textBoxOpiekunKodPocztowy1.Text.Length * textBoxOpiekunNrTelefonu1.Text.Length);
                checkSum *= (textBoxOpiekunImie2.Text.Length * textBoxOpiekunNazwisko2.Text.Length * textBoxOpiekunNrTelefonu2.Text.Length);
                
                op2_ulica = op1_ulica;
                op2_nrD = op1_nrD;
                op2_miejsc = op1_miejsc;
                op2_kod = op1_kod;
            }
            else if (checkBoxTylko1Opiekun.Checked == false && checkBoxAdresOpiekuna1.Checked == false) // jeżeli 2 opiekunów i 2 adresy
            {
                checkSum = (textBoxName.Text.Length * textBoxLastName.Text.Length * textBoxNrTelefonu.Text.Length);
                checkSum *= (textBoxOpiekunImie1.Text.Length * textBoxOpiekunNazwisko1.Text.Length * textBoxOpiekunUlica1.Text.Length * textBoxOpiekunNrDomu1.Text.Length * textBoxOpiekunMiejscowosc1.Text.Length * textBoxOpiekunKodPocztowy1.Text.Length * textBoxOpiekunNrTelefonu1.Text.Length);
                checkSum *= (textBoxOpiekunImie2.Text.Length * textBoxOpiekunNazwisko2.Text.Length * textBoxOpiekunUlica2.Text.Length * textBoxOpiekunNrDomu2.Text.Length * textBoxOpiekunMiejscowosc2.Text.Length * textBoxOpiekunKodPocztowy2.Text.Length * textBoxOpiekunNrTelefonu2.Text.Length);
                
                if (radioButtonAdres2.Checked == true) // jeśli uczeń pod adresem Opiekuna 2
                {
                    uczen_ulica = textBoxOpiekunUlica2.Text;
                    uczen_nrD = textBoxOpiekunNrDomu2.Text;
                    uczen_miejsc = textBoxOpiekunMiejscowosc2.Text;
                    uczen_kod = textBoxOpiekunKodPocztowy2.Text;
                }
            }


            if (checkSum == 0)
            {
                MessageBox.Show("Nie uzupełniono wymaganych pól!", "Wprowadzanie danych", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {

                // wprowadź dane do bazy tutaj

                // zapytania SQL

                string queryUczenDane = "INSERT INTO dziennik.uczen (id_uczen, imie, nazwisko, data_urodzenia) " +
                                     "VALUES('" + newGUIDidUcz + "','" + uczen_imie + "','" + uczen_nazwisko + "','" + uczen_data + "');";
                
                string queryUczenKontakt = "INSERT INTO dziennik.kontakt (id_kontakt, ulica, nr_domu, miejscowosc, kod_pocztowy, nr_tel, email ) " +
                                     "VALUES ('" + newGUIDidUcz + "','" + uczen_ulica + "','" + uczen_nrD + "','" + uczen_miejsc + "','" + uczen_kod + "','" + uczen_tel + "','" + uczen_email + "'); ";
                
                string queryOp1Dane = "INSERT INTO dziennik.opiekun (id_opiekun, imie, nazwisko) VALUES ('"+ newGUIDidOp1 + "','"+ op1_imie + "','"+ op1_nazwisko + "','" + uczen_id + "');";
                
                string queryOp1Kontakt = "INSERT INTO dziennik.kontakt (id_kontakt, ulica, nr_domu, miejscowosc, kod_pocztowy, nr_tel, email ) " +
                                     "VALUES ('" + newGUIDidOp1 + "','" + op1_ulica + "','" + op1_nrD + "','" + op1_miejsc + "','" + op1_kod + "','" + op1_tel + "','" + op1_email + "'); ";

                string queryOp2Dane = "INSERT INTO dziennik.opiekun (id_opiekun, imie, nazwisko) VALUES ('" + newGUIDidOp2 + "','" + op2_imie + "','" + op2_nazwisko + "','" + uczen_id+"');";
                
                string queryOp2Kontakt = "INSERT INTO dziennik.kontakt (id_kontakt, ulica, nr_domu, miejscowosc, kod_pocztowy, nr_tel, email ) " +
                                     "VALUES ('" + newGUIDidOp2 + "','" + op2_ulica + "','" + op2_nrD + "','" + op2_miejsc + "','" + op2_kod + "','" + op2_tel + "','" + op2_email + "'); ";
                


                string connectionString = "datasource=127.0.0.1; port=3306;username=root;password=;database=dziennik";
                MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                
                MySqlCommand commandDBuczenDane = new MySqlCommand(queryUczenDane, databaseConnection);
                MySqlCommand commandDBuczenKontakt = new MySqlCommand(queryUczenKontakt, databaseConnection);
                MySqlCommand commandDBopiekunDane = new MySqlCommand(queryOp1Dane, databaseConnection);
                MySqlCommand commandDBopiekunKontakt = new MySqlCommand(queryOp1Kontakt, databaseConnection);

                commandDBuczenDane.CommandTimeout = 30;
                commandDBuczenKontakt.CommandTimeout = 30;
                commandDBopiekunDane.CommandTimeout = 30;
                commandDBopiekunKontakt.CommandTimeout = 30;

                try
                {
                    databaseConnection.Open();

                    commandDBuczenDane.ExecuteNonQuery();
                    commandDBuczenKontakt.ExecuteNonQuery();
                    commandDBopiekunDane.ExecuteNonQuery();
                    commandDBopiekunKontakt.ExecuteNonQuery();
                    if(checkBoxTylko1Opiekun.Checked == false)
                    {
                        commandDBopiekunDane = new MySqlCommand(queryOp2Dane, databaseConnection);
                        commandDBopiekunKontakt = new MySqlCommand(queryOp2Kontakt, databaseConnection);
                        commandDBopiekunDane.ExecuteNonQuery();
                        commandDBopiekunKontakt.ExecuteNonQuery();
                    }



                    if (databaseConnection.State.ToString() == "Open") ConnO = true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                databaseConnection.Close();


                if (ConnO == true)
                {
                    DialogResult res = MessageBox.Show("Dane ucznia zostały pomyślnie zapisane.\nCzy chcesz wprowadzić kolejne dane?", "Zapis danych", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (res == System.Windows.Forms.DialogResult.No)
                    {
                        // Closes the parent form.
                        this.Close();
                    }
                    else
                    {
                        this.Refresh();
                    }
                }
                else
                { 
                    MessageBox.Show("Zapis się nie powiódł.\nBrak połączenia z bazą danych.", "Zapis danych", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                }

            }
        }

        private void checkBoxIleOpiekunow_Click(object sender, EventArgs e)
        {
            if (checkBoxTylko1Opiekun.CheckState == CheckState.Checked)
            {
                textBoxOpiekunImie2.Enabled = false;
                textBoxOpiekunNazwisko2.Enabled = false;
                textBoxOpiekunUlica2.Enabled = false;
                textBoxOpiekunNrDomu2.Enabled = false;
                textBoxOpiekunMiejscowosc2.Enabled = false;
                textBoxOpiekunKodPocztowy2.Enabled = false;
                textBoxOpiekunNrTelefonu2.Enabled = false;
                textBoxOpiekunEmail2.Enabled = false;
                checkBoxAdresOpiekuna1.Enabled = false;

                radioButtonAdres2.Checked = false;
                radioButtonAdres2.Enabled = false;
                radioButtonAdres1.Checked = true;

            }
            else
            {
                textBoxOpiekunImie2.Enabled = true;
                textBoxOpiekunNazwisko2.Enabled = true;
                textBoxOpiekunUlica2.Enabled = true;
                textBoxOpiekunNrDomu2.Enabled = true;
                textBoxOpiekunMiejscowosc2.Enabled = true;
                textBoxOpiekunKodPocztowy2.Enabled = true;
                textBoxOpiekunNrTelefonu2.Enabled = true;
                textBoxOpiekunEmail2.Enabled = true;
                checkBoxAdresOpiekuna1.Enabled = true;

                radioButtonAdres2.Enabled = true;
                radioButtonAdres1.Checked = false;
                radioButtonAdres2.Checked = false;
            }
            
        }
    }
}
