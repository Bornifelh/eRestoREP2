using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AproposPage : ContentPage
    {
        public AproposPage()
        {
            InitializeComponent();
        }

        private async void Retour_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}