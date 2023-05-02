using eResto.Services;
using eResto.Views;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Application = Xamarin.Forms.Application;

namespace eResto.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        // Properties with public get and set methods
        public string Username { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public string Nom { get; set; }
        public string Quartier { get; set; }
        public string PhotoProfile { get; set; }
        public string Email { get; set; }
        public bool IsBusy { get; set; }
        public bool Result { get; set; }

        // Commands
        public Command LoginCommand { get; set; }
        public Command RegisterCommand { get; set; }

        public LoginViewModel()
        {
            // Initialize commands
            LoginCommand = new Command(async () => await LoginCommandAsync());
            RegisterCommand = new Command(async () => await RegisterCommandAsync());
        }

        // Registers a new user
        private async Task RegisterCommandAsync()
        {
            if (IsBusy)
                return;

            try
            {
                IsBusy = true;
                var userServices = new UserServices();
                bool result = await Task.Run(() => userServices.RegisterUser(Nom, Username, Password, Phone, Quartier, Email));

                if (result)
                    await Application.Current.MainPage.DisplayAlert("Félicitation", "Utilisateur enregistré", "OK");
                else
                    await Application.Current.MainPage.DisplayAlert("ERREUR", "L'utilisateur existe dans la base", "OK");
            }
            catch (Exception e)
            {
                // Registration failed
                await Application.Current.MainPage.DisplayAlert("Erreur", "L'enregistrement a échoué", "OK");
            }
            finally
            {
                IsBusy = false;
            }

        }



        private async Task LoginCommandAsync()
        {
            if (IsBusy)
                return;
            try
            {
                IsBusy = true;
                var UserServices = new UserServices();
                Result = UserServices.LoginUser(Username, Password);
                if (Result)
                {
                    Preferences.Set("Username", Username);
                    await Application.Current.MainPage.Navigation.PushModalAsync(new MainTabPage());
                }
                else
                {
                    await Application.Current.MainPage.DisplayAlert("Erreur", "Utilisateur ou Mot de passe Invalide", "OK");
                }
            }
            catch (Exception)
            {
                await Application.Current.MainPage.DisplayAlert("Erreur", "Merci de vérifier votre connexion internet", "ok");
            }
            finally
            {
                IsBusy = false;
            }
        }
    }
}
