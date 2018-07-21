using DapperExtensions;
using System.Collections.Generic;
using System.Data;
using TextbookManage.Domain;

namespace TextbookManage.IRepositories
{
    /// <summary>
    /// 仓储接口
    /// 参考DapperExtension
    /// </summary>
    /// <typeparam name="T">实体类</typeparam>
    public interface IBaseRepository<T> where T : BaseModel
    {
        T Get(dynamic id, IDbTransaction transaction = null, int? commandTimeout = null);
        void Insert(IEnumerable<T> entities, IDbTransaction transaction = null, int? commandTimeout = null);
        dynamic Insert(T entity, IDbTransaction transaction = null, int? commandTimeout = null);
        bool Update(T entity, IDbTransaction transaction = null, int? commandTimeout = null, bool ignoreAllKeyProperties = false);
        bool Delete(T entity, IDbTransaction transaction = null, int? commandTimeout = null);
        bool Delete(object predicate, IDbTransaction transaction = null, int? commandTimeout = null);
        IEnumerable<T> GetList(object predicate = null, IList<ISort> sort = null, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true);
        IEnumerable<T> GetPage(object predicate, IList<ISort> sort = null, int page = 1, int resultsPerPage = 30, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true);
        IEnumerable<T> GetSet(object predicate, IList<ISort> sort = null, int firstResult = 1, int maxResults = 100, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = true);
        int Count(object predicate, IDbTransaction transaction = null, int? commandTimeout = null);
        IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, IDbTransaction transaction = null, int? commandTimeout = null);
        void ClearCache();
    }


}
