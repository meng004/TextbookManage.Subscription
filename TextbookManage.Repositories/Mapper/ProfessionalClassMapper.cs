using DapperExtensions.Mapper;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class ProfessionalClassMapper : ClassMapper<ProfessionalClass>
    {
        public ProfessionalClassMapper()
        {
            // Primary Key
            this.Map(t => t.Id).Key(KeyType.Guid).Column("ClassId");

            // Table & Column Mappings
            this.Table("ProfessionalClass");
            this.Map(t => t.Id).Column("ClassId");
            this.Map(t => t.Num).Column("ClassNum");
            this.Map(t => t.Name).Column("ClassName");
            this.Map(t => t.Grade).Column("Grade");
            this.Map(t => t.SchoolId).Column("SchoolID");
   
            //班级与学生，1：N
            //this.HasMany(t => t.Students)
            //    .WithRequired(t => t.ProfessionalClass)
            //    .HasForeignKey(t => t.Class_Id);

            // 班级：学院，N：1
            //this.HasRequired(t => t.School)
            //    .WithMany(t => t.ProfessionalClasses)
            //    .HasForeignKey(d => d.School_Id);



        }
    }
}
