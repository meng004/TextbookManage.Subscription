using System;

namespace TextbookManage.Domain
{
    public class Student : BaseModel
    {
        #region ����
        /// <summary>
        /// ѧ��
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// �Ա�
        /// </summary>
        public Gender Gender { get; set; }
        /// <summary>
        /// ��У��
        /// </summary>
        public bool Zxf { get; set; }
        /// <summary>
        /// �༶ID
        /// </summary>
        public Guid ProfessionalClass_Id { get; set; }
        /// <summary>
        /// �༶
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }


        #endregion


    }
}
