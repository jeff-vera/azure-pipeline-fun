﻿using System;
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

        private readonly int? _idToTest;

        public RefuseTests()
        {
            var userName = Environment.GetEnvironmentVariable("unitTestDbUser");
            var password = Environment.GetEnvironmentVariable("unitTestDbPassword");

            if (userName != null && userName.Length > 0)
            {
                Console.WriteLine("building connection string for pipeline");
                ConnString = BuildConnectionStringForPipeline(userName, password);
            }
            else
            {
                Console.WriteLine("building connection string for local");
                ConnString = BuildConnectionStringForLocal();
            }

            Console.WriteLine(ConnString);

            var r = new Refuse.Refuse();

            var row = new TestRows();
            row.Id = 42;

            _idToTest = r.InsertRow(row, ConnString);
        }

        private string BuildConnectionStringForPipeline(string userName, string password)
        {            
            return String.Format(@"Data Source=jeff-vera-discovery.database.windows.net;
                                    Database=TestDb;
                                    User Id={0};
                                    Password={1}", userName, password);
        }

        private string BuildConnectionStringForLocal()
        {
            return @"Data Source=DADESKTOP\SQLEXPRESS;
                    Initial Catalog=TestDb;
                    Integrated Security=True;";
        }

        [Fact(Skip="b/c this is dumb")]
        public void CanMultiplyTest()
        {
            var r = new Refuse.Refuse();
            
            Assert.Equal(8, r.Multiply(4, 2));
        }

        [Fact(Skip="b/c this is dumb")]
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
