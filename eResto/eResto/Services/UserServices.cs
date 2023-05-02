using MySqlConnector;
using System;

namespace eResto.Services
{
    public class UserServices
    {
        MySqlConnection connection;

        public UserServices()
        {
            string connectionString = "Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;";
            connection = new MySqlConnection(connectionString);
        }

        public bool IsUserExist(string uname)
        {
            connection.Open();

            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT COUNT(*) FROM users WHERE Username = @Username";
            command.Parameters.AddWithValue("@Username", uname);

            int count = Convert.ToInt32(command.ExecuteScalar());

            connection.Close();

            return count > 0;
        }

        public bool RegisterUser(string nom, string Username, string Passwd, string phone, string Quartier, string Email)
        {
            if (IsUserExist(Username) == false)
            {
                connection.Open();

                MySqlCommand command = connection.CreateCommand();
                command.CommandText = "INSERT INTO utilisateurs(nom, Username, Password, phone, Quartier, Email)VALUES(@nom, @Username, @Password, @phone, @Quartier, @Email)";
                command.Parameters.AddWithValue("@nom", nom);
                command.Parameters.AddWithValue("@Username", Username);
                command.Parameters.AddWithValue("@Password", Passwd);
                command.Parameters.AddWithValue("@phone", phone);
                //command.Parameters.AddWithValue("@photoprofile", photoprofile);
                command.Parameters.AddWithValue("@Quartier", Quartier);
                command.Parameters.AddWithValue("@Email", Email);

                command.ExecuteNonQuery();

               connection.Close();

                return true;
            }
            else
            {
                return false;
            }
        }

        public bool LoginUser(string uname, string passwd)
        {
            connection.Open();

            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT COUNT(*) FROM utilisateurs WHERE Username = @username AND Password = @password";
            command.Parameters.AddWithValue("@username", uname);
            command.Parameters.AddWithValue("@password", passwd);

            int count = Convert.ToInt32(command.ExecuteScalar());

            connection.Close();

            return count > 0;
        }
    }
}
