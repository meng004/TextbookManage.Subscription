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
            var students = base.GetList();
            return students;
        }

        public Student First()
        {

            var student = base.Get("0009CB1B71BC4DB6B2B57FE584A80E03");

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
