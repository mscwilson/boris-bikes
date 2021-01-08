require 'bike'

describe Bike do
  it { should respond_to(:working?) }

  it "has a broken attribute" do
    expect(subject).to respond_to :broken
  end
end