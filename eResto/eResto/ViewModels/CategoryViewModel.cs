using eResto.Model;
using eResto.Services;
using System.Collections.ObjectModel;

namespace eResto.ViewModels
{
    public class CategoryViewModel : BaseViewModel
    {
        private Category _SelectedCategory;
        public Category SelectedCategory
        {
            set
            {
                _SelectedCategory = value;
                OnPropertyChanged();
            }
            get
            {
                return _SelectedCategory;
            }
        }

        public ObservableCollection<FoodItem> FoodItemsByCategory { get; set; }

        private int _TotalFoodItems;
        public int TotalFoodItems
        {
            set
            {
                _TotalFoodItems = value;
                OnPropertyChanged();
            }
            get
            {
                return _TotalFoodItems;
            }
        }

        public CategoryViewModel(Category category)
        {
            SelectedCategory = category;
            FoodItemsByCategory = new ObservableCollection<FoodItem>();
            GetFoodItems(category.CategoryName);


        }

        public async void GetFoodItems(string CategoryID)
        {
            var data = await new FoodItemService().GetFoodItemsByCategoryAsync(CategoryID);
            FoodItemsByCategory.Clear();
            foreach (var item in data)
            {
                FoodItemsByCategory.Add(item);
            };

            TotalFoodItems = FoodItemsByCategory.Count;
        }
    }
}
