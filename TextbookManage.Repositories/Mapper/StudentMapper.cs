
using DapperExtensions.Mapper;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class StudentMapper : ClassMapper<Student>
    {
        public StudentMapper()
        {
            // Primary Key


            // Table & Column Mappings
            this.Table("Student");
            this.Map(t => t.Id).Key(KeyType.Assigned).Column("StudentId");
            //this.Map(t => t.Id).Column("StudentId");
            this.Map(t => t.Num).Column("StudentNum");
            this.Map(t => t.Name).Column("StudentName");
            this.Map(t => t.ClassId).Column("ClassID");
            //this.Map(t => t.ProfessionalClass).Ignore();
            //this.Map(t => t.EntranceDate).Column("EntranceDate");
            AutoMap();
        }
    }
}
