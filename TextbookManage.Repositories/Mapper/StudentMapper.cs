using System.Data.Entity.ModelConfiguration;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class StudentMapper : EntityTypeConfiguration<Student>
    {
        public StudentMapper()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Name)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Student", "dbo");
            this.Property(t => t.Id).HasColumnName("StudentId");
            this.Property(t => t.Num).HasColumnName("StudentNum");
            this.Property(t => t.Name).HasColumnName("StudentName");
            this.Property(t => t.Gender).HasColumnName("Sex");
            this.Property(t => t.Class_Id).HasColumnName("ClassID");
            //this.Property(t => t.EntranceDate).HasColumnName("EntranceDate");

            // °à¼¶£ºÑ§Éú£¬1£ºN
            this.HasRequired(t => t.ProfessionalClass)
                .WithMany(t => t.Students)
                .HasForeignKey(d => d.Class_Id);

        }
    }
}
