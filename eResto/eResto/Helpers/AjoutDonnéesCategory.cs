using eResto.Model;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Application = Xamarin.Forms.Application;

namespace eResto.Helpers
{
    public class AjoutDonnéesCategory
    {
        public List<Category> Categories { get; set; }

        readonly FirebaseClient client;
        public AjoutDonnéesCategory()
        {
            client = new FirebaseClient("https://foodorderingapp-ad13e-default-rtdb.firebaseio.com/");

            Categories = new List<Category>()
                {
                new Category()
             {
                    CategoryID = 1,
                    CategoryName = "Boisson",
                    CategoryPoster="MainBoisson",
                    ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkTPPAoS6SaLheeXPNHWW52TTI7rOFp4wRXpyfCtBLpjjHaYQ_rv6FQzdDqkf01kBIQEo&usqp=CAU "

                }

            };
        }

        public async Task AddCategoryAsync()
        {
            try
            {
                foreach (var category in Categories)
                {
                    await client.Child("Categories").PostAsync(new Category()
                    {
                        CategoryID = category.CategoryID,
                        CategoryName = category.CategoryName,
                        CategoryPoster = category.CategoryPoster,
                        ImageUrl = category.ImageUrl
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
