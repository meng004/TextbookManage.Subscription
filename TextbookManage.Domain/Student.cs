using System;

namespace TextbookManage.Domain
{
    public class Student : BaseModel
    {
        #region 属性
        /// <summary>
        /// 学号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public Gender Gender { get; set; }
        /// <summary>
        /// 在校否
        /// </summary>
        public bool Zxf { get; set; }
        /// <summary>
        /// 班级ID
        /// </summary>
        public Guid ProfessionalClass_Id { get; set; }
        /// <summary>
        /// 班级
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }


        #endregion


    }
}
