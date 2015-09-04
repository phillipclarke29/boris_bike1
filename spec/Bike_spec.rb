require "Bike"

describe Bike do
  it {is_expected.to respond_to :working?}

  it 'reports a broken bike' do
    expect(subject).to respond_to :report_broken
  end
  it 'changes the bikes\'s status to be broken' do
  subject=Bike.new
  subject.report_broken
  expect( subject.working? ).to eql (false)
  end
end
