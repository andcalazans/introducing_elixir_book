fall_velocity = fn(distance) ->
	:math.sqrt(2 * 9.8 * distance)
end

IO.puts("Anonymous function")
IO.puts fall_velocity.(20)
IO.puts fall_velocity.(200)
IO.puts fall_velocity.(2000)


# & (Capture Operator)
# It's easier to use parameters
fall_velocity = &(:math.sqrt(2 * 9.8 * &1))

IO.puts("\nCapture Operator")
IO.puts fall_velocity.(20)
IO.puts fall_velocity.(200)
IO.puts fall_velocity.(2000)