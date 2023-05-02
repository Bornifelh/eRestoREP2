using eResto.Model;
using SQLite;
using System.IO;
using Xamarin.Forms;
using Environment = System.Environment;

[assembly: Dependency(typeof(eResto.Droid.SQLite_Android))]
namespace eResto.Droid
{
    public class SQLite_Android : ISQLite
    {
        public SQLiteConnection GetConnection()
        {
            var sqliteFileName = "MyDatabase.db3";
            string documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            var path = Path.Combine(documentsPath, sqliteFileName);
            var cn = new SQLiteConnection(path);
            return cn;
        }
    }
}