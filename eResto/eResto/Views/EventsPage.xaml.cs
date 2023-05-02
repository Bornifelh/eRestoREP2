using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EventsPage : ContentPage
    {

        public EventsPage()
        {
            InitializeComponent();

            // string videoId = "FxWNws3X0qM"; // Remplacez par l'ID de la vidéo YouTube
            //string videoUrl = string.Format("https://www.youtube.com/watch?v={0}", videoId);
            webView.Source = "https://www.facebook.com/people/Restaurant-Carr%C3%A9-dAs/100072379642229/?paipv=0&eav=Afbg7X64P8VVZ7wMVywaaVEIGvJRjjhGkZI4YpS4wooFWiEMcQqbpbNi8XBy8aCDcZY&_rdr"; //videoUrl;


        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            if (webView.CanGoBack)
            {
                webView.GoBack();
            }
        }
    }
}