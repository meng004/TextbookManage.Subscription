using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace TextbookManage.Repositories.Tests
{
    [TestClass]
    public class TextbookRepositoryUnitTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            var repo = new TextbookRepository();
            var result = repo.GetByName("90H7%");
            Assert.IsTrue(result.Any());
        }

        [TestMethod]
        public void TestMethod2()
        {
            var repo = new TextbookRepository();
            var result = repo.GetByIsbn("K8D6%");
            Assert.IsTrue(result.Any());
        }
    }
}
