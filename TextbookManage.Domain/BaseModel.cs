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
        public string Id { get; set; }
        public string Name { get; set; }
    }
}
