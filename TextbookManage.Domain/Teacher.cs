using System;
using System.Collections.Generic;

namespace TextbookManage.Domain
{
    public class Teacher :BaseModel
    {
        public Teacher()
        {
            this.Departments = new List<Department>();
        }

        #region 属性

 
        /// <summary>
        /// 教师编号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public Gender Gender { get; set; }
        /// <summary>
        /// 部门集合
        /// </summary>
        public virtual ICollection<Department> Departments { get; set; }

        #endregion

    }
}
