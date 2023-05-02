using eResto.Helpers;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SettingPage : ContentPage
    {
        public SettingPage()
        {
            InitializeComponent();
        }

        async void ButtonCategories_Clicked(object sender, EventArgs e)
        {

            var acd = new AjoutDonnéesCategory();
            await acd.AddCategoryAsync();

        }

        async void ButtonProducts_Clicked(object sender, EventArgs e)
        {
            var afd = new FoodItemData();
            await afd.AddFoodItemSync();
        }
    }
}