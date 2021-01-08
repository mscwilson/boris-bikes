require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do
  it {should respond_to(:release_bike) }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "docks something" do
    subject.dock(Bike.new)
    expect(subject.bikes.count).to eq 1
  end

  it {is_expected.to respond_to(:dock).with(1).arguments}

  it {is_expected.to respond_to(:dock).with(2).arguments}
  
  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "bikes cannot be docked as station is full at default capacity" do
    20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Bikes cannot be docked - station is full!")
  end

  it "bikes cannot be docked as station is full (1 space)" do
    station = DockingStation.new(1)
    station.dock(Bike.new)
    expect { station.dock(Bike.new) }.to raise_error("Bikes cannot be docked - station is full!")
  end

  it "no bikes available" do
    expect { subject.release_bike }.to raise_error("No bikes available!")
  end

  # it "able to report broken bikes" do
  #   bike = Bike.new
  #   expect { subject.dock }
  # end

end
