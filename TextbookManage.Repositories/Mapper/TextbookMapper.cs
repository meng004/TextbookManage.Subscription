using DapperExtensions.Mapper;
using TextbookManage.Domain;

namespace TextbookManage.Repositories.Mapper
{
    public class TextbookMapper : ClassMapper<Textbook>
    {
        public TextbookMapper()
        {
            Table("Textbook");
            Map(t => t.Id).Column("TextbookID");
            Map(t => t.Num).Column("TextbookNum");
            Map(t => t.Name).Column("TextbookName");
            AutoMap();
        }
    }
}
