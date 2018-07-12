namespace TextbookManage.Repositories
{

    using System.Data.Entity;
    using TextbookManage.Domain;
    using TextbookManage.Repositories.Mapper;

    public class TextbookManageDbContext : DbContext
    {

        #region 构造函数

        static TextbookManageDbContext()
        {
            Database.SetInitializer<TextbookManageDbContext>(null);
        }

        public TextbookManageDbContext()
            : base("test")
        {
        }

        #endregion

        #region 模型集合

        //教材数据集
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<ProfessionalClass> ProfessionalClasses { get; set; }



        #endregion

        #region 模型映射

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //教材对象映射
            modelBuilder.Configurations.Add(new StudentMapper());
            modelBuilder.Configurations.Add(new ProfessionalClassMapper());

            //base.OnModelCreating(modelBuilder);
        }
        #endregion

    }
}
