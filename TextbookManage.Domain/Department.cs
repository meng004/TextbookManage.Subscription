namespace TextbookManage.Domain
{
    public class Department : BaseModel
    {

        #region ����
        /// <summary>
        /// ���ű��
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// Ժϵ��ID
        /// </summary>
        public string SchoolId { get; set; }

        #endregion
    }
}
