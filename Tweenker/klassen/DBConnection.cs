using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Data.OleDb;

namespace Tweenker.klassen
{
    internal class DBConnection
    {
        public static OleDbConnection con = null;
        public static void DBCon(bool yn)
        {
            if (yn)
            {
                try
                {
                    con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=..\Database\musicdata.mdb");
                    con.Open();
                }
                catch
                {
                    con = null;
                }
            }
            else
            {
                if (con != null)
                {
                    con.Close();
                }
            }

            if (con == null)
            {
                MessageBox.Show("Error DBConnection");
            }
        }
    }
}
