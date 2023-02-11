class Route
    attr_reader :stations
  
    def initialize(first, last)
      @stations = [first, last]
    end
  
    def add_station(sname)
        stations.insert(-2, sname)
    end
  
    def show_allstations
      puts @stations
    end
  
    def delete_station(name)
        @stations.delete(name)
    end
  end