using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Tests
{
    [TestClass]
    public class StudentRepositoryUnitTest
    {

        [TestMethod]
        public void TestMethod1()
        {
            var repo = new StudentRepository();
            var result = repo.GetList().FirstOrDefault();
            Assert.IsInstanceOfType(result, typeof(Student));
        }

        [TestMethod]
        public void TestMethod2()
        {
            var repo = new StudentRepository();
            var result = repo.GetList();
            Assert.IsTrue(result.Any());
        }

        [TestMethod]
        public void TestMethod3()
        {
            var repo = new StudentRepository();
            var result = repo.GetByClassId("VAO 8D66A6Q6V2WFMU37 XNOWI1ESM7F3QCUWYD5X0RXKSMMTV");
            Assert.IsTrue(result.Any());
        }
    }
}
