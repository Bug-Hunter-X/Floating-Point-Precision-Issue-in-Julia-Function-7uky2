```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x^2 
  end
end

println(my_function(2)) # Output: 4
println(my_function(-2)) # Output: -4

#Unexpected behavior when using a floating-point number close to zero
println(my_function(1e-10))  #Output: 1e-20
println(my_function(-1e-10)) #Output: -1e-20

#The issue is with floating point precision.  For values very close to zero, the squared value might be rounded down to zero, leading to unexpected results. 
```