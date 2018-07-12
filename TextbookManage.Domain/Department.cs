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

        #region ����
        /// <summary>
        /// ���ű��
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// Ժϵ��ID
        /// </summary>
        public Guid School_Id { get; set; }
        /// <summary>
        /// Ժϵ��
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// ��ʦ����
        /// </summary>
        public virtual ICollection<Teacher> Teachers { get; set; }

        #endregion
    }
}
