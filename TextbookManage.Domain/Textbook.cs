using System;


namespace TextbookManage.Domain
{
    public class Textbook : BaseModel
    {

        #region 属性

        /// <summary>
        /// ISBN
        /// </summary>
        public string Isbn { get; set; }
        /// <summary>
        /// 作者
        /// </summary>
        public string Author { get; set; }
        /// <summary>
        /// 出版日期
        /// </summary>
        public string PublishDate { get; set; }
        /// <summary>
        /// 定价
        /// </summary>
        public Decimal Price { get; set; }
        /// <summary>
        /// 版本
        /// </summary>
        public string Edition { get; set; }
        /// <summary>
        /// 版次
        /// </summary>
        public string PrintCount { get; set; }
        /// <summary>
        /// 出版社
        /// </summary>
        public string Press { get; set; }
        /// <summary>
        /// 教材类型
        /// </summary>
        public string TextbookType { get; set; }

        #endregion



    }
}
