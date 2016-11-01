using System.Threading.Tasks;

namespace Stugo
{
    public struct None
    {
        public static readonly None Value = new None();
#if NET45
        public static readonly Task VoidTask = Task.FromResult(Value);
#endif

        public override bool Equals(object obj)
        {
            return obj is None;
        }


        public override int GetHashCode()
        {
            return 0;
        }


        public override string ToString()
        {
            return "nothing";
        }
    }
}