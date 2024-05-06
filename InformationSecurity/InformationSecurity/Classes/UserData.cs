using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InformationSecurity
{
    internal class UserData
    {
        public static int id { get; set; }
        public static string lastName { get; set; }
        public static string firstName { get; set; }
        public static string middleName { get; set; }
        public static string email { get; set; }
        public static string password { get; set; }
        public static string gender { get; set; }
        public static DateTime birthday { get; set; }
        public static int country { get; set; }
        public static string phone { get; set; }
        public static int direction { get; set; }
        public static int userEvent { get; set; }
        public static string photo { get; set; }
        public static int role { get; set; }

        public static string hello => lastName + ' ' + firstName + ' ' + middleName;

        public static string Welcome(string message)
        {
            int currentHour = DateTime.Now.Hour;
            string time = string.Empty;

            if (9 <= currentHour && currentHour < 11)
            {
                time = "Доброе утро!";
            }

            if (11 <= currentHour && currentHour < 18)
            {
                time = "Добрый день!";
            }

            if (18 <= currentHour && currentHour < 24)
            {
                time = "Добрый вечер!";
            }

            message = $"{time} \n{hello}";
            return message;
        }
    }
}
