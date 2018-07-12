
using System.Collections.Generic;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 学生用书申报计划
    /// 处理申报与学生班级的1：N关系
    /// </summary>
    public class StudentDeclaration : Declaration
    {
        public StudentDeclaration(string term) : base(term)
        {
            StudentClasses = new List<StudentClass>();
        }
        /// <summary>
        /// 学生班级列表
        /// </summary>
        public virtual ICollection<StudentClass> StudentClasses { get; set; }
 
    }
}
