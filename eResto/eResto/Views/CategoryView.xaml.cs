using eResto.Model;
using eResto.ViewModels;
using System;
using System.Linq;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CategoryView : ContentPage
    {

        CategoryViewModel Cvm { get; set; }

        public CategoryView(Category category)
        {
            InitializeComponent();
            Cvm = new CategoryViewModel(category);
            this.BindingContext = Cvm;
        }

        async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        async void CollectionView_SelectionChanged(System.Object sender, Xamarin.Forms.SelectionChangedEventArgs e)
        {
            var selectedProduct = e.CurrentSelection.FirstOrDefault() as FoodItem;
            if (selectedProduct == null)
                return;
            await Navigation.PushModalAsync(new ProductDetailsView(selectedProduct));
            ((CollectionView)sender).SelectedItem = null;
        }
    }
}