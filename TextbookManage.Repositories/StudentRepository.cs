using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using TextbookManage.Domain;
using TextbookManage.Domain.IRepositories;
using Dapper;
using DapperExtensions;

namespace TextbookManage.Repositories
{
    public class StudentRepository : BaseRepository, IStudentRepository
    {
        public StudentRepository():base("test")
        {

        }

        public IEnumerable<Student> GetAll()
        {
            var students = Connection.GetList<Student>();
            return students;
        }

        public Student First()
        {

            var student = Connection.Get<Student>("0009CB1B71BC4DB6B2B57FE584A80E03");

            return student;

        }

        public IEnumerable<Student> GetByClassId(string classId)
        {
            var predicate = Predicates.Field<Student>(f => f.Class_Id, Operator.Eq, classId);
            var list = Connection.GetList<Student>(predicate);
            return list.ToList();

        }
    }
}
