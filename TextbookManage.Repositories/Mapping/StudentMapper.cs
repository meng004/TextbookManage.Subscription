using DapperExtensions.Mapper;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapping
{
    public class StudentMapper : ClassMapper<Student>
    {
        public StudentMapper()
        {
            Table("Base_Student");

            Map(t => t.Id).Key(KeyType.Guid).Column("StudentID");

            Map(t => t.Name).Column("StudentName");

            Map(t => t.Num).Column("StudentNo");

            Map(t => t.ProfessionalClass_Id).Column("ClassID");

            Map(t => t.Gender).Column("Sex");

            AutoMap();

        }
    }
}
