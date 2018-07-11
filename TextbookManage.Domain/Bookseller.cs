using System;
using System.Collections.Generic;

namespace TextbookManage.Domain.Models
{
    public class Bookseller :BaseModel
    {
        public Bookseller()
        {
            this.BooksellerStaffs = new List<BooksellerStaff>();
            this.Subscriptions = new List<Subscription>();
        }

        /// <summary>
        /// 联系人
        /// </summary>
        public string Contact { get; set; }
        /// <summary>
        /// 联系电话
        /// </summary>
        public string Telephone { get; set; }
        /// <summary>
        /// 书商员工
        /// </summary>
        public virtual ICollection<BooksellerStaff> BooksellerStaffs { get; set; }
        /// <summary>
        /// 订单
        /// </summary>
        public virtual ICollection<Subscription> Subscriptions { get; set; }
    }
}
