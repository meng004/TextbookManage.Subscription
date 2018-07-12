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

        #region ����

 
        /// <summary>
        /// ��ʦ���
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// �Ա�
        /// </summary>
        public Gender Gender { get; set; }
        /// <summary>
        /// ���ż���
        /// </summary>
        public virtual ICollection<Department> Departments { get; set; }

        #endregion

    }
}
