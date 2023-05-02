using eResto.Model;
using eResto.Services;
using eResto.Views;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace eResto.ViewModels
{

    public class CartViewModel : BaseViewModel
    {
        public ObservableCollection<UserCartItem> CartItems { get; set; }

        private decimal _TotalGeneral;
        public decimal TotalGeneral
        {
            set
            {
                _TotalGeneral = value;
                OnPropertyChanged();
            }
            get
            {
                return _TotalGeneral;
            }
        }

        private Picker _ModePaiement;
        public Picker ModePaiement
        {
            set
            {
                _ModePaiement = value;
                OnPropertyChanged();
            }
            get
            {
                return _ModePaiement;
            }
        }



        public Command PlaceOrdersCommand { get; set; }


        public CartViewModel()
        {
            CartItems = new ObservableCollection<UserCartItem>();
            LoadItems();
            PlaceOrdersCommand = new Command(async () => await PlaceOrdersAsync());
        }

        private async Task PlaceOrdersAsync()
        {

            var id = await new OrderService().PlaceOrderAsync() as string;
            RemoveItemsFromCart();

            await Application.Current.MainPage.Navigation.PushModalAsync(new MainTabPage());
        }

        private void RemoveItemsFromCart()
        {
            var cis = new CartItemService();
            cis.RemoveItemsFromCart();
        }

        private void LoadItems()
        {
            var cn = DependencyService.Get<ISQLite>().GetConnection();
            var items = cn.Table<CartItem>().ToList();
            CartItems.Clear();
            foreach (var item in items)
            {

                CartItems.Add(new UserCartItem()
                {
                    CartItemId = item.CartItemId,
                    ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    Price = item.Price,
                    Quantity = item.Quantity,
                    Total = item.Price * item.Quantity

                });

                TotalGeneral += (item.Price * item.Quantity);

            }
        }



    }
}
