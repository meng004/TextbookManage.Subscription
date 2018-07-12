using System.Collections.Generic;

namespace TextbookManage.Domain
{
    public class School : BaseModel
    {
        public School()
        {
            this.Departments = new List<Department>();
            this.ProfessionalClasses = new List<ProfessionalClass>();
        }

        #region ����
        /// <summary>
        /// Ժϵ�����
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// ���ż���
        /// </summary>
        public virtual ICollection<Department> Departments { get; set; }
        /// <summary>
        /// �༶����
        /// </summary>
        public virtual ICollection<ProfessionalClass> ProfessionalClasses { get; set; }
        #endregion

    }
}
