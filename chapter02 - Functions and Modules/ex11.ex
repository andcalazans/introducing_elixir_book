# Documenting Functions

defmodule Drop do
@doc """
Calculates the velocity of an object falling on Earth.
"""

@spec fall_velocity(number()) :: number()

  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
end