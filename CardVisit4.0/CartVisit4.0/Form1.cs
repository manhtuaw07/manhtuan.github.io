using MessagingToolkit.QRCode.Codec.Data;
using QRCoder;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AForge.Video;
using AForge.Video.DirectShow;
using ZXing;
using ZXing.QrCode;
using ZXing.Common;
using System.Resources;
using CartVisit4._0.Properties;

namespace CartVisit4._0
{
    public partial class Form1 : Form
    {
        FilterInfoCollection filterInforCollection;
        VideoCaptureDevice captureDevice = null;
        public Bitmap bm = null;
        public Form1()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox6_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox6_DragOver(object sender, DragEventArgs e)
        {
            
        }

        private void Form1_MouseHover(object sender, EventArgs e)
        {
            

        }

        private void pictureBox6_MouseLeave(object sender, EventArgs e)
        {
            
        }

        private void pictureBox7_Click(object sender, EventArgs e)
        {
            string txtqr = txtfb.Text + "#" + txtinsta.Text + "#" + txtgmail.Text + "#" + txtphone.Text;
            BarcodeWriter qrwt = new BarcodeWriter
            {
                Format = BarcodeFormat.QR_CODE,
                Options = new EncodingOptions
                {
                    Width = 490,
                    Height = 490,
                  
                }
            };
            bm = qrwt.Write(txtqr);
            pictureBox4.Image = bm;
        }

        private void pictureBox8_Click(object sender, EventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog()
            {
                Filter = "JPEG|*.jpg|PNG|*.png|TGA|*tga|BMP|*bmp",
                ValidateNames = true
            };
            if (op.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    pictureBox4.Image = Image.FromFile(op.FileName);
                    BarcodeReader barcode = new BarcodeReader();
                    Result rs = barcode.Decode((Bitmap)pictureBox4.Image);
                    string qrtext = rs.ToString();
                    string[] splitStr = new string[4] { "", "", "", "" };
                    splitStr = qrtext.Split('#');
                    txtfb.Text = splitStr[0];
                    txtinsta.Text = splitStr[1];
                    txtgmail.Text = splitStr[2];
                    txtphone.Text = splitStr[3];
                }
                catch (Exception)
                {

                    MessageBox.Show("Mời bạn nhập đúng mã QR code","Sai mã");
                }
               
            }
        }

        private void pictureBox6_Click_1(object sender, EventArgs e)
        {
            SaveFileDialog sd = new SaveFileDialog()
            {
                Filter = "JPEG|*.jpg",
                ValidateNames = true
            };
            if (sd.ShowDialog() == DialogResult.OK)
            {
                bm.Save(sd.FileName);
            }
           

        }

        public static PictureBox resizeImage(PictureBox imgToResize, Size size)
        {
           
            imgToResize.Width = size.Width;
            imgToResize.Height = size.Height;
            return imgToResize;
        }

        private void pictureBox11_MouseHover(object sender, EventArgs e)
        {
            //label5.Visible = true;
            //pictureBox11 = resizeImage(pictureBox11, new Size(53, 47));
        }

        private void pictureBox11_MouseLeave(object sender, EventArgs e)
        {
            label5.Visible = false;
            //pictureBox11 = resizeImage(pictureBox11, new Size(46, 40));
        }

        private void pictureBox8_MouseHover(object sender, EventArgs e)
        {
            
        }

        private void pictureBox8_MouseLeave(object sender, EventArgs e)
        {
            label7.Visible = false;
            //pictureBox8 = resizeImage(pictureBox8, new Size(46, 40));
        }

        private void pictureBox6_MouseHover(object sender, EventArgs e)
        {
           
        }

        private void pictureBox6_MouseLeave_1(object sender, EventArgs e)
        {
            label8.Visible = false;
            //pictureBox6 = resizeImage(pictureBox6, new Size(46, 40));
        }

        private void pictureBox7_MouseHover(object sender, EventArgs e)
        {
            
        }

