require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do
  it {should respond_to(:release_bike) }

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
