namespace TextbookManage.Domain.IRepositories
{

    using System;
    using System.Collections.Generic;
    using System.Linq.Expressions;

    /// <summary>
    /// 仓储接口
    /// </summary>
    /// <typeparam name="TModel"></typeparam>
    public interface IBaseRepository<TModel> 
        where TModel : BaseModel
    {

        /// <summary>
        /// 获取全部
        /// </summary>
        /// <returns></returns>
        IEnumerable<TModel> GetAll();

        /// <summary>
        /// 单对象查询
        /// </summary>
        /// <param name="expression">表达式</param>
        /// <returns>单个对象</returns>
        TModel Single(Expression<Func<TModel, bool>> expression);

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="entity"></param>
        void Add(TModel entity);

        /// <summary>
        /// 移除
        /// </summary>
        /// <param name="entity"></param>
        void Remove(TModel entity);

        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="expression"></param>
        void Remove(Expression<Func<TModel, bool>> expression);

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="entity"></param>
        void Modify(TModel entity);

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="filterExpression"></param>
        /// <param name="updateExpression"></param>
        void Modify(Expression<Func<TModel, bool>> filterExpression, Expression<Func<TModel, TModel>> updateExpression); 
            
    }
}
