# Documenting Code

# convenience functions!
defmodule Combined do
  def height_to_mph(meters) do # takes meters, returns mph
    Convert.mps_to_mph(Drop.fall_velocity(meters))
  end
end