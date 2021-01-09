require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do

  let(:bike) { double :bike }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe "#release_bike" do

    it {should respond_to(:release_bike) }

    it "returns docked bikes" do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:broken=).and_return(false)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    
    it "release working bike even if stored first" do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:broken=).and_return(false)
      bike1 = bike
      bike2 = bike
      subject.dock(bike1)
      subject.dock(bike2, true)
      expect(subject.release_bike).to eq bike1
    end

    it "doesn't release broken bike" do
      allow(bike).to receive(:broken).and_return(true)
      allow(bike).to receive(:broken=).and_return(true)
      subject.dock(bike, true)
      expect { subject.release_bike }.to raise_error "No working bikes available"
    end


    it "no bikes available" do
      expect { subject.release_bike }.to raise_error("No bikes available!")
    end

    it "releases working bikes" do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:broken=).and_return(false)
      subject.dock(bike)
      expect(subject.release_bike.broken).to eq false
    end
  end


  describe "#dock" do

    it "docks something" do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:broken=).and_return(false)

      subject.dock(bike)
      expect(subject.bikes.count).to eq 1
    end

    it {is_expected.to respond_to(:dock).with(1).arguments}

    it {is_expected.to respond_to(:dock).with(2).arguments}


    it "bikes cannot be docked as station is full at default capacity" do
      allow(bike).to receive(:broken).and_return(false)
      allow(bike).to receive(:broken=).and_return(false)
      
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error("Bikes cannot be docked - station is full!")
    end

    it "able to report broken bikes" do
      allow(bike).to receive(:broken).and_return(true)
      allow(bike).to receive(:broken=).and_return(true)
      
      subject.dock(bike, true)
      expect(bike.broken).to eq true
    end

  end

end
