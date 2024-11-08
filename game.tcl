
source math.tcl

# Global variables to hold values of a and b
set a 0
set b 0

# Procedure to set values of a and b
proc set_values {x y} {
    global a b
    set a $x
    set b $y
}

# Reward function
proc reward {} {
    global a b

    # Calculate the addition and multiplication
    set sum [add $a $b]
    set product [multiply $a $b]

    # Check the conditions for reward
    if {$sum > 4 && $product >= 6} {
        puts "Great! You have won a reward."
    return 100;
    } else {
        puts "Oh oh, better luck next time."
    return 0;
    }
}

set_values 2 3
reward
