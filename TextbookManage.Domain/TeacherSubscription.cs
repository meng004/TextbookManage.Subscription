using System.Collections.Generic;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 教师用书征订计划
    /// </summary>
    public class TeacherSubscription : Subscription
    {

        public TeacherSubscription()
        {
            Declarations = new List<TeacherDeclaration>();
        }

        /// <summary>
        /// 教师用书申报列表
        /// </summary>
        public virtual ICollection<TeacherDeclaration> Declarations { get; set; }
    }
}
