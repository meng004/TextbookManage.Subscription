using System;
using System.Collections.Generic;

namespace TextbookManage.Domain.Models.JiaoWu
{
    public class Department :BaseModel
    {
        public Department()
        {

            this.Teachers = new List<Teacher>();

            StudentDeclarationJiaoWus = new List<StudentDeclarationJiaoWu>();
            //StudentDeclarations = new List<StudentDeclaration>();
            TeacherDeclarationJiaoWus = new List<TeacherDeclarationJiaoWu>();
            //TeacherDeclarations = new List<TeacherDeclaration>();
        }

        #region ����


        /// <summary>
        /// ���ű��
        /// </summary>
        public string Num { get; set; }

        /// <summary>
        /// Ժϵ��ID
        /// </summary>
        public System.Guid School_Id { get; set; }
        /// <summary>
        /// Ժϵ��
        /// </summary>
        public virtual School School { get; set; }

        /// <summary>
        /// ��ʦ����
        /// </summary>
        public virtual ICollection<Teacher> Teachers { get; set; }

        /// <summary>
        /// ����ѧ�������걨
        /// </summary>
        public virtual ICollection<StudentDeclarationJiaoWu> StudentDeclarationJiaoWus { get; set; }
        /// <summary>
        /// �����ʦ�����걨
        /// </summary>
        public virtual ICollection<TeacherDeclarationJiaoWu> TeacherDeclarationJiaoWus { get; set; }
        /// <summary>
        /// ѧ�������걨
        /// </summary>
        //public virtual ICollection<StudentDeclaration> StudentDeclarations { get; set; }
        /// <summary>
        /// ��ʦ�����걨
        /// </summary>
        //public virtual ICollection<TeacherDeclaration> TeacherDeclarations { get; set; }
        #endregion
    }
}
