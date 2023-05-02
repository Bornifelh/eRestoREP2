using eResto.Model;
using System;
using System.Linq;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabAccueil : ContentPage
    {


        public bool IsNullOrEmpty { get; private set; }

        public TabAccueil()
        {
            InitializeComponent();
            labelName.Text = "Bienvenue " + Preferences.Get("Username", "Invité");


        }






        async void CollectionView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Category category = e.CurrentSelection.FirstOrDefault() as Category;
            if (category == null)
                return;
            else
            {
                await Navigation.PushModalAsync(new CategoryView(category));

                ((CollectionView)sender).SelectedItem = null;
            }

        }

        private void Viewcart_Clicked(object sender, EventArgs e)
        {
            Navigation.PushModalAsync(new TabPanierPage());
        }

        private void Profile_Clicked(object sender, EventArgs e)
        {
            Navigation.PushModalAsync(new TabProfilePage());
        }

        private async void LogOut_Clicked(object sender, EventArgs e)
        {
            var action = await Application.Current.MainPage.DisplayAlert("Alert", "Voulez-vous quitter de Tchop & Ndjoka ?", "Oui", "Non");
            if (action)
            {

                Preferences.Clear();
                await Navigation.PushModalAsync(new SeConnecter());
            }
            else
            {
                App.Current.MainPage = new MainTabPage();
            }

        }

        private void CollectionMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            FoodItem selectedProduct = (FoodItem)e.CurrentSelection.FirstOrDefault();
            if (selectedProduct != null)
            {
                Navigation.PushModalAsync(new ProductDetailsView(selectedProduct));
                ((CollectionView)sender).SelectedItem = null;
            }
        }
    }
}