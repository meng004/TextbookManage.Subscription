using DapperExtensions;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using TextbookManage.Domain;
using TextbookManage.Domain.IRepositories;

namespace TextbookManage.Repositories
{
    public class StudentRepository : IStudentRepository
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
        public void Add(Student entity)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Student> GetAll()
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                conn.Open();
                var predicate = Predicates.Field<Student>(s => s.Name, Operator.Like, "李");
                var list = conn.GetList<Student>(predicate);
                conn.Close();
                return list;
            }
        }

        public void Modify(Student entity)
        {
            throw new NotImplementedException();
        }

        public void Modify(Expression<Func<Student, bool>> filterExpression, Expression<Func<Student, Student>> updateExpression)
        {
            throw new NotImplementedException();
        }

        public void Remove(Student entity)
        {
            throw new NotImplementedException();
        }

        public void Remove(Expression<Func<Student, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public Student Single(Expression<Func<Student, bool>> expression)
        {
            throw new NotImplementedException();
        }
    }
}
