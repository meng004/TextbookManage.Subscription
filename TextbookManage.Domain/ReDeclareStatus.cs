namespace TextbookManage.Domain
{
    public enum ReDeclareStatus : int
    {
        /// <summary>
        /// 未重新申报
        /// </summary>
        NotReDeclare = 0,
        /// <summary>
        /// 已重新申报
        /// </summary>
        ReDeclared = 1,
        /// <summary>
        /// 取消申报
        /// </summary>
        Cancel = 2,
        /// <summary>
        /// 默认,初始化
        /// </summary>
        Default = 3

    }
}
