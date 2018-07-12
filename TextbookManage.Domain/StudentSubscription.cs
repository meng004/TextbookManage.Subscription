using System.Collections.Generic;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 学生用书征订计划
    /// </summary>
    public class StudentSubscription: Subscription
    {
        public StudentSubscription()
        {
            Declarations = new List<StudentDeclaration>();
        }

        /// <summary>
        /// 学生用书申报列表
        /// </summary>
        public virtual ICollection<StudentDeclaration> Declarations { get; set; }
    }
}
