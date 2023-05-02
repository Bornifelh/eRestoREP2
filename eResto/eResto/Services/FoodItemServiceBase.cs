using eResto.Model;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace eResto.Services
{
    public class FoodItemServiceBase
    {

        public void GetFoodItemsAsync()
        {
            var connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();

            var cmd = new MySqlCommand("select * from publication", connection);
            var rd = cmd.ExecuteReader();
            var products = new List<FoodItem>();
            while (rd.Read())
            {

                products.Add(new FoodItem()

                {
                    CategoryID = rd.GetString("name"),
                    Description = rd.GetString("name").ToString(),
                    HomeSelected = rd.GetString("name").ToString(),
                    ImageUrl = rd.GetString("name").ToString(),
                    Name = rd.GetString("name").ToString(),
                    Price = rd.GetDecimal("Name"),
                    ProductID = rd.GetInt16("Name"),
                    Rating = rd.GetString("Name").ToString(),
                    RatingDetail = rd.GetString("Name").ToString()
                });
            }
            rd.Close();
        }
        public void ObservableCollectionByCategory(string CategoryID)
        {
            var connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();

            var cmd = new MySqlCommand("select * from publication were CategoryID like '" + CategoryID + "'", connection);
            var rd = cmd.ExecuteReader();

            var FoodItemsByCategory = new ObservableCollection<FoodItem>();
            while (rd.Read())
            {

                FoodItemsByCategory.Add(new FoodItem()
                {
                    CategoryID = rd.GetString("name"),
                    Description = rd.GetString("Name").ToString(),
                    HomeSelected = rd.GetString("Name").ToString(),
                    ImageUrl = rd.GetString("Name").ToString(),
                    Name = rd.GetString("Name").ToString(),
                    Price = rd.GetDecimal("Name"),
                    ProductID = rd.GetInt16("Name"),
                    Rating = rd.GetString("Name").ToString(),
                    RatingDetail = rd.GetString("Name").ToString()
                });
            }
            rd.Close();



        }


        public void TGetLatestFoodItemsAsync(string ProductID)
        {
            var connection = new MySqlConnection("Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;");
            connection.Open();

            var cmd = new MySqlCommand("select * from publication were ProductID like '" + ProductID + "'", connection);
            var rd = cmd.ExecuteReader();

            var latestFoodItems = new ObservableCollection<FoodItem>();
            while (rd.Read())
            {
                latestFoodItems.Add(new FoodItem()
                {
                    CategoryID = rd.GetString("name"),
                    Description = rd.GetString("Name").ToString(),
                    HomeSelected = rd.GetString("Name").ToString(),
                    ImageUrl = rd.GetString("Name").ToString(),
                    Name = rd.GetString("Name").ToString(),
                    Price = rd.GetDecimal("Name"),
                    ProductID = rd.GetInt16("Name"),
                    Rating = rd.GetString("Name").ToString(),
                    RatingDetail = rd.GetString("Name").ToString()
                });
            }
            rd.Close();
        }
    }
}