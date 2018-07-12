using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using TextbookManage.Domain;
using TextbookManage.Domain.IRepositories;


namespace TextbookManage.Repositories
{
    public class StudentRepository : IStudentRepository
    {
        
        public void Add(Student entity)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Student> GetAll()
        {
            using (TextbookManageDbContext context = new TextbookManageDbContext())
            {
                var students = context.Students.ToList();
                return students;
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

        public ProfessionalClass First()
        {
            using (TextbookManageDbContext context = new TextbookManageDbContext())
            {                
                var student = context.ProfessionalClasses.FirstOrDefault(t => t.Id == "DC95791BC76B4E99A41FD887BAACFC61");
                
                return student;
            }
        }


    }
}
