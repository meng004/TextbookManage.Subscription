using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using TextbookManage.Domain;
using DapperExtensions;
using DapperExtensions.Sql;
using System.Collections.Generic;
using System;
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
        /// <param name="connectionString">数据库连接字符串Key，默认为TbMis</param>
        public BaseRepository(string connectionString = "TbMis")
        {
            DapperExtensions.DapperExtensions.SetMappingAssemblies(new[] { typeof(StudentMapper).Assembly });
            connectionString = ConfigurationManager.ConnectionStrings[connectionString].ConnectionString;
            Connection = new SqlConnection(connectionString);
            SqlGenerator = new SqlGeneratorImpl(new DapperExtensionsConfiguration());
            Database = new Database(this.Connection, this.SqlGenerator);

        }
        #endregion

        #region 属性
        /// <summary>
        /// 连接字符串
        /// </summary>
        private string connectionString { get; set; }
        /// <summary>
        /// 连接对象
        /// </summary>
        protected IDbConnection Connection { get; }
        /// <summary>
        /// sql脚本生成器
        /// </summary>
        private ISqlGenerator SqlGenerator { get; }
        /// <summary>
        /// 数据库访问对象
        /// </summary>
        protected IDatabase Database { get; }
        #endregion

        #region 接口IDatabase
        public void BeginTransaction(IsolationLevel isolationLevel = IsolationLevel.ReadCommitted)
        {
            Database.BeginTransaction(isolationLevel);
        }

        public void Commit()
        {
            Database.Commit();
        }

        public void Rollback()
        {
            Database.Rollback();
        }

        public void RunInTransaction(Action action)
        {
            Database.RunInTransaction(action);
        }

        public T RunInTransaction(Func<T> func)
        {
            return Database.RunInTransaction(func);
        }

        public T Get(dynamic id, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.Get<T>(id, transaction, commandTimeout);
        }

        public T Get(dynamic id, int? commandTimeout = null)
        {
            return Database.Get<T>(id, commandTimeout);
        }

        public void Insert(IEnumerable<T> entities, IDbTransaction transaction, int? commandTimeout = null)
        {
            Database.Insert(entities, transaction, commandTimeout);
        }

        public void Insert(IEnumerable<T> entities, int? commandTimeout = null)
        {
            Database.Insert(entities, commandTimeout);
        }

        public dynamic Insert(T entity, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.Insert(entity, transaction, commandTimeout);
        }

        public dynamic Insert(T entity, int? commandTimeout = null)
        {
            return Database.Insert(entity, commandTimeout);
        }

        public bool Update(T entity, IDbTransaction transaction, int? commandTimeout = null, bool ignoreAllKeyProperties = false)
        {
            return Database.Update(entity, transaction, commandTimeout, ignoreAllKeyProperties);
        }

        public bool Update(T entity, int? commandTimeout = null, bool ignoreAllKeyProperties = false)
        {
            return Database.Update(entity, commandTimeout, ignoreAllKeyProperties);
        }

        public bool Delete(T entity, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.Delete(entity, transaction, commandTimeout);
        }

        public bool Delete(T entity, int? commandTimeout = null)
        {
            return Database.Delete(entity, commandTimeout);
        }

        public bool Delete(object predicate, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.Delete(predicate, transaction, commandTimeout);
        }

        public bool Delete(object predicate, int? commandTimeout = null)
        {
            return Database.Delete(predicate, commandTimeout);
        }

        public IEnumerable<T> GetList(object predicate, IList<ISort> sort, IDbTransaction transaction, int? commandTimeout = null, bool buffered = true)
        {
            return Database.GetList<T>(predicate, sort, transaction, commandTimeout, buffered);
        }

        public IEnumerable<T> GetList(object predicate = null, IList<ISort> sort = null, int? commandTimeout = null, bool buffered = true)
        {
            return Database.GetList<T>(predicate, sort, commandTimeout, buffered);
        }

        public IEnumerable<T> GetPage(object predicate, IList<ISort> sort, int page, int resultsPerPage, IDbTransaction transaction, int? commandTimeout = null, bool buffered = true)
        {
            return Database.GetPage<T>(predicate, sort, page, resultsPerPage, transaction, commandTimeout, buffered);
        }

        public IEnumerable<T> GetPage(object predicate, IList<ISort> sort, int page, int resultsPerPage, int? commandTimeout = null, bool buffered = true)
        {
            return Database.GetPage<T>(predicate, sort, page, resultsPerPage, commandTimeout, buffered);
        }

        public IEnumerable<T> GetSet(object predicate, IList<ISort> sort, int firstResult, int maxResults, IDbTransaction transaction, int? commandTimeout, bool buffered)
        {
            return Database.GetSet<T>(predicate, sort, firstResult, maxResults, transaction, commandTimeout, buffered);
        }

        public IEnumerable<T> GetSet(object predicate, IList<ISort> sort, int firstResult, int maxResults, int? commandTimeout, bool buffered)
        {
            return Database.GetSet<T>(predicate, sort, firstResult, maxResults, commandTimeout, buffered);
        }

        public int Count(object predicate, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.Count<T>(predicate, transaction, commandTimeout);
        }

        public int Count(object predicate, int? commandTimeout = null)
        {
            return Database.Count<T>(predicate, commandTimeout);
        }

        public IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, IDbTransaction transaction, int? commandTimeout = null)
        {
            return Database.GetMultiple(predicate, transaction, commandTimeout);
        }

        public IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, int? commandTimeout = null)
        {
            return Database.GetMultiple(predicate, commandTimeout);
        }

        public void ClearCache()
        {
            Database.ClearCache();
        }

        public void Dispose()
        {
            Database.Dispose();
        }
        #endregion
    }
}
