require 'rails_helper'

RSpec.describe Group, :type => :model do
  it "is valid with valid attributes" do
    t = Group.new
    t.user_name = "testuser"
    t.group_name = "testgroup"
    t.group_type = "Food"
    t.group_member = "unknown"
    t.group_date = DateTime.now
    expect(t).to be_valid
  end

  it "is not valid without a user_name" do
    t = Group.new(user_name: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a group_name" do
    t = Group.new(group_name: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a group_member" do
    t = Group.new(group_member: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a group_date" do
    t = Group.new(group_date: nil)
    expect(t).to_not be_valid
  end
end