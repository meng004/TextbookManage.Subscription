using System.Collections.Generic;
using System.Linq;
using TextbookManage.Domain;
using TextbookManage.IRepositories;
using DapperExtensions;

namespace TextbookManage.Repositories
{
    public class StudentRepository : BaseRepository<Student>, IStudentRepository
    {
 
        public IEnumerable<Student> GetByClassId(string classId)
        {
            var predicate = Predicates.Field<Student>(f => f.ClassId, Operator.Eq, classId);
            var list = base.GetList(predicate);
            return list.ToList();
        }
    }
}
