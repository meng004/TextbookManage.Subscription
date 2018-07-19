
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
        public string BooksellerId { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public string Gender { get; set; }
    }
}
