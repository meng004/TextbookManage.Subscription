using System;

namespace TextbookManage.Domain
{
    /// <summary>
    /// 用于关联订单
    /// 处理订单与用书申报的1：N关系
    /// </summary>
    public class TeacherDeclaration : Declaration
    {
        public TeacherDeclaration(string term) : base(term)
        {
        }
    }
}
