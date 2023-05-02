﻿using eResto.Model;
using System;
using Xamarin.Forms;

namespace eResto.Helpers
{
    public class CreateCartTable
    {
        public bool CreateTable()
        {
            try
            {
                var cn = DependencyService.Get<ISQLite>().GetConnection();
                cn.CreateTable<CartItem>();
                cn.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}
