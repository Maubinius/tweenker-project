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
using MaterialDesignThemes.Wpf;

namespace Tweenker.uc
{
    /// <summary>
    /// Interaktionslogik für song.xaml
    /// </summary>
    public partial class song : UserControl
    {
        MainWindow mw;
        public song(MainWindow mw1)
        {
            InitializeComponent();
            mw = mw1;
        }
        public int id { get; set; }

        private void MainConainter_MouseEnter(object sender, MouseEventArgs e)
        {
            MainConainter.Background = (SolidColorBrush)new BrushConverter().ConvertFromString("#636363");
        }
        private void MainConainter_MouseLeave(object sender, MouseEventArgs e)
        {
            MainConainter.Background = Brushes.Transparent;
        }
        private void MainConainter_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            mw.selectSong(this.id);
            mw.playSong(this.id);
        }

        private void MainConainter_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.ChangedButton == MouseButton.Right)
            {
                
            }
            e.Handled = true;
        }
    }
}
