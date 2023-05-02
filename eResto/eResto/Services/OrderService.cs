using eResto.Model;
using MySqlConnector;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace eResto.Services
{


    public class OrderService
    {
        // Connexion à la base de données MySQL
        readonly string connectionStringMySQL = "Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;";
        readonly MySqlConnection connectionMySQL;

        public OrderService()
        {
            connectionMySQL = new MySqlConnection(connectionStringMySQL);
            connectionMySQL.Open();
        }

        public Task<string> PlaceOrderAsync()
        {
            var cn = DependencyService.Get<ISQLite>().GetConnection();
            var data = cn.Table<CartItem>().ToList();

            var orderId = Preferences.Get("Username", "Guest");
            var uname = Preferences.Get("Username", "Guest");
            decimal totalGeneral = 0;

            foreach (var item in data)
            {
                OrderDetails od = new OrderDetails()
                {
                    OrderId = orderId,
                    OrderDetailsId = Preferences.Get("Username", "Guest"),
                    ProductID = item.ProductId,
                    ProductName = item.ProductName,
                    Price = item.Price,
                    Quantity = item.Quantity,
                };
                totalGeneral += item.Price * item.Quantity;

                // Création de la commande SQL INSERT INTO pour MySQL
                string insertCommandMySQL = "INSERT INTO CommandeDetail (CommandeDatailID, CommandeID, ProduitID, ProduitName, Quantite, price) VALUES (@OrderDetailsId, @OrderId,  @ProductID, @ProductName, @Quantity, @Price)";
                MySqlCommand commandMySQL = new MySqlCommand(insertCommandMySQL, connectionMySQL);

                commandMySQL.Parameters.AddWithValue("@OrderDetailsId", od.OrderDetailsId);
                commandMySQL.Parameters.AddWithValue("@OrderId", od.OrderId);
                commandMySQL.Parameters.AddWithValue("@ProductID", od.ProductID);
                commandMySQL.Parameters.AddWithValue("@ProductName", od.ProductName);
                commandMySQL.Parameters.AddWithValue("@Quantity", od.Quantity);
                commandMySQL.Parameters.AddWithValue("@Price", od.Price);


                // Exécution de la commande SQL INSERT INTO pour MySQL
                commandMySQL.ExecuteNonQuery();
            }

            // Création de la commande SQL INSERT INTO pour MySQL
            string insertOrderCommandMySQL = "INSERT INTO Commande(CommandeID, CommandeDate, CommandeLieu, CommandeStatut, TotalGeneral, CommandePar, TelephoneClient) VALUES (@OrderId, @OrderDate, @OrderPlace, @OrderStatus, @TotalGeneral, @Username,  @Phone)";
            MySqlCommand commandOrderMySQL = new MySqlCommand(insertOrderCommandMySQL, connectionMySQL);
            commandOrderMySQL.Parameters.AddWithValue("@OrderId", Preferences.Get("Username", "Guest"));
            commandOrderMySQL.Parameters.AddWithValue("@OrderDate", DateTime.Today);
            commandOrderMySQL.Parameters.AddWithValue("@OrderPlace", "");
            commandOrderMySQL.Parameters.AddWithValue("@OrderStatus", "Espèces");
            commandOrderMySQL.Parameters.AddWithValue("@TotalGeneral", totalGeneral);
            commandOrderMySQL.Parameters.AddWithValue("@Username", uname);
            commandOrderMySQL.Parameters.AddWithValue("@Phone", "");

            // Exécution de la commande SQL INSERT INTO pour MySQL
            commandOrderMySQL.ExecuteNonQuery();

            // Fermeture de la connexion à la base de données MySQL
            connectionMySQL.Close();

            return Task.FromResult(orderId);
        }
    }

}
