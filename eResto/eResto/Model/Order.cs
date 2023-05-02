using System;

namespace eResto.Model
{
    public class Order
    {
        public string OrderId { get; set; }
        public string Username { get; set; }
        public decimal TotalGeneral { get; set; }
        public DateTime OrderDate { get; set; }
        public string OrderStatus { get; set; }
        public string OrderPlace { get; set; }
        public string Phone { get; set; }
    }
}
