require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'should receive 3 parameters' do
      initialize_parameters_count = Citizen.allocate.method(:initialize).arity
      expect(initialize_parameters_count).to eq 3
    end
  end
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old or more" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if the citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end
end
