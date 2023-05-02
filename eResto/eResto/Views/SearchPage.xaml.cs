using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SearchPage : ContentPage
    {
        public SearchPage()
        {
            InitializeComponent();
        }

        //async void SearchCollectionView_SelectionChanged(System.Object sender, Xamarin.Forms.SelectionChangedEventArgs e)
        //  {
        //   var selectedProduct = e.CurrentSelection.FirstOrDefault() as FoodItem;
        //   if (selectedProduct == null)
        //   await Navigation.PushModalAsync(new ProductDetailsView(selectedProduct));
        //  ((CollectionView)sender).SelectedItem = null;
        // }
    }
}