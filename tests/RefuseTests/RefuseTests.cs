using System;
using FluentAssertions;
using System.Collections.Generic;
using System.Linq;
using Refuse;
using Xunit;

namespace RefuseTests
{
    public class RefuseTests : IDisposable
    {
        private string ConnString;

        private readonly int _idToTest;

        public RefuseTests()
        {
            var password = Environment.GetEnvironmentVariable("unitTestDbPassword");

            if (password != null && password.Length > 0)
            {
                Console.WriteLine("building connection string for pipeline");
                ConnString = BuildConnectionStringForPipeline(password);
            }
            else
            {
                Console.WriteLine("building connection string for local");
                ConnString = BuildConnectionStringForLocal();
            }

            Console.WriteLine(ConnString);

            var r = new Refuse.Refuse();

            var row = new TestRows();

            _idToTest = r.InsertRow(row, ConnString);
        }

        private string BuildConnectionStringForPipeline(string password)
        {
            
            return String.Format(@"Data Source=jeff-vera-discovery.database.windows.net;
                                    Initial Catalog=TestDb;
                                    User Id=holyhellbatman;
                                    Password={0}", password);
        }

        private string BuildConnectionStringForLocal()
        {
            return @"Data Source=DADESKTOP\SQLEXPRESS;
                    Initial Catalog=TestDb;
                    Integrated Security=True;";
        }

        [Fact]
        public void CanMultiplyTest()
        {
            var r = new Refuse.Refuse();
            
            Assert.Equal(8, r.Multiply(4, 2));
        }

        [Fact]
        public void CanDoDbWorkTest()
        {
            var r = new Refuse.Refuse();

            List<TestRows> result = r.DoDbWork(ConnString).ToList();

            result.Should().NotBeNull();
            result.Should().HaveCountGreaterThan(0);
        }

        public void Dispose()
        {
            var r = new Refuse.Refuse();
            
            r.DeleteRows(ConnString);
        }
    }
}
