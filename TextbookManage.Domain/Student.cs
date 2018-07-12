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
        public string Gender { get; set; }
        /// <summary>
        /// 入学日期
        /// </summary>
        public string EntranceDate { get; set; }
        /// <summary>
        /// 身份证号
        /// </summary>
        public string IdNumber { get; set; }
        /// <summary>
        /// 电话
        /// </summary>
        public string Mobile { get; set; }
        /// <summary>
        /// 班级ID
        /// </summary>
        public string Class_Id { get; set; }
        /// <summary>
        /// 班级
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }


        #endregion


    }
}
