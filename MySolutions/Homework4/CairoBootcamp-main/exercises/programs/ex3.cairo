from starkware.cairo.common.math import unsigned_div_rem

func simple_math{range_check_ptr}() {
   // adding 13 +  14
    tempvar a = 13 + 14;

   // multiplying 3 * 6
   tempvar b = 3 * 6;

   // dividing 6 by 2
    tempvar c = 6 / 2;
   // dividing 70 by 2
    tempvar d = 70 / 2;
    tempvar e = 0;
   // dividing 7 by 2
   let (e, _) = unsigned_div_rem(7, 2);

   %{
        print(ids.a, ids.b, ids.c, ids.d, ids.e)
    %}

    return ();
}