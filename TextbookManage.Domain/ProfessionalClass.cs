using System;
using System.Collections.Generic;


namespace TextbookManage.Domain
{
    public class ProfessionalClass : BaseModel
    {
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
        public string SchoolId { get; set; }

        #endregion


    }
}
