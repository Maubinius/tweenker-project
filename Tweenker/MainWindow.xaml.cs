using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.OleDb;
using System.Data;
using Tweenker.klassen;
using Tweenker.uc;
using Microsoft.Win32;
using System.IO;
using System.Windows.Threading;
using WMPLib;

namespace Tweenker
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Var for AddPlaylist
        string bannerFileName = "";
        string profileFileName = "";
        #endregion
        WindowsMediaPlayer player = new WMPLib.WindowsMediaPlayer();
        DispatcherTimer timer = new DispatcherTimer();
        bool startedSong = false;
        public MainWindow()
        {
            InitializeComponent();
            DBConnection.DBCon(true);
            load();
            timer.Tick += new EventHandler(timer_tick);
            timer.IsEnabled = true;
            timer.Interval = new TimeSpan(0, 0, 1);
        }

        #region ViewSwitchButtons
        private void homeB_Click(object sender, RoutedEventArgs e)
        {
            HomeView.Visibility = Visibility.Visible;
            AddView.Visibility = Visibility.Hidden;
            ClickPlaylist.Visibility = Visibility.Hidden;
            FavView.Visibility = Visibility.Hidden;
        }
        private void addB_Click(object sender, RoutedEventArgs e)
        {
            AddView.Visibility = Visibility.Visible;
            ClickPlaylist.Visibility = Visibility.Hidden;
            HomeView.Visibility = Visibility.Hidden;
            FavView.Visibility = Visibility.Hidden;
        }
        private void favB_Click(object sender, RoutedEventArgs e)
        {
            FavView.Visibility = Visibility.Visible;
            AddView.Visibility = Visibility.Hidden;
            ClickPlaylist.Visibility = Visibility.Hidden;
            HomeView.Visibility = Visibility.Hidden; ;
        }
        #endregion
        public void clickedPlaylist(string s)
        {

        }
        private void load()
        {
            loadPlaylist();
            loadSongs();
        }

        #region Add PlayList 
        private void choosePicture_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Filter = "Image |*.png;*.jpg";
            ofd.FilterIndex = 1;
            ofd.Title = "For best Solution 512px * 512px";
            if (ofd.ShowDialog() == true)
            {
                profileFileName = ofd.FileName;
                profileImg.Source = new BitmapImage(new Uri(ofd.FileName));
            }
        }
        private void chooseBanner_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Filter = "Image |*.png;*.jpg";
            ofd.FilterIndex = 1;
            ofd.Title = "For best Solution 1080px * 720px";
            if (ofd.ShowDialog() == true)
            {
                bannerFileName = ofd.FileName;
                bannerImg.Source = new BitmapImage(new Uri(ofd.FileName));
            }
        }
        private void clearB_Click(object sender, RoutedEventArgs e)
        {
            nameTB.Clear();
            bioTB.Clear();
            bannerImg.Source = null;
            profileImg.Source = null;
            nameTB.Focus();
        }
        private void addPlaylistB_Click(object sender, RoutedEventArgs e)
        {
            #region randomString bkey/pkey
            char[] letters = "qwertzuiopasdfghjklyxcvbnm1234567890QWERTZUIOPASDFGHJKLYXCVBNM".ToCharArray();
            Random r = new Random();
            string pkey = "";
            for (int i = 0; i < 24; i++)
            {
                pkey += letters[r.Next(0, 62)].ToString();
            }

            char[] letters1 = "QWERTZUIOPASDFGHJKLYXCVBNMqwertzuiopasdfghjklyxcvbnm1234567890".ToCharArray();
            Random r1 = new Random();
            string bkey = "";
            for (int i = 0; i < 24; i++)
            {
                bkey += letters1[r1.Next(0, 62)].ToString();
            }
            #endregion

            try
            {
                OleDbCommand cmd = new OleDbCommand("INSERT INTO playlistSettings(playlistname, biotext, bannerid, picid) " +
                "VALUES ('" + nameTB.Text + "', '" + bioTB.Text + "', '" + bkey + "', '" + pkey + "')", DBConnection.con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception x)
            {
                MessageBox.Show(x.Message);
            }

        }
        #endregion
        private void addSongB_Click(object sender, RoutedEventArgs e)
        {
            addsong addsong = new addsong(this);
            addsong.ShowDialog();
        }
        private void loadPlaylist()
        {
            playlistList.Children.Clear();
            DataTable d = DBConnection.con.GetSchema("Tables");
            foreach (DataRow row in d.Rows)
            {
                string temp = row[2].ToString();
                if (temp == "MSysAccessStorage" || temp == "MSysACEs" ||
                    temp == "MSysComplexColumns" || temp == "MSysNameMap" ||
                    temp == "MSysNavPaneGroupCategories" || temp == "MSysNavPaneGroups" ||
                    temp == "MSysNavPaneGroupToObjects" || temp == "MSysNavPaneObjectIDs" ||
                    temp == "MSysObjects" || temp == "MSysQueries" || temp == "MSysRelationships" ||
                    temp == "MSysResources" | temp == "playlistSettings")
                {

                }
                else
                {
                    playlist s = new playlist(this);
                    s.nameL.Text = temp;
                    playlistList.Children.Add(s);
                }
            }
        }
        public void loadSongs()
        {
            int id = 1;
            var files = Directory.GetFiles(@"..\Resources\", "*").OrderByDescending(d => new FileInfo(d).CreationTime);
            foreach (string file in files)
            {
                WindowsMediaPlayer wmp = new WindowsMediaPlayer();
                string getInfo = System.IO.Path.GetFullPath(file);
                IWMPMedia mi = wmp.newMedia(getInfo);
                string lengthV = mi.durationString;

                string filename = System.IO.Path.GetFileName(file);
                filename = filename.Replace(".mp3", "");
                string memoV = filename.Substring(filename.LastIndexOf(';') + 1);
                filename = filename.Replace(memoV, "");
                string titleV = filename.Remove(filename.Length - 1);

                song s = new song(this);
                s.titleL.Text = titleV;
                s.memoL.Text = memoV;
                s.lengthL.Text = lengthV;
                s.id = id;
                id++;
                songList.Children.Add(s);
            }
        }
        private void timer_tick(object sender, EventArgs e)
        {
            if (player.playState == WMPLib.WMPPlayState.wmppsPlaying)
            {
                mainSlider.Maximum = (int)player.controls.currentItem.duration;
                mainSlider.Value = (int)player.controls.currentPosition;
            }

            if (startedSong)
            {
                try
                {
                    startTime.Content = player.controls.currentPositionString;
                    endTime.Content = player.controls.currentItem.durationString;
                }
                catch (Exception x)
                {
                    MessageBox.Show(x.Message);
                }
            }
        }
        public void playSong(int id)
        {
            foreach (song c in songList.Children)
            {
                if (id == c.id)
                {
                    string songname = c.titleL.Text;
                    string memo = c.memoL.Text;
                    string url = @"..\Resources\" + songname + ";" + memo + ".mp3";
                    string filename = System.IO.Path.GetFullPath(url);
                    player.URL = filename;
                    player.controls.play();
                    songName.Text = songname;
                    songMemo.Text = memo;
                    playSongB.IsChecked = true;
                    selectSong(id);
                    return;
                }
            }
        }
        public void stopSong()
        {
            player.controls.stop();
        }
        private void playSongB_Checked(object sender, RoutedEventArgs e)
        {
            if (checkSongplay())
            {
                MessageBox.Show("Play a Song");
            }
            else
            {
                playSongB.Content = new MaterialDesignThemes.Wpf.PackIcon { Kind = MaterialDesignThemes.Wpf.PackIconKind.PauseCircleOutline, Height = 37, Width = 37 };
                player.controls.play();
                startedSong = true;
            }
        }
        private void playSongB_Unchecked(object sender, RoutedEventArgs e)
        {
            if (checkSongplay())
            {
                MessageBox.Show("Play a Song");
            }
            else
            {
                playSongB.Content = new MaterialDesignThemes.Wpf.PackIcon { Kind = MaterialDesignThemes.Wpf.PackIconKind.PlayCircleOutline, Height = 37, Width = 37 };
                player.controls.pause();
                startedSong = false;
            }
        }
        private void soundSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            player.settings.volume = (int)soundSlider.Value;
        }
        private void mainSlider_MouseDown(object sender, MouseButtonEventArgs e)
        {
            double MousePosition = e.GetPosition(mainSlider).X;
            double x = SetProgressBarValue(MousePosition);
            player.controls.currentPosition = x;
        }
        public void selectSong(int id)
        {
            foreach (song c in songList.Children)
            {
                if (c.id == id)
                {
                    c.Background = (SolidColorBrush)new BrushConverter().ConvertFromString("#4a4a4a");
                }
                else
                {
                    c.Background = Brushes.Transparent;
                }
            }
        }
        public void selectPlaylist(string name)
        {
            foreach (playlist c in playlistList.Children)
            {
                if (c.nameL.Text == name)
                {
                    c.Background = (SolidColorBrush)new BrushConverter().ConvertFromString("#4a4a4a");
                }
                else
                {
                    c.Background = Brushes.Transparent;
                }
            }
        }
        private void mainSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (mainSlider.Value >= mainSlider.Maximum - 1)
            {
                if (repeatSongB.IsChecked == false && randomSongB.IsChecked == false)
                {
                    nextSong();
                }

                if (randomSongB.IsChecked == true)
                {
                    randomSong();
                }

                if (repeatSongB.IsChecked == true)
                {
                    repeatSong();
                }
            }
        }
        private bool checkSongplay()
        {
            if (songName.Text == "Your Song" && songMemo.Text == "Your Memo")
                return true;
            else
                return false;
        }

        #region next song 
        private void nextSong()
        {
            foreach (song c in songList.Children)
            {
                if (songName.Text == c.titleL.Text && songMemo.Text == c.memoL.Text)
                {
                    playSong(c.id + 1);
                    return;
                }
            }
        }
        private void nextSongB_Click(object sender, RoutedEventArgs e)
        {
            if (checkSongplay())
            {
                MessageBox.Show("Play a Song");
            }
            else
            {
                if (randomSongB.IsChecked == true)
                    randomSong();
                else
                    nextSong();
            }
        }
        #endregion

        #region previous song
        private void previousSongB_Click(object sender, RoutedEventArgs e)
        {
            if (mainSlider.Value <= 5)
                previousSong();
            else
                repeatSong();
        }
        private void previousSong()
        {
            if (checkSongplay())
            {
                MessageBox.Show("Play a Song");
            }
            else
            {
                foreach (song c in songList.Children)
                {
                    int id = c.id - 1;
                    if (songName.Text == c.titleL.Text && songMemo.Text == c.memoL.Text)
                    {
                        foreach (song c1 in songList.Children)
                        {
                            if (id == c1.id)
                            {
                                playSong(c1.id);
                                return;
                            }
                        }
                    }
                }
            }
        }

        #endregion

        #region repeat song
        private void repeatSongB_Checked(object sender, RoutedEventArgs e)
        {
            repeatSongB.Foreground = (SolidColorBrush)new BrushConverter().ConvertFromString("#368ab9");
            randomSongB.IsChecked = false;
        }
        private void repeatSong()
        {
            foreach (song c in songList.Children)
            {
                if (songName.Text == c.titleL.Text && songMemo.Text == c.memoL.Text)
                {
                    playSong(c.id);
                }
            }
        }
        private void repeatSongB_Unchecked(object sender, RoutedEventArgs e)
        {
            repeatSongB.Foreground = (SolidColorBrush)new BrushConverter().ConvertFromString("#616161");
        }
        #endregion

        #region random song
        private void randomSongB_Checked(object sender, RoutedEventArgs e)
        {
            randomSongB.Foreground = (SolidColorBrush)new BrushConverter().ConvertFromString("#368ab9");
            repeatSongB.IsChecked = false;
        }
        private void randomSong()
        {
            int v = 1;
            for (int i = 0; i < songList.Children.Count - 1; i++)
            {
                v++;
            }
            Random rnd = new Random();
            v = rnd.Next(1, v);
            foreach (song c in songList.Children)
            {
                if (c.id == v)
                {
                    playSong(c.id);
                    return;
                }
            }
        }
        private void randomSongB_Unchecked(object sender, RoutedEventArgs e)
        {
            randomSongB.Foreground = (SolidColorBrush)new BrushConverter().ConvertFromString("#616161");
        }
        #endregion

        #region Functions
        private double SetProgressBarValue(double MousePosition)
        {
            double ratio = MousePosition / mainSlider.ActualWidth;
            double ProgressBarValue = ratio * mainSlider.Maximum;
            return ProgressBarValue;
        }
        #endregion
    }
}



// Merkliste
// Bei add playlist keine doppelten
// duration richtig einstellen