using System;
using System.Collections.Generic;


namespace TextbookManage.Domain
{
    public class ProfessionalClass : BaseModel
    {
         #region ����

        /// <summary>
        /// ���
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// �꼶
        /// </summary>
        public string Grade { get; set; }
        /// <summary>
        /// ѧԺID
        /// </summary>
        public string SchoolId { get; set; }

        #endregion


    }
}
