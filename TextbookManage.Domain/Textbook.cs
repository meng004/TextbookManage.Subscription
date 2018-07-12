using System;


namespace TextbookManage.Domain
{
    public class Textbook : BaseModel
    {

        #region ����

        /// <summary>
        /// ISBN
        /// </summary>
        public string Isbn { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        public string Author { get; set; }
        /// <summary>
        /// ��������
        /// </summary>
        public string PublishDate { get; set; }
        /// <summary>
        /// ����
        /// </summary>
        public Decimal Price { get; set; }
        /// <summary>
        /// �汾
        /// </summary>
        public string Edition { get; set; }
        /// <summary>
        /// ���
        /// </summary>
        public string PrintCount { get; set; }
        /// <summary>
        /// ������
        /// </summary>
        public string Press { get; set; }
        /// <summary>
        /// �̲�����
        /// </summary>
        public string TextbookType { get; set; }

        #endregion



    }
}
