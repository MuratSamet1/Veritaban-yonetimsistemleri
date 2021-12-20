using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace postgresqlbasketbolprojesi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        NpgsqlConnection baglanti = new NpgsqlConnection("server=localHost; port=5432; Database=basketboltakimidatabase; user ID=postgres;password=murat630");


        private void button5_Click(object sender, EventArgs e)
        {
            string sorgu = "Select* from public.\"Takim\" ";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }



        private  void button1_Click(object sender, EventArgs e) 
        {
            baglanti.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("insert into public.\"Takim\"(oyuncuno , oyuncuad ,oyuncusoyad,kaptan,oyuncumaaslari) values (@p1,@p2,@p3,@p4,@p5)" , baglanti);
            komut1.Parameters.AddWithValue("@p1" , int.Parse(textBox3.Text));
            komut1.Parameters.AddWithValue("@p2" , textBox1.Text);
            komut1.Parameters.AddWithValue("@p3" , textBox2.Text);
            komut1.Parameters.AddWithValue("@p4",textBox4.Text );
            komut1.Parameters.AddWithValue("@p5", int.Parse(textBox5.Text));
            komut1.ExecuteNonQuery();  
            baglanti.Close();
            MessageBox.Show(" kaydı başarıyla oluşturuldu", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut2 = new NpgsqlCommand("Delete from public.\"Takim\" where oyuncuno=@p1",baglanti);
            komut2.Parameters.AddWithValue("@p1", int.Parse(textBox3.Text));
            komut2.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show(" silme islemi basari bir sekilde gerceklesti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update public.\"Takim\" set \"oyuncuad\"=@p2, \"oyuncusoyad\"=@p3, \"kaptan\"=@p4, \"oyuncumaaslari\"=@p5 where \"oyuncuno\"=@p1", baglanti);
            komut3.Parameters.AddWithValue("@p1", int.Parse(textBox3.Text));
            komut3.Parameters.AddWithValue("@p2", textBox1.Text);
            komut3.Parameters.AddWithValue("@p3", textBox2.Text);
            komut3.Parameters.AddWithValue("@p4", textBox4.Text);
            komut3.Parameters.AddWithValue("@p5", int.Parse(textBox5.Text));
            komut3.ExecuteNonQuery();
            MessageBox.Show(" güncelleme işlemi başarılı oldu", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            baglanti.Close();



        }

        private void button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            string sorgu = "select * from public.\"Takim\" where \"oyuncuad\" LIKE '%" + textBox1.Text + "%'";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            baglanti.Close();

        }
    }
}
