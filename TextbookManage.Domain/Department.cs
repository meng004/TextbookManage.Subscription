using System;
using System.Collections.Generic;

namespace TextbookManage.Domain
{
    public class Department :BaseModel
    {
        public Department()
        {
            this.Teachers = new List<Teacher>();
        }

        #region 属性
        /// <summary>
        /// 部门编号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 院系所ID
        /// </summary>
        public Guid School_Id { get; set; }
        /// <summary>
        /// 院系所
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// 教师集合
        /// </summary>
        public virtual ICollection<Teacher> Teachers { get; set; }

        #endregion
    }
}
