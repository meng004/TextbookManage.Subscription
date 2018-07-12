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

        #region ����
        /// <summary>
        /// ����ID
        /// </summary>
        public Guid Bookseller_Id { get; set; }
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

        /// <summary>
        /// ����
        /// </summary>
        public virtual Bookseller Bookseller { get; set; }

        #endregion



    }
}
