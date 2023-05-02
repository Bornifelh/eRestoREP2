using eResto.Views;
using System;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Model
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SeConnecter : ContentPage
    {
        public SeConnecter()
        {
            InitializeComponent();


        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Task task = Navigation.PushModalAsync(new NouveauCompte());
        }

        public static implicit operator SeConnecter(MainTabPage v)
        {
            throw new NotImplementedException();
        }
    }
}