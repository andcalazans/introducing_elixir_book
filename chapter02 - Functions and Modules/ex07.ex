# Import - Erlang

# Importing entire modules might create conflicts with function names
# you are already using in your own module, so Elixir lets you specify
# which functions you want with the only argument.
# For example, to get just the sqrt function, you could use:

defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end
end

# Import for one espefic function in the module:

# defmodule Drop do
#   def fall_velocity(distance) do
#     import :math, only: [sqrt: 1]
#     sqrt(2 * 9.8 * distance)
#   end
# end

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