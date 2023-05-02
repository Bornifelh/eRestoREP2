using eResto.Model;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace eResto.Helpers
{

    public class FoodItemData
    {
        public List<FoodItem> FoodItems { get; set; }

        readonly FirebaseClient Client;
        public FoodItemData()
        {
            Client = new FirebaseClient("https://foodorderingapp-ad13e-default-rtdb.firebaseio.com/");
            FoodItems = new List<FoodItem>()
            {
                new FoodItem()
                {
                    ProductID = 2,
                    CategoryID = "1",
                    ImageUrl = "MainBurger",
                    Name = "Complet Burger et Pizza",
                    Description = "Burger - Pizza - Breakfast",
                    Rating = "4.5",
                    RatingDetail = " (121 raitings)",
                    HomeSelected = "CompleteHeart",
                    Price = 4500


                },
            };
        }

        public async Task AddFoodItemSync()
        {
            try
            {
                foreach (var item in FoodItems)
                {
                    await Client.Child("FoodItems").PostAsync(new FoodItem()
                    {
                        CategoryID = item.CategoryID,
                        ProductID = item.ProductID,
                        Description = item.Description,
                        HomeSelected = item.HomeSelected,
                        ImageUrl = item.ImageUrl,
                        Name = item.Name,
                        Price = item.Price,
                        Rating = item.Rating,
                        RatingDetail = item.RatingDetail,
                    });
                }
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Erreur", ex.Message, "OK");
            }
        }
    }
}
