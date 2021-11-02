require 'rails_helper'

RSpec.describe Transaction, :type => :model do
  it "is valid with valid attributes" do
    t = Transaction.new
    t.user_name = "testuser"
    t.group_name = "testgroup"
    t.trans_number = 1000
    t.trans_type = "Food"
    t.group_member = "unknown"
    t.trans_date = DateTime.now
    expect(t).to be_valid
  end

  it "is not valid without a user_name" do
    t = Transaction.new(user_name: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a group_name" do
    t = Transaction.new(group_name: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a trans_number" do
    t = Transaction.new(trans_number: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a trans_type" do
    t = Transaction.new(trans_type: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a group_member" do
    t = Transaction.new(group_member: nil)
    expect(t).to_not be_valid
  end

  it "is not valid without a trans_date" do
    t = Transaction.new(trans_date: nil)
    expect(t).to_not be_valid
  end
end