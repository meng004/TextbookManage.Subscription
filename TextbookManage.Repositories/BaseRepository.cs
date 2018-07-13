using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using TextbookManage.Repositories.Mapper;


namespace TextbookManage.Repositories
{
    public abstract class BaseRepository
    {
        public BaseRepository()
        {
            DapperExtensions.DapperExtensions.SetMappingAssemblies(new[] { typeof(StudentMapper).Assembly });
            connectionString = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
            Connection = new SqlConnection(connectionString);
        }
        public BaseRepository(string connectionString)
        {
            DapperExtensions.DapperExtensions.SetMappingAssemblies(new[] { typeof(StudentMapper).Assembly });
            connectionString = ConfigurationManager.ConnectionStrings[connectionString].ConnectionString;
            Connection = new SqlConnection(connectionString);
        }


        protected string connectionString { get; private set; }
        protected IDbConnection Connection { get; }
    }
}
