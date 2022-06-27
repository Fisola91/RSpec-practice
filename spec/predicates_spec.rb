require "predicates"
RSpec.describe PredicateEnumerables do
  describe "cofee drink exercise" do
    drink_list = ["coffee", "espressor", "calsberg"]
    it "returns true when coffee is included" do
      drink_list = ["coffee", "espressor", "calsberg"]
      expect(subject.coffee_drink?(drink_list)).to be true
    end
    it "returns true when espresso is included" do
      drink_list = ["tea", "espresso", "calsberg"]
      expect(subject.coffee_drink?(drink_list)).to be true
    end

    it "returns false when espresso and coffee is not included" do
      drink_list = ["tea", "wine", "coke"]
      expect(subject.coffee_drink?(drink_list)).to be false
    end

    it "returns false when drink_list is empty" do
      drink_list = []
      expect(subject.coffee_drink?(drink_list)).to be false
    end
    # it "returns true when guess_list equals the answer" do
    #   guess_list = [ 2, 4, 10, 45, 2]
    #   number = 10
    #   expect(subject.correct_guess?(guess_list, number)).to be true
    # end
  end
end
