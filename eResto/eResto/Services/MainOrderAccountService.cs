using eResto.Model;
using Firebase.Database;
using Firebase.Database.Query;
using System.Threading.Tasks;

namespace eResto.Services
{
    public class MainOrderAccountService
    {
        FirebaseClient client;

        public MainOrderAccountService()
        {
            client = new FirebaseClient("https://foodorderingapp-ad13e-default-rtdb.firebaseio.com/");
        }


        public async Task<bool> RegisteraccountMain(int accountIdMain, string accountNameMain, string accountTelMain, decimal accountPriceMain)
        {

            await client.Child("MainAccountPaid")
        .PostAsync(new MainOrderAccount()
        {
            AccountIdMain = accountIdMain,
            AccountNameMain = accountNameMain,
            AccountIdTelMain = accountTelMain,
            PriceAccountMain = accountPriceMain
        });
            return true;
        }

    }


}
