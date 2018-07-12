using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TextbookManage.Repositories;

namespace TextbookManage.Repositories.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var repo = new StudentRepository();
            var result = repo.GetAll();
            Assert.IsTrue(result.Count() > 0);
        }
    }
}
