using System.Data.Entity.ModelConfiguration;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class ProfessionalClassMapper : EntityTypeConfiguration<ProfessionalClass>
    {
        public ProfessionalClassMapper()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Name)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ProfessionalClass", "dbo");
            this.Property(t => t.Id).HasColumnName("ClassId");
            this.Property(t => t.Num).HasColumnName("ClassNum");
            this.Property(t => t.Name).HasColumnName("ClassName");
            this.Property(t => t.Grade).HasColumnName("Grade");
            this.Property(t => t.School_Id).HasColumnName("SchoolID");
   
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
