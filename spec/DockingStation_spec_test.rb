require_relative "../lib/Docking_Station"
require "Bike"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should release a working bike' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error if you try and release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock bike
      #b = double(:bike, working?:false )
      #subject.dock b
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
    subject.capacity.times {subject.dock Bike.new}
    expect { subject.dock Bike.new}.to raise_error "Docking Station Full"
    end
  end


end
