using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TextbookManage.Domain;
using TextbookManage.Repositories.Mapper;

namespace TextbookManage.Repositories.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestInitialize]
        public void Initial()
        {
            //DapperExtensions.DapperExtensions.SetMappingAssemblies(new[] { typeof(StudentMapper).Assembly });
        }


        [TestMethod]
        public void TestMethod1()
        {            
            var repo = new StudentRepository();
            var result = repo.First();
            Assert.IsInstanceOfType(result, typeof(Student));
        }

        [TestMethod]
        public void TestMethod2()
        {

            var repo = new StudentRepository();
            var result = repo.GetAll();
            Assert.IsTrue(result.Count() > 0);
        }

        [TestMethod]
        public void TestMethod3()
        {

            var repo = new StudentRepository();
            var result = repo.GetByClassId("DC95791BC76B4E99A41FD887BAACFC61");
            Assert.IsTrue(result.Count() > 0);
        }
    }
}
