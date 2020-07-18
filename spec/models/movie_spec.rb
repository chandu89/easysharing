require 'rails_helper'

RSpec.describe Movie, :type => :model do
 subject {
    FactoryGirl.create(:movie) 
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a video_url" do
    subject.video_url = nil
    expect(subject).to_not be_valid
  end
end