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
        public Guid School_Id { get; set; }
        /// <summary>
        /// ѧԺ
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// ѧ������
        /// </summary>
        public virtual ICollection<Student> Students { get; set; }


        #endregion


    }
}
