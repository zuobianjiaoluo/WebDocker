using Dapper;
using MySql.Data.MySqlClient;
using System.Data;
using System.Threading.Tasks;

namespace WebDocker.lib
{
    public class DBService
    {
        protected IDbConnection conn;

        public DBService()
        {
            //conn = new MySqlConnection("server=mysql001;User Id=root;password=123456;Database=mysql-db");
            conn = new MySqlConnection("server=192.168.113.175;User Id=root;password=123456;Database=mysql");
        }

        public async Task<T> Single<T>(string sql, object paramPairs = null)
        {
            return await conn.QuerySingleOrDefaultAsync<T>(sql, paramPairs);
        }

        public async Task<int> Count(string sql, object paramPairs = null)
        {
            return await conn.QuerySingleOrDefaultAsync<int>(sql, paramPairs);
        }
    }
}
