```julia
function my_function_improved(x; tolerance = 1e-15)
  abs_x = abs(x)
  if abs_x < tolerance
    return 0.0  #Handle values very close to zero
  elseif x > 0
    return x^2
  else
    return -x^2
  end
end

println(my_function_improved(2))
println(my_function_improved(-2))
println(my_function_improved(1e-10))
println(my_function_improved(-1e-10))
println(my_function_improved(1e-16)) # Now handles this case correctly
```