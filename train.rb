class Train
    attr_accessor :speed
    attr_accessor :current_station
    attr_reader :route
  
    def initialize(number)
      @wagons = []
      @speed = 0
      @number = number
    end
  
    def break_speed
      self.speed = 0
    end

    def show_wagons
      puts @wagons
    end
  
    def route=(route)
      @route = route
      @current_station = route.stations.first
    end
  
    def move_forward
      route.stations.each_with_index do |station, index|
        next unless station == current_station
        next if index == route.stations.size - 1
        self.current_station = route.stations[index + 1]
        break
        end
    end
  
    def move_back
      route.stations.each_with_index do |station, index|
        next unless station == current_station
        next if index.zero?
        self.current_station = route.stations[index - 1]
        
      end
    end
  end