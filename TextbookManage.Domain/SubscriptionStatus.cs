using System;

namespace TextbookManage.Domain
{
    public enum SubscriptionStatus : int
    {
        /// <summary>
        /// �����У�Ĭ��
        /// </summary>
        Subscribing = 0,
        /// <summary>
        /// �����ɹ�
        /// </summary>
        Success = 1,
        /// <summary>
        /// ����ʧ��
        /// </summary>
        Failure = 2,
        /// <summary>
        /// δ֪
        /// </summary>
        UnKnown = 3
    }
}
