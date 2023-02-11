require_relative 'route'
require_relative 'train'
require_relative 'cargo_train'
require_relative 'station'
require_relative 'passenger_wagon'
require_relative 'cargo_wagon'
require_relative 'passenger_train'

stations = {}
routes = {}
cargo_train = {}
passenger_train = {}

loop do
  puts 'Enter 1 to create station'
  puts 'Enter 2 to create train'
  puts 'Enter 3 to manage route' #чтобы сделать роут, до этого нужно создать 2 станции
  puts 'Enter 4 to appoint route to the train'
  puts 'Enter 5 to move the train'
  puts 'Enter 6 to see stations'

  x = gets.chomp.to_i

  if x == 1
    print 'Enter Station name: '
    station_name = gets.chomp
    print 'Enter key word for the station: '
    key = gets.chomp
    station = Station.new(station_name)
    stations[key] = station
    puts "Station #{station_name} created"
  end

  if x == 2
    print 'What type of train do you want to create? (Cargo/Passenger): '
    type = gets.chomp
    if type == 'cargo'
      print 'Enter number of train: '
      number = gets.chomp.to_i
      print 'Enter key word for this train: '
      key = gets.chomp
      train = CargoTrain.new(number)
      cargo_train[key] = number
      puts "Train number #{number} created"
    end

    if type == 'passenger'
      print 'Enter number of train: '
      number = gets.chomp.to_i
      print 'Enter key word for this train: '
      key=gets.chomp
      key = PassengerTrain.new(number)
      passenger_train[key] = number
      puts "Train number #{number} created"
    end
  end

  if x == 3
    print "To create new route enter 1; to manage existing route enter 2: "
      x = gets.chomp.to_i
      if x == 1
        print 'Enter first station key: '
        first_station_key = gets.chomp
        first_station = stations[first_station_key]
        print 'Enter last station key: '
        last_station_key = gets.chomp
        last_station = stations[last_station_key]
        print "Enter route number for this route: "
        route_number = gets.chomp.to_i
        route = Route.new(first_station, last_station)
        routes[route_number] = route
        puts "Route #{first_station.name}-#{last_station.name} created"
      end

      if x == 6
        print 'Enter station key: '
        station_key = gets.chomp
        if stations[station_key].is_a?(Station)
          puts stations[station_key].name
        else
          puts 'No such station'
        end
      end
    
=begin
      if x == 2
        print "To add station enter: 1; to delete station enter: 2: "
        y = gets.chomp.to_i
        if y == 1
          print "Enter key word of new station: "
          new_station_key = gets.chomp
          print "Enter Route key: "
          route_key = gets.chomp
          
        end

        if y == 2
          print "Enter name of station you want to delete: "
          delete_station = gets.chomp
          print "Enter Route name: "
          route_number = gets.chomp
          route_number.delete_station(delete_station)
        end
    end
  end

  if x == 4
    print "Enter train key word: "
    train_number = gets.chomp
    print "Enter route key word: "
    route_number = gets.chomp
    train_number.route(route_number)
  end

  if x == 5
    print "Enter train number: "
    train_number = gets.chomp
    print "Enter 1 to move forward; enter 2 to move back: "
    y = gets.chomp
    if y == 1
      train_number.move_forward
    end
    if y == 2
      train_number.move_back
    end
  end

  # if x == 6
  #   print "Enter route number: "
  #   route_number = gets.chomp
  #   route_number.stations
  # end
=end
end
end
