using System;
using System.Collections.Generic;
using TextbookManage.Infrastructure;

namespace TextbookManage.Domain.Models.JiaoWu
{
    public class Textbook :BaseModel
    {
        public Textbook()
        {
            //StudentDeclarations = new List<StudentDeclaration>();
            //TeacherDeclarations = new List<TeacherDeclaration>();
            StudentDeclarationJiaoWus = new List<StudentDeclarationJiaoWu>();
            TeacherDeclarationJiaoWus = new List<TeacherDeclarationJiaoWu>();
            Subscriptions = new List<Subscription>();

        }

        #region 属性

        /// <summary>
        /// 教材ID
        /// </summary>
        //public Guid TextbookId { get; set; }

        /// <summary>
        /// ISBN
        /// </summary>
        public string Isbn { get; set; }
        /// <summary>
        /// 作者
        /// </summary>
        public string Author { get; set; }
        /// <summary>
        /// 出版日期
        /// </summary>
        public string PublishDate { get; set; }
        /// <summary>
        /// 定价
        /// </summary>
        public string Price { get; set; }
        /// <summary>
        /// 版本
        /// </summary>
        public string Edition { get; set; }
        /// <summary>
        /// 版次
        /// </summary>
        public string PrintCount { get; set; }
        /// <summary>
        /// 出版社
        /// </summary>
        public string Press { get; set; }
        /// <summary>
        /// 教材类型
        /// </summary>
        public string TextbookType { get; set; }
        /// <summary>
        /// 学生用书申报
        /// </summary>
        //public virtual ICollection<StudentDeclaration> StudentDeclarations { get; set; }
        /// <summary>
        /// 教师用书申报
        /// </summary>
        //public virtual ICollection<TeacherDeclaration> TeacherDeclarations { get; set; }
        /// <summary>
        /// 教务学生用书申报
        /// </summary>
        public virtual ICollection<StudentDeclarationJiaoWu> StudentDeclarationJiaoWus { get; set; }
        /// <summary>
        /// 教务教师用书申报
        /// </summary>
        public virtual ICollection<TeacherDeclarationJiaoWu> TeacherDeclarationJiaoWus { get; set; }
        /// <summary>
        /// 订单
        /// </summary>
        public virtual ICollection<Subscription> Subscriptions { get; set; }

        #endregion



    }
}
