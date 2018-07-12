using System;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 基础类
    /// </summary>
    public class BaseModel
    {
        /// <summary>
        /// 获取当前领域实体类的全局唯一标识。
        /// </summary>
        public Guid Id { get; }
        public string Name { get; set; }
    }
}
