using System.Collections.Generic;
using TextbookManage.Domain;


namespace TextbookManage.IRepositories
{
    public interface IStudentRepository : IBaseRepository<Student>
    {
        IEnumerable<Student> GetByClassId(string classId);
    }
}
