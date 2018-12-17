using Xunit;

namespace RefuseTests
{
    public class RefuseTests
    {
        [Fact]
        public void CanMultiplyTest()
        {
            var r = new Refuse.Refuse();
            
            Assert.Equal(8, r.Multiply(4, 2));
        }
    }
}
