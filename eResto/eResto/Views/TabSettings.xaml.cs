using eResto.Helpers;
using eRestoREP2.Views;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabSettings : ContentPage
    {
        public TabSettings()
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

        private void ButtonCart_Clicked(object sender, EventArgs e)
        {
            var cct = new CreateCartTable();
            if (cct.CreateTable())
                DisplayAlert("Succés", "Panier mis en service", "OK");

            else
                DisplayAlert("Erreur", "Erreur de créer la table", "OK");
        }



        private async void ButtonApropos_Clicked(object sender, EventArgs e)
        {
            await Application.Current.MainPage.DisplayAlert("A propos", "Tchop & Ndjoka ," +
                "Version : 1.0.0.1 Beta,   "
                + "Developpé par : BIS Gabon", "OK");
        }



        private async void Transactions_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new TransactionsPage());
        }

        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new TabPanierPage());
        }

        private async void SupportTech_Clicked(object sender, EventArgs e)
        {
            await Application.Current.MainPage.DisplayAlert("Support technique", "Tchop & Ndjoka ," +
                "Version : 1.0.0.1 Beta,   "
                + "Appeler le +241 062260717" + " http://tchop-et-njoka.com/", "OK");
        }

        private async void Profile_Clicked(object sender, EventArgs e)
        {
            await Application.Current.MainPage.DisplayAlert("Profile", Preferences.Get("Username", "Invité"), "OK");
        }

        private async void Privacy_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new PrivacyPage());
        }
    }
}