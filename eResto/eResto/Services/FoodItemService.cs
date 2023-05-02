using eResto.Model;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;

namespace eResto.Services
{
    public class FoodItemService
    {
        public MySqlConnection connection;

        public FoodItemService()
        {
            connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();
        }

        public async Task<ObservableCollection<FoodItem>> GetFoodItemsByCategoryAsync(string CategoryID)
        {
            var cmd = new MySqlCommand("SELECT * FROM publication WHERE CategoryID = @CategoryId", connection);
            cmd.Parameters.AddWithValue("@CategoryId", CategoryID);

            using (var rd = await cmd.ExecuteReaderAsync())
            {

                var foodItemsByCategory = new ObservableCollection<FoodItem>();
                while (rd.Read())
                {
                    foodItemsByCategory.Add(new FoodItem()
                    {
                        CategoryID = rd.GetString("CategoryID"),
                        Description = rd.GetString("Description"),
                        ImageUrl = rd.GetString("ImageUrl"),
                        Name = rd.GetString("name"),
                        Price = Convert.ToDecimal(rd["price"]),
                        ProductID = rd.GetInt16("id"),
                        Rating = rd.GetString("Rating"),
                        RatingDetail = rd.GetString("RatingDetails")
                    });
                }
                rd.Close();

                return foodItemsByCategory;
            }
        }

        public List<FoodItem> GetLatestFoodItems()
        {
            var cmd = new MySqlCommand("SELECT * FROM publication", connection);
            var rd = cmd.ExecuteReader();

            var result = new ObservableCollection<FoodItem>();
            while (rd.Read())
            {
                result.Add(new FoodItem()
                {
                    Description = rd.GetString("Description"),
                    ImageUrl = rd.GetString("ImageUrl"),
                    Name = rd.GetString("name"),
                    Price = Convert.ToDecimal(rd["price"]),
                    ProductID = rd.GetInt32("id"),
                    Rating = rd.GetString("Rating"),
                    RatingDetail = rd.GetString("RatingDetails")
                });
            }
            rd.Close();

            return result.ToList();
        }
    }
}