        private void pictureBox7_MouseLeave(object sender, EventArgs e)
        {
            label9.Visible = false;
            //pictureBox7 = resizeImage(pictureBox7, new Size(46, 40));
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            pictureBox4.Focus();
            filterInforCollection = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            
        }
        private void CapturDevice_NewFrame(object sender, NewFrameEventArgs e)
        {
            pictureBox4.Image = (Bitmap)e.Frame.Clone();
        }
        private void pictureBox11_Click(object sender, EventArgs e)
        {
            if (pictureBox4.Image != null)
            {
                pictureBox4.Image = null;
            }
            if (captureDevice != null && captureDevice.IsRunning)
            {
                captureDevice.Stop();
                timer1.Stop();
                pictureBox4.Image = Properties.Resources.Untitled2;
            }
            else 
            {
                captureDevice = new VideoCaptureDevice(filterInforCollection[0].MonikerString);
                captureDevice.NewFrame += CapturDevice_NewFrame;
                captureDevice.Start();
                timer1.Start();
            }
          
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            string qrtext = "";
            try
            {
                if (pictureBox4.Image != null)
                {
                    BarcodeReader barcode = new BarcodeReader();
                    Result rs = barcode.Decode((Bitmap)pictureBox4.Image);
                    if (rs != null)
                    {
                        qrtext = rs.ToString();
                        string[] splitStr = qrtext.Split('#');
                        txtfb.Text = splitStr[0];
                        txtinsta.Text = splitStr[1];
                        txtgmail.Text = splitStr[2];
                        txtphone.Text = splitStr[3];
                        timer1.Stop();
                        if (captureDevice.IsRunning)
                        {
                            captureDevice.Stop();
                        }

                    }
                   
                }
            }
            catch (Exception)
            {

            }
        }

        private void label1_Click(object sender, EventArgs e)
        {
           
            pictureBox4.Image = Properties.Resources.Untitled2;
            txtfb.Text = "";
            txtgmail.Text = "";
            txtinsta.Text = "";
            txtphone.Text = "";
        }

        private void txtfb_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void txtinsta_Click(object sender, EventArgs e)
        {
           
        }

        private void txtfb_DoubleClick(object sender, EventArgs e)
        {
           
            if (txtfb.Text != "")
            {
                System.Diagnostics.Process.Start(txtfb.Text);
            }
          
        }

        private void txtinsta_DoubleClick(object sender, EventArgs e)
        {
            if (txtinsta.Text != "")
            {
                System.Diagnostics.Process.Start(txtinsta.Text);
            }
           
        }

        private void pictureBox11_MouseMove(object sender, MouseEventArgs e)
        {
            label5.Visible = true;
            //pictureBox11 = resizeImage(pictureBox11, new Size(53, 47));
        }

        private void pictureBox8_MouseMove(object sender, MouseEventArgs e)
        {
            label7.Visible = true;
            //pictureBox8 = resizeImage(pictureBox8, new Size(53, 47));
        }

        private void pictureBox6_MouseMove_1(object sender, MouseEventArgs e)
        {
            label8.Visible = true;
            //pictureBox6 = resizeImage(pictureBox6, new Size(53, 47));
        }

        private void pictureBox7_MouseMove(object sender, MouseEventArgs e)
        {
            label9.Visible = true;
            //pictureBox7 = resizeImage(pictureBox7, new Size(53, 47));
        }

        private void txtfb_Click(object sender, EventArgs e)
        {
            
        }

        private void txtgmail_Click(object sender, EventArgs e)
        {
           
        }

        private void txtphone_Click(object sender, EventArgs e)
        {
           
        }

        private void pictureBox10_Click(object sender, EventArgs e)
        {
            if(captureDevice != null)
                captureDevice.Stop();
            Application.Exit();
        }

        private void txtfb_DoubleClick_1(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (txtfb.Text != "")
            {
                System.Diagnostics.Process.Start(txtfb.Text);
            }
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            if (txtinsta.Text != "")
            {
                System.Diagnostics.Process.Start(txtinsta.Text);
            }
        }

        private void pictureBox1_MouseLeave(object sender, EventArgs e)
        {
            //pictureBox1 = resizeImage(pictureBox1, new Size(75, 50));
        }

        private void pictureBox1_MouseMove(object sender, MouseEventArgs e)
        {
            //pictureBox1 = resizeImage(pictureBox1, new Size(80, 55));
        }

        private void pictureBox2_MouseLeave(object sender, EventArgs e)
        {
            //pictureBox2 = resizeImage(pictureBox2, new Size(75, 50));
        }

        private void pictureBox2_MouseMove(object sender, MouseEventArgs e)
        {
            //pictureBox2 = resizeImage(pictureBox2, new Size(80, 55));
        }

        private void pictureBox3_MouseLeave(object sender, EventArgs e)
        {
            //pictureBox3 = resizeImage(pictureBox3, new Size(75, 50));
        }

        private void pictureBox3_MouseMove(object sender, MouseEventArgs e)
        {
            //pictureBox3 = resizeImage(pictureBox3, new Size(80, 55));
        }

        private void pictureBox5_MouseLeave(object sender, EventArgs e)
        {
            //pictureBox5 = resizeImage(pictureBox5, new Size(75, 50));
        }

        private void pictureBox5_MouseMove(object sender, MouseEventArgs e)
        {
            //pictureBox5 = resizeImage(pictureBox5, new Size(80, 55));
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            if (txtgmail.Text != "")
            {
                System.Diagnostics.Process.Start("https://gmail.com");
            }
        }

        private void pictureBox12_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
    }
}
