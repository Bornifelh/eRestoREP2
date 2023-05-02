using eResto.Services;
using System.Threading.Tasks;
using Xamarin.Forms;
using Application = Xamarin.Forms.Application;

namespace eResto.ViewModels
{
    public class MainAccountVewModel : BaseViewModel
    {
        private int _AccountidMain;
        public int AccountidMain
        {
            set
            {
                this._AccountidMain = value;
                OnPropertyChanged();
            }
            get
            {
                return this._AccountidMain;
            }
        }

        private string _AccountnameMain;
        public string AccountnameMain
        {
            set
            {
                this._AccountnameMain = value;
                OnPropertyChanged();
            }
            get
            {
                return this._AccountnameMain;
            }
        }

        private decimal _AccountpriceMain;
        public decimal AcountpriceMain
        {
            set
            {
                this._AccountpriceMain = value;
                OnPropertyChanged();
            }
            get
            {
                return this._AccountpriceMain;
            }
        }

        private string _AccountTelMain;
        public string AccountTelMain
        {
            set
            {
                this._AccountTelMain = value;
                OnPropertyChanged();
            }
            get
            {
                return this._AccountTelMain;
            }
        }






        private bool _Result;
        public bool Result
        {
            set
            {
                this._Result = value;
                OnPropertyChanged();
            }
            get
            {
                return this._Result;
            }
        }



        public Command RegisterAccountCommand { get; set; }

        public MainAccountVewModel()
        {

            RegisterAccountCommand = new Command(async () => await RegisterAccountCommandAsync());


        }

        private async Task RegisterAccountCommandAsync()
        {

            var MainOrderAccountService = new MainOrderAccountService();
            Result = await MainOrderAccountService.RegisteraccountMain(AccountidMain, AccountnameMain, AccountTelMain, AcountpriceMain);
            if (Result)
                await Application.Current.MainPage.DisplayAlert("Félicitation", "votre nouveau solde est de: " + _AccountpriceMain, "OK");
            else
                await Application.Current.MainPage.DisplayAlert("ERREUR",
                    "vérifiez votre accès internet", "OK");


        }




    }
}
