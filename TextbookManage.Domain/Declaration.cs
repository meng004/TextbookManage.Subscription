using System;
using System.Collections.Generic;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 申报计划
    /// </summary>
    public abstract class Declaration
    {
        public Declaration(string term)
        {
            yearTerm = new SchoolYearTerm(term);
            Textbooks = new List<Textbook>();
        }

        #region 属性
        /// <summary>
        /// 申报编号
        /// </summary>
        public int Num { get; set; }
        /// <summary>
        /// 私有，学年学期
        /// </summary>
        private readonly SchoolYearTerm yearTerm;
        /// <summary>
        /// 学年学期
        /// </summary>
        public SchoolYearTerm Term { get; }
        /// <summary>
        /// 学院ID
        /// </summary>
        public Guid SchoolId { get; set; }
        /// <summary>
        /// 学院名称
        /// </summary>
        public string SchoolName { get; set; }
        /// <summary>
        /// 系教研室ID
        /// </summary>
        public Guid DepartmentId { get; set; }
        /// <summary>
        /// 系教研室名称
        /// </summary>
        public string DepartmentName { get; set; }
        /// <summary>
        /// 课程ID
        /// </summary>
        public Guid CourseId { get; set; }
        /// <summary>
        /// 课程编号
        /// </summary>
        public string CourseNum { get; set; }
        /// <summary>
        /// 课程名称
        /// </summary>
        public string CourseName { get; set; }
        /// <summary>
        /// 联系电话
        /// </summary>
        public string Telephone { get; set; }
        /// <summary>
        /// 导入时间
        /// </summary>
        public DateTime ImportDate { get; set; }
        /// <summary>
        /// 审核状态
        /// </summary>
        public string CheckState { get; set; }
        /// <summary>
        /// 教材优选状态
        /// </summary>
        public string Priority { get; set; }
        /// <summary>
        /// 数据标识
        /// </summary>
        public string DataSign { get; set; }
        /// <summary>
        /// 是否需要教材
        /// </summary>
        public bool NeedTextbook { get; set; }
        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// 教材列表
        /// 处理申报与教材之间1对N关系
        /// </summary>
        public virtual ICollection<Textbook> Textbooks { get; set; }

        #endregion

    }
}
