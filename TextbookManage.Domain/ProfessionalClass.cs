using System;
using System.Collections.Generic;
using System.Linq;

namespace TextbookManage.Domain.Models.JiaoWu
{
    public class ProfessionalClass :BaseModel
    {
        public ProfessionalClass()
        {
            this.Students = new List<Student>();
        }

        #region 属性

        /// <summary>
        /// 班级ID
        /// </summary>
        //public System.Guid ProfessionalClassId { get; set; }
        /// <summary>
        /// 班号
        /// </summary>
        public string Num { get; set; }
  
        /// <summary>
        /// 年级
        /// </summary>
        public string Grade { get; set; }
        /// <summary>
        /// 现有人数
        /// </summary>
        public int Xyrs { get; set; }
        /// <summary>
        /// 学院ID
        /// </summary>
        public System.Guid School_Id { get; set; }
        /// <summary>
        /// 学院
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// 学生集合
        /// </summary>
        public virtual ICollection<Student> Students { get; set; }


        #endregion

        #region 业务规则

        /// <summary>
        /// 班级学生人数
        /// 如果实有人数为0，则取班级现有人数
        /// </summary>
        /// <returns></returns>
        public int StudentCount
        {
            get
            {
                var count = Students.Count;
                return count == 0 ? Xyrs : count;
            }
        }

        #endregion

    }
}
