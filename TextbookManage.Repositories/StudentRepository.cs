using System.Collections.Generic;
using System.Linq;
using TextbookManage.Domain;
using TextbookManage.Domain.IRepositories;
using DapperExtensions;

namespace TextbookManage.Repositories
{
    public class StudentRepository : BaseRepository<Student>, IStudentRepository
    {
 

        public IEnumerable<Student> GetAll()
        {
            return new List<Student>();
        }

        public Student First()
        {
            //var student = base.GetList().FirstOrDefault();
            var student = GetList().FirstOrDefault();

            return student;

        }

        public IEnumerable<Student> GetByClassId(string classId)
        {
            var predicate = Predicates.Field<Student>(f => f.Class_Id, Operator.Eq, classId);
            var list = base.GetList(predicate);
            return list.ToList();

        }
    }
}
