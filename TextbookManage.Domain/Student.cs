using System;
using System.Collections.Generic;
using System.Linq;
using TextbookManage.Infrastructure;

namespace TextbookManage.Domain.Models.JiaoWu
{
    public class Student :BaseModel
    {
        public Student()
        {

        }

        #region 属性


        /// <summary>
        /// 学号
        /// </summary>
        public string Num { get; set; }

        /// <summary>
        /// 性别
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// 在校否
        /// </summary>
        public bool Zxf { get; set; }
        /// <summary>
        /// 班级ID
        /// </summary>
        public System.Guid ProfessionalClass_Id { get; set; }
        /// <summary>
        /// 班级
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }
 

        #endregion

        #region 业务规则

        /// <summary>
        /// 在校
        /// </summary>
        public bool IsInCampus
        {
            get
            {
                return Zxf;
            }

        }

        #endregion

    }
}
