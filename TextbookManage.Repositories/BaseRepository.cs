using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using TextbookManage.Domain;
using DapperExtensions;
using System.Collections.Generic;
using TextbookManage.IRepositories;
using TextbookManage.Repositories.Mapper;

namespace TextbookManage.Repositories
{


    public abstract class BaseRepository<T> : IBaseRepository<T> where T : BaseModel
    {
        #region 构造函数

        /// <summary>
        /// 初始化属性
        /// </summary>
        /// <param name="connectionStringKey">数据库连接字符串Key，默认为TbMis</param>
        protected BaseRepository(string connectionStringKey = "TbMis")
        {
            DapperExtensions.DapperExtensions.SetMappingAssemblies(new[] { typeof(StudentMapper).Assembly });
            var connectionString = ConfigurationManager.ConnectionStrings[connectionStringKey].ConnectionString;
            Connection = new SqlConnection(connectionString);
        }
        #endregion

        #region 属性
        /// <summary>
        /// 连接对象
        /// </summary>
        protected IDbConnection Connection { get; }

        #endregion

        #region 接口IBaseRepository


        public T Get(dynamic id, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return DapperExtensions.DapperExtensions.Get<T>(Connection, id, transaction, commandTimeout);
        }

        public void Insert(IEnumerable<T> entities, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            Connection.Insert(entities, transaction, commandTimeout);
        }

        public dynamic Insert(T entity, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Insert(entity, transaction, commandTimeout);
        }


        public bool Update(T entity, IDbTransaction transaction = null, int? commandTimeout = null, bool ignoreAllKeyProperties = false)
        {
            return Connection.Update(entity, transaction, commandTimeout, ignoreAllKeyProperties);
        }


        public bool Delete(T entity, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Delete(entity, transaction, commandTimeout);
        }


        public bool Delete(object predicate, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Delete(predicate, transaction, commandTimeout);
        }


        public IEnumerable<T> GetList(object predicate = null, IList<ISort> sort = null, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true)
        {
            return Connection.GetList<T>(predicate, sort, transaction, commandTimeout, buffered);
        }

        public IEnumerable<T> GetPage(object predicate, IList<ISort> sort = null, int page = 1, int resultsPerPage = 30, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true)
        {
            return Connection.GetPage<T>(predicate, sort, page, resultsPerPage, transaction, commandTimeout, buffered);
        }


        public IEnumerable<T> GetSet(object predicate, IList<ISort> sort = null, int firstResult = 1, int maxResults = 100, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true)
        {
            return Connection.GetSet<T>(predicate, sort, firstResult, maxResults, transaction, commandTimeout, buffered);
        }

        public int Count(object predicate, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Count<T>(predicate, transaction, commandTimeout);
        }


        public IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.GetMultiple(predicate, transaction, commandTimeout);
        }


        public void ClearCache()
        {
            DapperExtensions.DapperExtensions.ClearCache();
        }

        #endregion
    }
}
