using eResto.Services;
using System;
using System.Threading.Tasks;
using Xamarin.Forms;
using Application = Xamarin.Forms.Application;

namespace eResto.ViewModels
{
    public class AccountVewModel : BaseViewModel
    {
        private string _Accountid;
        public string Accountid
        {
            set
            {
                this._Accountid = value;
                OnPropertyChanged();
            }
            get
            {
                return this._Accountid;
            }
        }

        private string _Accountname;
        public string Accountname
        {
            set
            {
                this._Accountname = value;
                OnPropertyChanged();
            }
            get
            {
                return this._Accountname;
            }
        }

        private decimal _Accountprice;
        public decimal Acountprice
        {
            set
            {
                this._Accountprice = value;
                OnPropertyChanged();
            }
            get
            {
                return this._Accountprice;
            }
        }

        private string _AccountTel;
        public string AccountTel
        {
            set
            {
                this._AccountTel = value;
                OnPropertyChanged();
            }
            get
            {
                return this._AccountTel;
            }
        }



        private Boolean _isPaid;
        public Boolean isPaid
        {
            set
            {
                this._isPaid = value;
                OnPropertyChanged();
            }
            get
            {
                return this._isPaid;
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

        public AccountVewModel()
        {

            RegisterAccountCommand = new Command(async () => await RegisterAccountCommandAsync());


        }

        private async Task RegisterAccountCommandAsync()
        {

            var OrderAccountService = new OrderAccountService();
            Result = await OrderAccountService.Registeraccount(Accountid, Accountname, AccountTel, Acountprice, isPaid);
            if (Result)
                await Application.Current.MainPage.DisplayAlert("Félicitation", "paiement effectué avec votre compte", "Tchop & Ndjoka", "OK");
            else
                await Application.Current.MainPage.DisplayAlert("ERREUR",
                    "vérifiez votre accès internet", "OK");


        }




    }
}
