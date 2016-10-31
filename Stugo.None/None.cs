using System.Threading.Tasks;

namespace Stugo
{
    public struct None
    {
        public static readonly None Value = new None();
        public static readonly Task VoidTask = Task.FromResult(Value);


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