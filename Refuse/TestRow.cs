using System;
using System.Data.SqlTypes;

namespace Refuse
{
    public class TestRow
    {
        public TestRow()
        {
            SomeDate = (DateTime)SqlDateTime.MinValue;
            SomeDateTime = (DateTime)SqlDateTime.MinValue;
            SomeNullableText = "some non-null text";
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
