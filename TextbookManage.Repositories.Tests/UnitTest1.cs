using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TextbookManage.Domain;


namespace TextbookManage.Repositories.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {            
            var repo = new StudentRepository();
            var result = repo.First().Students;
            Assert.IsInstanceOfType(result, typeof(Student));
        }

        [TestMethod]
        public void TestMethod2()
        {

            var repo = new StudentRepository();
            var result = repo.GetAll();
            Assert.IsTrue(result.Count() > 0);
        }
    }
}
