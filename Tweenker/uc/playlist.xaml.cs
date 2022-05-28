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
        MainWindow mw1;
        public playlist(MainWindow mw)
        {
            InitializeComponent();
            mw1 = mw;
        }

        private void SelectGrid_MouseEnter(object sender, MouseEventArgs e)
        {
            SelectGrid.Background = Brushes.Gray;
            nameL.Foreground = Brushes.White;
        }

        private void SelectGrid_MouseLeave(object sender, MouseEventArgs e)
        {
            SelectGrid.Background = Brushes.Transparent;
            nameL.Foreground = Brushes.Gray;
        }
    }
}
