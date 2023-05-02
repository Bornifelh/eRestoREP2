using eResto.Model;
using MySqlConnector;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

namespace eResto.Services
{
    public class CategoryDataService
    {
        public readonly Collection<Category> ResultCat = new Collection<Category>();
        public CategoryDataService()
        {
            var connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();
        }

        public List<Category> GetCategoriesAsync()
        {
            var connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();
            var cmd = new MySqlCommand("select * from Categories", connection);
            var rd = cmd.ExecuteReader();

            var ResultCat = new ObservableCollection<Category>();
            while (rd.Read())
            {
                ResultCat.Add(new Category()
                {
                    CategoryID = rd.GetInt16("CategoryID"),
                    CategoryName = rd.GetString("CategoryName"),
                    CategoryPoster = rd.GetString("CategoryPoster"),
                    ImageUrl = rd.GetString("ImageUrl")
                });
            }
            rd.Close();

            return ResultCat.ToList();
        }

    }
}
