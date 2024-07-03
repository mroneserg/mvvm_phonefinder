using System.Collections.Generic;
using MySql.Data.MySqlClient;
using Dapper;

namespace mvvm_phonefinder.Model.DB
{
    public class DB
    {
        private readonly string connectionString;

        public DB(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IEnumerable<Abonent> GetAbonents()
        {
            using (var connection = new MySqlConnection(connectionString))
            {
                return connection.Query<Abonent>("SELECT abonent.name, abonent.familia, abonent.otchestvo, adrees.street, adrees.house, adrees.kvartira, phoneNumber.mobile, phoneNumber.home_number, phoneNumber.work_number from abonent INNER JOIN adrees on adrees.abonentID = abonent.ID INNER JOIN phoneNumber on abonent.ID = phoneNumber.abonentID;");
            }
        }
        public IEnumerable<Street> GetStreets()
        {
            using (var connection = new MySqlConnection(connectionString))
            {
                return connection.Query<Street>("SELECT * FROM Streets");
            }
        }
    }
}
