using MySqlConnector;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabProfilePage : ContentPage
    {
        public readonly string connectionString = "Server=185.166.188.154;Database=u948053727_resto;Uid=u948053727_resto;Pwd=Decembre@20144;";

        // Les propriétés pour stocker les données de l'utilisateur
        public int id;
        public string nom;
        public string username;
        public string password;
        public string phone;
        public string photoprofile;

        public TabProfilePage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            // Récupération des données de l'utilisateur
            string query = "SELECT * FROM utilisateurs WHERE Username = @username";
            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", Preferences.Get("Username", String.Empty));

            try
            {
                conn.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    id = reader.GetInt32(0);
                    nom = reader.GetString(1);
                    username = reader.GetString(2);
                    password = reader.GetString(3);
                    phone = reader.GetString(4);
                    photoprofile = reader.GetString(5);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erreur lors de la récupération des données de l'utilisateur : " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

            // Mise à jour des éléments de la page avec les données de l'utilisateur
            nomLabel.Text = nom;
            usernameLabel.Text = username;
            phoneLabel.Text = phone;
            photoprofileImage.Source = photoprofile;
        }

        private void MajProfile_Clicked(object sender, EventArgs e)
        {

        }
    }
}
