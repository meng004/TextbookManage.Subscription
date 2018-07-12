using System;

namespace TextbookManage.Domain
{
    public enum SubscriptionStatus : int
    {
        /// <summary>
        /// Õ÷¶©ÖÐ£¬Ä¬ÈÏ
        /// </summary>
        Subscribing = 0,
        /// <summary>
        /// Õ÷¶©³É¹¦
        /// </summary>
        Success = 1,
        /// <summary>
        /// Õ÷¶©Ê§°Ü
        /// </summary>
        Failure = 2,
        /// <summary>
        /// Î´Öª
        /// </summary>
        UnKnown = 3
    }
}
