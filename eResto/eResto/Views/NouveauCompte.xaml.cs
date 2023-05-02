using MySqlConnector;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eResto.Model
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class NouveauCompte : ContentPage
    {
        public NouveauCompte()
        {
            InitializeComponent();
        }

        private void Save_Clicked(object sender, System.EventArgs e)
        {
            string nom = NomEntry.Text;
            string username = UsernameEntry.Text;
            string password = PasswordEntry.Text;
            string phone = PhoneEntry.Text;
            //ImageSource photoprofile = ProfileImage.Source;
            string quartier = QuartierEntry.Text;
            string email = EmailEntry.Text;

            string connectionString = "Server = 185.166.188.154; Database = u948053727_resto; Uid = u948053727_resto; Pwd = Decembre@20144;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                // Vérifier si un utilisateur avec le même nom d'utilisateur existe déjà dans la base de données
                string selectQuery = "SELECT COUNT(*) FROM utilisateurs WHERE Username = @username";
                using (MySqlCommand selectCommand = new MySqlCommand(selectQuery, connection))
                {
                    selectCommand.Parameters.AddWithValue("@username", username);
                    int count = Convert.ToInt32(selectCommand.ExecuteScalar());
                    if (count > 0)
                    {
                        // Un utilisateur avec le même nom d'utilisateur existe déjà, afficher un message d'erreur et arrêter le traitement
                        DisplayAlert("Erreur", "Le nom d'utilisateur existe déjà", "OK");
                        return;
                    }
                }

                // Insérer l'utilisateur dans la base de données
                string insertQuery = "INSERT INTO utilisateurs (nom, Username, Password, phone, Quartier, Email) VALUES (@nom, @username, @password, @phone, @quartier, @email)";
                using (MySqlCommand insertCommand = new MySqlCommand(insertQuery, connection))
                {
                    insertCommand.Parameters.AddWithValue("@nom", nom);
                    insertCommand.Parameters.AddWithValue("@username", username);
                    insertCommand.Parameters.AddWithValue("@password", password);
                    insertCommand.Parameters.AddWithValue("@phone", phone);
                    //insertCommand.Parameters.AddWithValue("@photoprofile", ""); // À compléter si besoin de stocker l'image
                    insertCommand.Parameters.AddWithValue("@quartier", quartier);
                    insertCommand.Parameters.AddWithValue("@email", email);

                    int rowsAffected = insertCommand.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // L'insertion a réussi, afficher un message de succès
                        DisplayAlert("Succès", "L'utilisateur a été enregistré avec succès", "OK");
                        Navigation.PushModalAsync();
                    }
                    else
                    {
                        // L'insertion a échoué, afficher un message d'erreur
                        DisplayAlert("Erreur", "L'enregistrement a échoué", "OK");
                    }
                }

                connection.Close();
            }
        }
    }
}