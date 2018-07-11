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
        /// ��ϵ��
        /// </summary>
        public string Contact { get; set; }
        /// <summary>
        /// ��ϵ�绰
        /// </summary>
        public string Telephone { get; set; }
        /// <summary>
        /// ����Ա��
        /// </summary>
        public virtual ICollection<BooksellerStaff> BooksellerStaffs { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        public virtual ICollection<Subscription> Subscriptions { get; set; }
    }
}
