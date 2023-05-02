using eResto.Helpers;
using eResto.Model;
using eResto.Views;
using System;
using Xamarin.Forms;
using Preferences = Xamarin.Essentials.Preferences;

namespace eResto
{
    public partial class App : Application
    {
        public static bool IsUserLoggedIn { get; internal set; }

        public App()
        {
            InitializeComponent();


            string uname = Preferences.Get("Username", String.Empty);
            if (String.IsNullOrEmpty(uname))
            {
                //MainPage = new TabAccueil();
                MainPage = new SeConnecter();
            }
            else
            {
                var cct = new CreateCartTable();
                cct.CreateTable();


                MainPage = new MainTabPage();
                // MainPage = new NouveauCompte();
            }
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
