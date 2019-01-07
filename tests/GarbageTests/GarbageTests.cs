using Waste;
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

        [Fact]
        public void TestThatExercisesAnotherLibrary()
        {
            var w = new Waste.Waste();

            var result = w.Subtract(10, 8);

            Assert.Equal(2, result);
        }
    }
}
