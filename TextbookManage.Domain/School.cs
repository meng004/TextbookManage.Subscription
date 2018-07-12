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

        #region 属性
        /// <summary>
        /// 院系所编号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 部门集合
        /// </summary>
        public virtual ICollection<Department> Departments { get; set; }
        /// <summary>
        /// 班级集合
        /// </summary>
        public virtual ICollection<ProfessionalClass> ProfessionalClasses { get; set; }
        #endregion

    }
}
