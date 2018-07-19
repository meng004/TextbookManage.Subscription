namespace TextbookManage.Domain
{
    public class Department : BaseModel
    {

        #region 属性
        /// <summary>
        /// 部门编号
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// 院系所ID
        /// </summary>
        public string SchoolId { get; set; }

        #endregion
    }
}
