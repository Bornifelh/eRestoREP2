using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TransactionsPage : ContentPage
    {
        public TransactionsPage()
        {
            InitializeComponent();
        }



        private async void retour_Clicked_1(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}