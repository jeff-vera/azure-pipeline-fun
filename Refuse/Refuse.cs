using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;
using DapperExtensions;


namespace Refuse
{
    public class Refuse 
    {
        public int Multiply(int a, int b)
        {
            return a * b;
        }

        public IEnumerable<TestRows> DoDbWork(string connString)
        {
            SqlConnection conn = null;
            using (conn = new SqlConnection(connString))
            {
                return conn.Query<TestRows>("select * from TestRows");                
            }

        }

        public int InsertRow(TestRows row, string connString)
        {
            SqlConnection conn = null;
            using (conn = new SqlConnection(connString))
            {
                conn.Insert(row);
                return row.Id;
            }
        }

        public void DeleteRows(string connString)
        {
            SqlConnection conn = null;
            using (conn = new SqlConnection(connString))
            {
                conn.Execute("delete from TestRows;");
            }
        }
    }
}
