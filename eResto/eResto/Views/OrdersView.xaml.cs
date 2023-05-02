using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OrdersView : ContentPage
    {
        public OrdersView()
        {
        }

        public OrdersView(string id)
        {
            InitializeComponent();
            LabelName.Text = "Bievenue " + Preferences.Get("Username", "Guest") + ",";
            LabelOrderID.Text = id;
        }

        async void ImageButton_Clicked(object sender, EventArgs e)
        {

            await Navigation.PopModalAsync();

        }

        async void Button_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new MainTabPage());
        }
    }
}