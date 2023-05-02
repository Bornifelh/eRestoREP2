using System;

namespace eResto.Model
{
    public class OrderAccountCash
    {
        public string AccountId { get; set; }
        public string AccountIdTel { get; set; }
        public string AccountName { get; set; }
        public decimal PriceAccount { get; set; }
        public Boolean IsPaid { get; set; }
    }
}
