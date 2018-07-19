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

        #region ����
        /// <summary>
        /// �걨�ƻ�ID
        /// </summary>
        public string DeclarationId { get; set; }
        /// <summary>
        /// ����ID
        /// </summary>
        public string BooksellerId { get; set; }
        /// <summary>
        /// ����״̬
        /// </summary>
        public SubscriptionStatus SubscriptionStatus { get; set; }
        /// <summary>
        /// �ظ�����
        /// </summary>
        public DateTime FeedbackDate { get; set; }
        /// <summary>
        /// �ظ��ˣ�����Ա������
        /// </summary>
        public string FeedbackStaff { get; set; }
        /// <summary>
        /// �ظ�˵��
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// �����걨״̬
        /// </summary>
        public ReDeclareStatus ReDeclareStatus { get; set; }

        #endregion



    }
}
