using System;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 学生班级
    /// 处理学生用书申报与班级1对N关系
    /// </summary>
    public class StudentClass : ProfessionalClass
    {

        /// <summary>
        /// 班级ID
        /// </summary>
        public Guid ProfessionalClass_Id { get; set; }
        /// <summary>
        /// 申报ID
        /// </summary>
        public Guid Declaration_Id { get; set; }
        /// <summary>
        /// 申报数量
        /// </summary>
        public int DeclarationCount { get; set; }
        /// <summary>
        /// 专业班级
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }

    }
}
