using mvvm_phonefinder.Model;
using MySql.Data.MySqlClient;
using System.Collections.ObjectModel;
using System.ComponentModel;
using Dapper;
namespace mvvm_phonefinder.ViewModel
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private ObservableCollection<Abonent> _abonents;
        public ObservableCollection<Abonent> Abonents
        {
            get { return _abonents; }
            set
            {
                _abonents = value;
                OnPropertyChanged(nameof(Abonents));
            }
        }
        private ObservableCollection<Street> _streets;
        public ObservableCollection<Street> Streets
        {
            get { return _streets; }
            set
            {
                _streets = value;
                OnPropertyChanged(nameof(Streets));
            }
        }
        //public ICommand SearchCommand { get; }
        //public ICommand ExportCsvCommand { get; }
        //public ICommand StreetsCommand { get; }

        public MainViewModel()
        {
            
            //SearchCommand = new RelayCommand(Search);
            //ExportCsvCommand = new RelayCommand(ExportCsv);
            //StreetsCommand = new RelayCommand(ShowStreets);

            
            LoadAbonents();
            LoadStreets();
        }
        public void LoadAbonents()
        {
            
            using (var connection = new MySqlConnection("Server = localhost; Database = phonefinder; Uid = root; Pwd =;"))
            {
                Abonents = new ObservableCollection<Abonent>(
                    connection.Query<Abonent>("SELECT abonent.name, abonent.familia, abonent.otchestvo, adrees.street, adrees.house, adrees.kvartira, phoneNumber.mobile, phoneNumber.home_number, phoneNumber.work_number from abonent INNER JOIN adrees on adrees.abonentID = abonent.ID INNER JOIN phoneNumber on abonent.ID = phoneNumber.abonentID;"));
            }
        }
        public void LoadStreets()
        {
            
            using (var connection = new MySqlConnection("Server = localhost; Database = phonefinder; Uid = root; Pwd =;"))
            {
                Streets = new ObservableCollection<Street>(
                    connection.Query<Street>("SELECT * FROM Streets"));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
