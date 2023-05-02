using eResto.Model;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabPanierPage : ContentPage
    {
        FirebaseClient client;


        public TabPanierPage()
        {

            InitializeComponent();

            client = new FirebaseClient("https://foodorderingapp-ad13e-default-rtdb.firebaseio.com/");

            LabelName.Text = "Bienvenue " + Preferences.Get("Username", "Guest") + ",";


            //liname.Items.Add("Mon compte");
            liname.Items.Add("Espèces");

            if (EmporterouPas.SelectedItem == null)
            {
                DisplayAlert("Erreur", "Veuillez selectionner le lieu de consommation;" +
                    " Selection sur Emporter par defaut", "OK");
                EmporterouPas.SelectedItem = "Emporter";

                return;
            }
        }

        async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var action = await DisplayAlert("Vider", "Voulez-vous vider votre panier ?", "Oui", "Non");
            if (action)
            {
                var cn = DependencyService.Get<ISQLite>().GetConnection();
                cn.DeleteAll<CartItem>();
                cn.Close();
                await
                    Navigation.PopModalAsync();

            }


        }





        async void ValidationPaiement_Clicked(object sender, EventArgs e)
        {
            var action = await DisplayAlert("Validation", "Es tu sûre de valider la commande", "Oui", "Non");
            if (action)
            {
                //  Navigate to first page

                if (liname.SelectedIndex == -1)
                {
                    await DisplayAlert("Erreur", "Veuillez selectionner le mode de paiement", "OK");

                    return;
                }

                //Si = MON COMPTE
                else if (liname.SelectedItem.ToString() == "Mon compte")
                {


                    var cn = DependencyService.Get<ISQLite>().GetConnection();
                    var data = cn.Table<CartItem>().ToList();


                    var orderId = Guid.NewGuid().ToString();
                    var uname = Preferences.Get("Username", "Guest");
                    decimal totalGeneral = 0;

                    foreach (var item in data)
                    {
                        OrderDetails od = new OrderDetails()
                        {
                            OrderId = orderId,
                            OrderDetailsId = Guid.NewGuid().ToString(),
                            ProductID = item.ProductId,
                            ProductName = item.ProductName,
                            Price = item.Price,
                            Quantity = item.Quantity,
                        };
                        totalGeneral += item.Price * item.Quantity;
                        await client.Child(@"DetailsCommande").PostAsync(od);
                    }

                    await client.Child(@"Commande").PutAsync(
                        new Order()
                        {

                            OrderId = orderId,
                            Username = uname,
                            TotalGeneral = totalGeneral,
                            OrderDate = DateTime.Today,
                            OrderStatus = "Mon compte",
                            OrderPlace = EmporterouPas.SelectedItem.ToString(),




                        });
                    cn.DeleteAll<CartItem>();
                    cn.Close();
                    await DisplayAlert("Bravo! Commande effectuée avec succés", "Votre commande est enreistrée en tant que : " + uname + " / Details commande n° : " + Guid.NewGuid().ToString(), "OK");
                    await Navigation.PopModalAsync();

                    return;


                }
            }

            //SI = ESPECES
            else if (liname.SelectedItem.ToString() == "Espèces")
            {




                var cn = DependencyService.Get<ISQLite>().GetConnection();
                var data = cn.Table<CartItem>().ToList();

                var orderId = Guid.NewGuid().ToString();
                var uname = Preferences.Get("Username", "Guest");
                decimal totalGeneral = 0;

                foreach (var item in data)
                {
                    OrderDetails od = new OrderDetails()
                    {
                        OrderId = orderId,
                        OrderDetailsId = Guid.NewGuid().ToString(),
                        ProductID = item.ProductId,
                        ProductName = item.ProductName,
                        Price = item.Price,
                        Quantity = item.Quantity,
                    };
                    totalGeneral += item.Price * item.Quantity;
                    await client
                        .Child(@"DetailsCommande")
                        .PutAsync(od);


                }

                await client.Child(@"Commande").PostAsync(
                    new Order()
                    {

                        OrderId = orderId,
                        Username = uname,
                        TotalGeneral = totalGeneral,
                        OrderDate = DateTime.Today,
                        OrderStatus = "Espèces",
                        OrderPlace = EmporterouPas.SelectedItem.ToString(),




                    });


                //DELETE PANIER
                cn.DeleteAll<CartItem>();
                cn.Close();
                await DisplayAlert("Bravo! Commande effectuée avec succés", "Votre commande est enreistrée en tant que : " + uname + " / Details commande n° : " + Guid.NewGuid().ToString(), "OK");
                await Navigation.PopModalAsync();
                return;



            }

        }


    }


}







