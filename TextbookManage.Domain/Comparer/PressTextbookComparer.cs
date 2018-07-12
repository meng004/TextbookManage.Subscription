using System.Collections.Generic;


namespace TextbookManage.Domain
{
    /// <summary>
    /// 比较器
    /// 比较教材的ISBN、定价、出版社、版本、版次
    /// </summary>
    public class PressTextbookComparer : IEqualityComparer<Textbook>
    {
        public bool Equals(Textbook x, Textbook y)
        {
            if (object.ReferenceEquals(x, y))
            {
                return true;
            }
            if (object.ReferenceEquals(x, null) || object.ReferenceEquals(y, null))
            {
                return false;
            }
            //比较ISBN、定价、出版社、版本、版次
            if (
                x.Isbn.Equals(y.Isbn, System.StringComparison.CurrentCultureIgnoreCase)
                && (System.Math.Abs(x.Price - y.Price) < 1e-5M)
                && x.Press.Equals(y.Press, System.StringComparison.CurrentCultureIgnoreCase)
                && x.Edition.Equals(y.Edition, System.StringComparison.CurrentCultureIgnoreCase)
                && x.PrintCount.Equals(x.PrintCount, System.StringComparison.CurrentCultureIgnoreCase)
                )
                return true;
            else
                return false;
        }

        public int GetHashCode(Textbook obj)
        {
            if (object.ReferenceEquals(obj, null))
                return 0;
            var code = obj.Isbn.GetHashCode()
                + obj.Price.GetHashCode()
                + obj.Press.GetHashCode()
                + obj.Edition.GetHashCode()
                + obj.PrintCount.GetHashCode();
            return code;
        }
    }
}
