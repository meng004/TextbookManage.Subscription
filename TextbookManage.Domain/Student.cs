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

        #region ����


        /// <summary>
        /// ѧ��
        /// </summary>
        public string Num { get; set; }

        /// <summary>
        /// �Ա�
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// ��У��
        /// </summary>
        public bool Zxf { get; set; }
        /// <summary>
        /// �༶ID
        /// </summary>
        public System.Guid ProfessionalClass_Id { get; set; }
        /// <summary>
        /// �༶
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }
 

        #endregion

        #region ҵ�����

        /// <summary>
        /// ��У
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
