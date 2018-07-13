
using DapperExtensions.Mapper;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class StudentMapper : ClassMapper<Student>
    {
        public StudentMapper()
        {
            // Primary Key
            this.Map(t => t.Id).Key(KeyType.Guid).Column("StudentId");
            
            // Table & Column Mappings
            this.Table("Student");
            this.Map(t => t.Id).Column("StudentId");
            this.Map(t => t.Num).Column("StudentNum");
            this.Map(t => t.Name).Column("StudentName");
            this.Map(t => t.Gender).Column("Sex");
            this.Map(t => t.Class_Id).Column("ClassID");
            //this.Map(t => t.EntranceDate).Column("EntranceDate");
            AutoMap();
        }
    }
}
