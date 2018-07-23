using System;


namespace TextbookManage.Domain
{
    public class Textbook : BaseModel
    {

        #region 属性
        /// <summary>
        /// 编号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// ISBN
        /// </summary>
        public string Isbn { get; set; }
        /// <summary>
        /// 出版社
        /// </summary>
        public string Press { get; set; }   
        /// <summary>
        /// 作者
        /// </summary>
        public string Author { get; set; }
        /// <summary>
        /// 版本
        /// </summary>
        public string Edition { get; set; }
        /// <summary>
        /// 版次
        /// </summary>
        public string PrintCount { get; set; }   
        /// <summary>
        /// 定价
        /// </summary>
        public Decimal RetailPrice { get; set; }  
        /// <summary>
        /// 教材类型
        /// </summary>
        public string TextbookType { get; set; }
        /// <summary>
        /// 页数
        /// </summary>
        public int Page { get; set; }
        /// <summary>
        /// 是否自编教材
        /// </summary>
        public string IsSelfCompile { get; set; }
        /// <summary>
        /// 出版日期
        /// </summary>
        public string PublishDate { get; set; }

        #endregion

    }
}
