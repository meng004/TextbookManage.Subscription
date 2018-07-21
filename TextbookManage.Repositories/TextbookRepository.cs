using System.Collections.Generic;
using System.Linq;
using DapperExtensions;
using TextbookManage.Domain;
using TextbookManage.IRepositories;

namespace TextbookManage.Repositories
{
    public class TextbookRepository : BaseRepository<Textbook>, ITextbookRepository
    {
        public IEnumerable<Textbook> GetByName(string textbookName)
        {
            var predicate = Predicates.Field<Textbook>(f => f.Name, Operator.Like, textbookName);
            var list = GetList(predicate);
            return list.ToList();
        }

        public IEnumerable<Textbook> GetByIsbn(string isbn)
        {
            var predicate = Predicates.Field<Textbook>(f => f.Isbn, Operator.Like, isbn);
            var list = GetList(predicate);
            return list.ToList();
        }
    }
}
