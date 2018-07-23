using System;


namespace TextbookManage.Domain
{
    public class Textbook : BaseModel
    {

        #region ����
        /// <summary>
        /// ���
        /// </summary>
        public string Num { get; set; }
        /// <summary>
        /// ISBN
        /// </summary>
        public string Isbn { get; set; }
        /// <summary>
        /// ������
        /// </summary>
        public string Press { get; set; }   
        /// <summary>
        /// ����
        /// </summary>
        public string Author { get; set; }
        /// <summary>
        /// �汾
        /// </summary>
        public string Edition { get; set; }
        /// <summary>
        /// ���
        /// </summary>
        public string PrintCount { get; set; }   
        /// <summary>
        /// ����
        /// </summary>
        public Decimal RetailPrice { get; set; }  
        /// <summary>
        /// �̲�����
        /// </summary>
        public string TextbookType { get; set; }
        /// <summary>
        /// ҳ��
        /// </summary>
        public int Page { get; set; }
        /// <summary>
        /// �Ƿ��Ա�̲�
        /// </summary>
        public string IsSelfCompile { get; set; }
        /// <summary>
        /// ��������
        /// </summary>
        public string PublishDate { get; set; }

        #endregion

    }
}
