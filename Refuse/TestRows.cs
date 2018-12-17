using Dapper.Contrib.Extensions;
using System;
using System.Data.SqlTypes;

namespace Refuse
{
    [Table("TestRows")]
    public class TestRows
    {
        public TestRows()
        {
            Id = 1;
            SomeDate = (DateTime)SqlDateTime.MinValue;
            SomeDateTime = (DateTime)SqlDateTime.MinValue;
            SomeNullableText = "some non-null text";
            SomeText = "oh boy";
            SomeMoney = 0.01M;
        }

        public int Id { get; set; }
        public string SomeText { get; set; }
        public bool SomeBit { get; set; }
        public DateTime SomeDate { get; set; }
        public DateTime SomeDateTime { get; set; }
        public Guid SomeGuid { get; set; }
        public decimal SomeMoney { get; set; }
        public string SomeNullableText { get; set; }

    }
}
