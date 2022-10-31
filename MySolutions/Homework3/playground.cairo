%builtins output

// Import the serialize_word() function.
from starkware.cairo.common.serialize import serialize_word
func main{output_ptr: felt*}() {
    alloc_locals;
    let (local x) = square(5);
    
    serialize_word(x);
    return ();
}

func square(value) -> (felt) {
    return (value * value,);
}