using MediaToolkit;
using MediaToolkit.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using VideoLibrary;

namespace Tweenker.uc
{
    /// <summary>
    /// Interaktionslogik für addsong.xaml
    /// </summary>
    public partial class addsong : Window
    {
        MainWindow mw;
        public addsong(MainWindow mw1)
        {
            InitializeComponent();
            mw = mw1;
            #region Aus irgeneinem Grund nicht funktioniert (Also IsChecked = true)
            if (autoRB.IsChecked == false)
            {
                autoRB.IsChecked = true;
            }
            #endregion
        }

        #region Checked
        private void autoRB_Checked(object sender, RoutedEventArgs e)
        {
                nameTB.IsEnabled = false;
                memoTB.IsEnabled = false;
            nameTB.Clear();
            memoTB.Clear();
        }
        private void manuRB_Checked(object sender, RoutedEventArgs e)
        {
            nameTB.IsEnabled = true;
            memoTB.IsEnabled = true;
        }
        #endregion

        private void cancelB_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private async void addB_Click(object sender, RoutedEventArgs e)
        {
            //das ganze muss noch geprüft werden mit z.B. ob es ein yt link ist
            this.IsEnabled = false;
            loadingControl.IsIndeterminate = true;
            string filename = nameTB.Text + ";" + memoTB.Text;
            string link = linkTB.Text;
            if(autoRB.IsChecked == true)
            {
                YouTube yt = YouTube.Default;
                var vid = yt.GetVideo(link);
                string title = vid.Title;
                title = title.Replace("|", "_");
                title = title.Replace("[", "(");
                title = title.Replace("]", ")");
                filename = title + ";"+ "unknown";
            }
            await Task.Run(() => dwMP3(link, filename));
            mw.songList.Children.Clear();
            mw.loadSongs();
            loadingControl.IsIndeterminate = false;
            this.Close();
        }
        #region download mp3

        private void dwMP3(string VideoURL, string MP3Name)
        {
            string source = @"..\Resources\";
            var youtube = YouTube.Default;
            var vid = youtube.GetVideo(VideoURL);
            string videopath = Path.Combine(source, vid.FullName);
            File.WriteAllBytes(videopath, vid.GetBytes());

            var inputFile = new MediaFile { Filename = Path.Combine(source, vid.FullName) };
            var outputFile = new MediaFile { Filename = Path.Combine(source, $"{MP3Name}.mp3") };

            using (var engine = new Engine())
            {
                engine.GetMetadata(inputFile);
                engine.Convert(inputFile, outputFile);
            }
            File.Delete(Path.Combine(source, vid.FullName));
        }
        #endregion
    }
}
