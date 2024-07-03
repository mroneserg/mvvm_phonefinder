using System.Windows;
using System.Windows.Controls;
using mvvm_phonefinder.ViewModel;

namespace mvvm_phonefinder
{
    /// <summary>
    /// Логика взаимодействия для StreetWindow.xaml
    /// </summary>
    /// 
    public partial class StreetWindow : Window
    {
        public static DataGrid Street;
        public StreetWindow()
        {
            InitializeComponent();
            DataContext = new MainViewModel();
        }
    }
}
