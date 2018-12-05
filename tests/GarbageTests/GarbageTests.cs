using Xunit;
namespace GarbageTests
{
    public class GarbageTests
    {
        [Fact]
        public void CanAddTest()
        {
            var g = new Garbage.Garbage();

            var result = g.Add(2, 3);

            Assert.Equal(5, result);

        }
    }
}
