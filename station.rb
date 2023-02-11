  class Station
    attr_reader :name
    def initialize(name)
      @name = name
      @trains = []
    end
  
    def show_trains
      puts @trains
    end

    def add_cargo_train(cargo_train)
      @trains << cargo_train
    end

    def add_passenger_train(passenger_train)
        @trains << passenger_train
      end
  
    
    def show_type(type)
      @trains.select(type)
    end
  
    
    def delete(train)
      @trains.delete(train)
    end
  end