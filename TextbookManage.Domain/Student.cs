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
        public string Gender { get; set; }
        /// <summary>
        /// ��ѧ����
        /// </summary>
        public string EntranceDate { get; set; }
        /// <summary>
        /// ���֤��
        /// </summary>
        public string IdNumber { get; set; }
        /// <summary>
        /// �绰
        /// </summary>
        public string Mobile { get; set; }
        /// <summary>
        /// �༶ID
        /// </summary>
        public string Class_Id { get; set; }
        /// <summary>
        /// �༶
        /// </summary>
        public virtual ProfessionalClass ProfessionalClass { get; set; }


        #endregion


    }
}
