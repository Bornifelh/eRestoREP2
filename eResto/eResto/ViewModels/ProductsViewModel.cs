﻿using eResto.Model;
using eResto.Services;
using eResto.Views;
using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Application = Xamarin.Forms.Application;

namespace eResto.ViewModels
{
    public class ProductsViewModel : BaseViewModel
    {
        private string _UserName;
        public string UserName
        {
            set
            {
                _UserName = value;
                OnPropertyChanged();
            }
            get
            {
                return _UserName;
            }
        }


        private int _UserCartItemsCount;
        public FoodItem selectedProduct;
        public FoodItem fooditem;

        public int UserCartItemsCount
        {
            set
            {
                _UserCartItemsCount = value;
                OnPropertyChanged();
            }
            get
            {
                return _UserCartItemsCount;
            }
        }


        public ObservableCollection<Category> Categories { get; set; }
        public ObservableCollection<FoodItem> FoodItems { get; set; }

        public Command ViewCartCommand { get; set; }
        public Command LogoutCommand { get; set; }


        public ProductsViewModel()
        {
            var uname = Preferences.Get("Userame", String.Empty);
            if (String.IsNullOrEmpty(uname))
                UserName = "Guest";
            else
                UserName = uname;


            UserCartItemsCount = new CartItemService().GetUserCartCount();
            FoodItems = new ObservableCollection<FoodItem>();
            Categories = new ObservableCollection<Category>();

            ViewCartCommand = new Command(async () => await ViewCartAsync());
            LogoutCommand = new Command(async () => await LogoutAsync());

            GetCategories();
            GetLatestItems();
        }

        public void GetLatestItems()
        {
            var data1 = new FoodItemService().GetLatestFoodItems();
            FoodItems.Clear();
            foreach (var item1 in data1)
            {
                FoodItems.Add(item1);
            }
        }



        public ProductsViewModel(FoodItem selectedProduct)
        {
            this.selectedProduct = selectedProduct;
        }

        private async Task LogoutAsync()
        {
            await Application.Current.MainPage.Navigation.PushModalAsync(new LogoutView());
        }

        private async Task ViewCartAsync()
        {
            await Application.Current.MainPage.Navigation.PushModalAsync(new TabPanierPage());
        }

        public void GetCategories()
        {
            var data = new CategoryDataService().GetCategoriesAsync();
            Categories.Clear();
            foreach (var item in data)
            {
                Categories.Add(item);
            }
        }




    }
}
