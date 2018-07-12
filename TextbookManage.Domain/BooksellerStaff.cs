using System;


namespace TextbookManage.Domain
{
    /// <summary>
    /// 书商员工
    /// </summary>
    public class BooksellerStaff : BaseModel
    {
        /// <summary>
        /// 书商ID
        /// </summary>
        public Guid Bookseller_Id { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public Gender Gender { get; set; }
        /// <summary>
        /// 所属书商
        /// </summary>
        public virtual Bookseller Bookseller { get; set; }
    }
}
