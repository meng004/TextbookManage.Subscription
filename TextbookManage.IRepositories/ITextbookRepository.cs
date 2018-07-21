
using System.Collections.Generic;
using TextbookManage.Domain;

namespace TextbookManage.IRepositories
{
    public interface ITextbookRepository : IBaseRepository<Textbook>
    {
        IEnumerable<Textbook> GetByName(string textbookName);

        IEnumerable<Textbook> GetByIsbn(string isbn);
    }
}
