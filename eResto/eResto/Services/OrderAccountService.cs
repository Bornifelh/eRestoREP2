using eResto.Model;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Threading.Tasks;

namespace eResto.Services
{
    public class OrderAccountService
    {
        FirebaseClient client;

        public OrderAccountService()
        {
            client = new FirebaseClient("https://foodorderingapp-ad13e-default-rtdb.firebaseio.com/");
        }

        public async Task<bool> Registeraccount(string accountId, string accountName, string accountTel, decimal accountPrice, Boolean accountIsPaid)
        {

            await client.Child("AccountPaid")
        .PostAsync(new OrderAccountCash()
        {
            AccountId = accountId,
            AccountName = accountName,
            AccountIdTel = accountTel,
            PriceAccount = accountPrice,
            IsPaid = accountIsPaid
        });
            return true;
        }

    }

}
