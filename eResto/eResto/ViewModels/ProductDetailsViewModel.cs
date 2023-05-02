using eResto.Views;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace eResto.ViewModels
{
    public class ProductDetailsViewModel : BaseViewModel
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

        public Command IncrementOrderCommand { get; set; }
        public Command DecrementOrderCommand { get; set; }
        public Command AddToCartCommand { get; set; }
        public Command ViewCartCommand { get; set; }
        public Command HomeCommand { get; set; }

        public ProductDetailsViewModel()
        {



            IncrementOrderCommand = new Command(() => IncrementOrder());
            DecrementOrderCommand = new Command(() => DecrementOrder());
            AddToCartCommand = new Command(() => AddToCart());
            ViewCartCommand = new Command(async () => await ViewCartAsync());
            HomeCommand = new Command(async () => await GotoHomeAsync());
        }

        private async Task GotoHomeAsync()
        {
            await Application.Current.MainPage.Navigation.PushModalAsync(new MainTabPage());
        }

        public async Task ViewCartAsync()
        {
            await Application.Current.MainPage.Navigation.PushModalAsync(new TabPanierPage());
        }

        private void AddToCart()
        {

        }

        private void DecrementOrder()
        {
            TotalQuantity -= 1;
        }

        private void IncrementOrder()
        {
            TotalQuantity += +1;
        }
    }
}
