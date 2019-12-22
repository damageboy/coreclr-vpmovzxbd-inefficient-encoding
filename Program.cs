using System;
using System.Runtime.CompilerServices;
using System.Runtime.Intrinsics;
using System.Runtime.Intrinsics.X86;
using static System.Runtime.Intrinsics.X86.Avx;
using static System.Runtime.Intrinsics.X86.Avx2;
using static System.Runtime.Intrinsics.X86.Popcnt;
using static System.Runtime.Intrinsics.X86.Bmi2.X64;


namespace superfluous_mov
{
    class Program
    {

	static byte[] _leTable = {
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,
		0,1,2,3,4,5,6,7,	};
        static unsafe void Main(string[] args)
        {
            Console.WriteLine(BugBugBug());
	    Console.ReadLine();
        }

        [MethodImpl(MethodImplOptions.AggressiveOptimization)]
        unsafe static ulong BugBugBug()
        {
            var N = Vector256<int>.Count;
	    var r = new Random(666);

	    Vector256<int> x;
	    fixed (byte *p = &_leTable[0]) {
		    var i0 = PopCount((uint) r.Next(0,8));
		    var i1 = PopCount((uint) r.Next(0,8));
		    var i2 = PopCount((uint) r.Next(0,8));
		    var i3 = PopCount((uint) r.Next(0,8));
		    x = Add(
			    ConvertToVector256Int32(p + i0 * 8), Add(
				    ConvertToVector256Int32(p + i1 * 8), Add(
					    ConvertToVector256Int32(p + i2 * 8),
						    ConvertToVector256Int32(p + i3 * 8))));
            
            }
            
            return (uint) x.GetElement(0);
        }
    }
}
