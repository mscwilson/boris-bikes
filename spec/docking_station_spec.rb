require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do
  it {should respond_to(:release_bike) }

  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
  
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "bikes cannot be docked as station is full" do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike) }.to raise_error("Bikes cannot be docked - station is full!")
  end

  it "no bikes available" do
    expect { subject.release_bike }.to raise_error("No bikes available!")
  end

end
