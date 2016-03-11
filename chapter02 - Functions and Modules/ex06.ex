# Import

# The import tells Elixir that all of the functions and macros
# (except those starting with underscore) in the Convert module
# should be available without prefixes in this module.

defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
end

defmodule Convert do
  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kph(mps) do
    3.6 * mps
  end
end

defmodule Combined do
  import Convert

  def height_to_kph(meters) do
    Drop.fall_velocity(meters) |> mps_to_kph
  end
end