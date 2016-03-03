require "van"

describe Van do
  let(:good_bike) {double(:bike, working?: true)}
  let(:bad_bike) {double(:bike, working?: false)}
  let(:station) {double(:DockingStation, bikes: [good_bike, bad_bike])}

  it "has the collect bikes method" do
    expect(subject).to respond_to(:collect_broken_bikes).with(1).argument
  end

  it "should be access the broken bikes in the Docking Station" do
    allow(station).to receive(:bikes=)
    expect(subject.collect_broken_bikes station).to eq [bad_bike]
  end
  #it "collects broken bikes from Docking Station" do
  #end
end
