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

namespace Tweenker.uc
{
    /// <summary>
    /// Interaktionslogik für playlist.xaml
    /// </summary>
    public partial class playlist : UserControl
    {
        MainWindow mw;
        public playlist(MainWindow mw1)
        {
            InitializeComponent();
            mw = mw1;
        }
        private void SelectGrid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            mw.selectPlaylist(this.nameL.Text);
            mw.clickedPlaylist(this.nameL.Text);
        }
    }
}
