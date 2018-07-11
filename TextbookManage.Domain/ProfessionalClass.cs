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

        #region ����

        /// <summary>
        /// �༶ID
        /// </summary>
        //public System.Guid ProfessionalClassId { get; set; }
        /// <summary>
        /// ���
        /// </summary>
        public string Num { get; set; }
  
        /// <summary>
        /// �꼶
        /// </summary>
        public string Grade { get; set; }
        /// <summary>
        /// ��������
        /// </summary>
        public int Xyrs { get; set; }
        /// <summary>
        /// ѧԺID
        /// </summary>
        public System.Guid School_Id { get; set; }
        /// <summary>
        /// ѧԺ
        /// </summary>
        public virtual School School { get; set; }
        /// <summary>
        /// ѧ������
        /// </summary>
        public virtual ICollection<Student> Students { get; set; }


        #endregion

        #region ҵ�����

        /// <summary>
        /// �༶ѧ������
        /// ���ʵ������Ϊ0����ȡ�༶��������
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
