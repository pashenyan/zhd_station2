class CargoTrain < Train
  def add_wagon(cargowagon)
    if cargowagon.is_a?(CargoWagon)
      @wagons << cargowagon
      puts @wagons
    else
      puts 'Wrong wagon type'
    end
  end
end
