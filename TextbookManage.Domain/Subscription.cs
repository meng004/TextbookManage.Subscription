using System;


namespace TextbookManage.Domain
{
    public abstract class Subscription 
    {        
        public Subscription()
        {
            this.SubscriptionStatus = SubscriptionStatus.Subscribing;
            this.ReDeclareStatus = ReDeclareStatus.Default;
            FeedbackDate = DateTime.Now;
        }

        #region 属性
        /// <summary>
        /// 书商ID
        /// </summary>
        public Guid Bookseller_Id { get; set; }
        /// <summary>
        /// 征订状态
        /// </summary>
        public SubscriptionStatus SubscriptionStatus { get; set; }
        /// <summary>
        /// 回告日期
        /// </summary>
        public DateTime FeedbackDate { get; set; }
        /// <summary>
        /// 回告人，书商员工姓名
        /// </summary>
        public string FeedbackStaff { get; set; }
        /// <summary>
        /// 回告说明
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// 重新申报状态
        /// </summary>
        public ReDeclareStatus ReDeclareStatus { get; set; }

        /// <summary>
        /// 书商
        /// </summary>
        public virtual Bookseller Bookseller { get; set; }

        #endregion



    }
}
