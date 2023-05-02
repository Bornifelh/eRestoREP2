using eResto.Model;
using System;
using System.Linq;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProductDetailsView : ContentPage
    {
        private int _TotalQuantity;
        public int TotalQuantity
        {
            set
            {
                this._TotalQuantity = value;
                if (this._TotalQuantity < 0)
                    this._TotalQuantity = 0;
                OnPropertyChanged();

            }

            get
            {
                return _TotalQuantity;
            }
        }


        public Command AddToCartCommand { get; set; }
        public Command ViewCartCommand { get; set; }
        public Command HomeCommand { get; set; }

        private readonly FoodItem foodItem;
        // ProductDetailsViewModel pvm;
        public ProductDetailsView(FoodItem foodItem)
        {
            InitializeComponent();
            //pvm = new ProductDetailsViewModel();
            //this.BindingContext = pvm;
            BindingContext = this.foodItem = foodItem;
            CelluceSaisie.Text = "1";

        }




        async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void AddCart_Clicked(object sender, EventArgs e)
        {
            var action = await Application.Current.MainPage.DisplayAlert("Ajout au panier", "Voulez-vous ajouter cet article au panier ?", "Oui", "Non");
            if (action)
            {

                var cn = DependencyService.Get<ISQLite>().GetConnection();
                try
                {
                    string entryValue = CelluceSaisie.Text;

                    // Convertir la valeur en un entier
                    if (int.TryParse(entryValue, out int intValue))
                    {



                        // Mettre à jour la valeur de l'Entry avec la nouvelle valeur entière
                        CelluceSaisie.Text = intValue.ToString();

                        // Ajouter 1 à la valeur entière

                    }
                    else
                    {
                        // La valeur saisie n'est pas un entier valide
                        //Console.WriteLine("La valeur saisie n'est pas un entier valide.");
                    }
                    CartItem ci = new CartItem()
                    {

                        ProductId = foodItem.ProductID,
                        ProductName = foodItem.Name,
                        Price = foodItem.Price,
                        Quantity = intValue
                    };
                    var item = cn.Table<CartItem>().ToList()
                        .FirstOrDefault(c => c.ProductId == foodItem.ProductID);
                    if (item == null)
                        cn.Insert(ci);
                    else
                    {
                        item.Quantity += intValue;
                        cn.Update(item);
                    }
                    cn.Commit();
                    cn.Close();
                    await Application.Current.MainPage.DisplayAlert("Panier", "Article ajouté au panier", "OK");

                }
                catch (Exception)
                {

                }
            }
        }

        private void AddNbr_Clicked(object sender, EventArgs e)
        {

            string entryValue = CelluceSaisie.Text;

            // Convertir la valeur en un entier
            if (int.TryParse(entryValue, out int intValue))
            {

                intValue++;

                // Mettre à jour la valeur de l'Entry avec la nouvelle valeur entière
                CelluceSaisie.Text = intValue.ToString();

                // Ajouter 1 à la valeur entière

            }
            else
            {
                // La valeur saisie n'est pas un entier valide
                //Console.WriteLine("La valeur saisie n'est pas un entier valide.");
            }
        }

        private void SuppNbr_Clicked(object sender, EventArgs e)
        {
            string entryValue = CelluceSaisie.Text;

            // Convertir la valeur en un entier
            if (int.TryParse(entryValue, out int intValue))
            {
                if (CelluceSaisie.Text == "1")
                {

                }
                else
                {
                    // Ajouter 1 à la valeur entière
                    intValue--;

                    // Mettre à jour la valeur de l'Entry avec la nouvelle valeur entière
                    CelluceSaisie.Text = intValue.ToString();
                }
            }
            else
            {
                // La valeur saisie n'est pas un entier valide
                //Console.WriteLine("La valeur saisie n'est pas un entier valide.");
            }
        }

        public async void VoirPanier_Clicked(object sender, EventArgs e)
        {
            await Application.Current.MainPage.Navigation.PushModalAsync(new TabPanierPage());
        }

        private void RtAccueil_Clicked(object sender, EventArgs e)
        {
            Navigation.PopModalAsync();
        }
    }

}