
namespace TextbookManage.Domain
{
    /// <summary>
    /// 学生班级
    /// 处理学生用书申报与班级1对N关系
    /// </summary>
    public class StudentClass 
    {

        /// <summary>
        /// 班级ID
        /// </summary>
        public string ProfessionalClassId { get; set; }
        /// <summary>
        /// 申报ID
        /// </summary>
        public string DeclarationId { get; set; }
        /// <summary>
        /// 申报数量
        /// </summary>
        public int DeclarationCount { get; set; }

    }
}
