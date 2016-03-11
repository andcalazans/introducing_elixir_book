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
  def height_to_kph(meters) do
    Convert.mps_to_kph(Drop.fall_velocity(meters))
  end
end