namespace TextbookManage.IRepositories
{
    using DapperExtensions;
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq.Expressions;
    using TextbookManage.Domain;

    /// <summary>
    /// 仓储接口
    /// 参考DapperExtension的IDataBase
    /// </summary>
    /// <typeparam name="TModel"></typeparam>
    public interface IBaseRepository<TModel> : IDisposable
        where TModel : BaseModel
    {

        void BeginTransaction(IsolationLevel isolationLevel = IsolationLevel.ReadCommitted);
        void Commit();
        void Rollback();
        void RunInTransaction(Action action);
        TModel RunInTransaction(Func<TModel> func);
        TModel Get(dynamic id, IDbTransaction transaction, int? commandTimeout = null);
        TModel Get(dynamic id, int? commandTimeout = null);
        void Insert(IEnumerable<TModel> entities, IDbTransaction transaction, int? commandTimeout = null);
        void Insert(IEnumerable<TModel> entities, int? commandTimeout = null);
        dynamic Insert(TModel entity, IDbTransaction transaction, int? commandTimeout = null);
        dynamic Insert(TModel entity, int? commandTimeout = null);
        bool Update(TModel entity, IDbTransaction transaction, int? commandTimeout = null, bool ignoreAllKeyProperties = false);
        bool Update(TModel entity, int? commandTimeout = null, bool ignoreAllKeyProperties = false);
        bool Delete(TModel entity, IDbTransaction transaction, int? commandTimeout = null);
        bool Delete(TModel entity, int? commandTimeout = null);
        bool Delete(object predicate, IDbTransaction transaction, int? commandTimeout = null);
        bool Delete(object predicate, int? commandTimeout = null);
        IEnumerable<TModel> GetList(object predicate, IList<ISort> sort, IDbTransaction transaction, int? commandTimeout = null, bool buffered = true);
        IEnumerable<TModel> GetList(object predicate = null, IList<ISort> sort = null, int? commandTimeout = null, bool buffered = true);
        IEnumerable<TModel> GetPage(object predicate, IList<ISort> sort, int page, int resultsPerPage, IDbTransaction transaction, int? commandTimeout = null, bool buffered = true);
        IEnumerable<TModel> GetPage(object predicate, IList<ISort> sort, int page, int resultsPerPage, int? commandTimeout = null, bool buffered = true);
        IEnumerable<TModel> GetSet(object predicate, IList<ISort> sort, int firstResult, int maxResults, IDbTransaction transaction, int? commandTimeout, bool buffered);
        IEnumerable<TModel> GetSet(object predicate, IList<ISort> sort, int firstResult, int maxResults, int? commandTimeout, bool buffered);
        int Count(object predicate, IDbTransaction transaction, int? commandTimeout = null);
        int Count(object predicate, int? commandTimeout = null);
        IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, IDbTransaction transaction, int? commandTimeout = null);
        IMultipleResultReader GetMultiple(GetMultiplePredicate predicate, int? commandTimeout = null);
        void ClearCache();


    }
}
