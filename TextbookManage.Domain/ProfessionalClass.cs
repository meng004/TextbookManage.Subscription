using System;
using System.Collections.Generic;


namespace TextbookManage.Domain
{
    public class ProfessionalClass : BaseModel
    {
        public ProfessionalClass()
        {
            this.Students = new List<Student>();
        }

        #region 属性

        /// <summary>
        /// 班号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 年级
        /// </summary>
        public string Grade { get; set; }
        /// <summary>
        /// 学院ID
        /// </summary>
        public Guid School_Id { get; set; }
        /// <summary>
        /// 学院
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// 学生集合
        /// </summary>
        public virtual ICollection<Student> Students { get; set; }


        #endregion


    }
}
