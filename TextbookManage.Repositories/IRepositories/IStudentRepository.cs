using System.Collections.Generic;

namespace TextbookManage.Domain.IRepositories
{
    public interface IStudentRepository 
    {
        IEnumerable<Student> GetByClassId(string classId);
    }
}
