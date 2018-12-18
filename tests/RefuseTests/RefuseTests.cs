﻿using System;
using FluentAssertions;
using System.Collections.Generic;
using System.Linq;
using Refuse;
using Xunit;
using System.Collections;
using System.Reflection.PortableExecutable;

namespace RefuseTests
{
    public class RefuseTests : IDisposable
    {
        private const string ConnString = @"Data Source=DADESKTOP\SQLEXPRESS;
                                            Initial Catalog=TestDb;
                                            Integrated Security=True;";
        private readonly int _idToTest;

        public RefuseTests()
        {
            var userName = Environment.GetEnvironmentVariable("unitTestDbUser");
            var garbage = Environment.GetEnvironmentVariable("thisDoesNotExist");
            var password = Environment.GetEnvironmentVariable("unitTestDbPassword");

            Console.WriteLine("user name: {0}", userName);
            Console.WriteLine("user name: {0}", garbage);
            Console.WriteLine("test output here mofo");

            var r = new Refuse.Refuse();

            var row = new TestRows();

            _idToTest = r.InsertRow(row, ConnString);
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
