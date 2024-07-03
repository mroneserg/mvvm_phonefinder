using System.Windows;
using System.Windows.Controls;
using mvvm_phonefinder.ViewModel;


namespace mvvm_phonefinder
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static DataGrid Abonents;
        public MainWindow()
        {
            InitializeComponent();
            DataContext = new MainViewModel();
            
        }

        private void street_Click(object sender, RoutedEventArgs e)
        {
            StreetWindow modalWindow = new StreetWindow();
            bool? result = modalWindow.ShowDialog();

            // Обработка результата (если требуется)
            if (result == true)
            {
                // Действия после закрытия модального окна
            }
        }
    } 
}
