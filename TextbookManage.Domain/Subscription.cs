using System;


namespace TextbookManage.Domain
{
    public abstract class Subscription 
    {
        protected Subscription()
        {
            this.SubscriptionStatus = SubscriptionStatus.Subscribing;
            this.ReDeclareStatus = ReDeclareStatus.Default;
            FeedbackDate = DateTime.Now;
        }

        #region 属性
        /// <summary>
        /// 申报计划ID
        /// </summary>
        public string DeclarationId { get; set; }
        /// <summary>
        /// 书商ID
        /// </summary>
        public string BooksellerId { get; set; }
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

        #endregion



    }
}
