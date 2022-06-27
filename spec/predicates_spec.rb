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

    describe "correct guess" do
      it "returns true when guess_list equals the number" do
        guess_list = [2, 4, 10, 45, 2]
        number = 10
        expect(subject.correct_guess?(guess_list, number)).to be true
      end
      it "returns false when guess_list not equal thr number" do
        guess_list = [1, 2, 3, 4, 5]
        number = 6
        expect(subject.correct_guess?(guess_list, number)).to be false
      end
      it "returns false when the guess list is empty" do
        guess_list = []
        number = 6
        expect(subject.correct_guess?(guess_list, number)).to be false
      end
    end

    describe "twenty first century years" do
      it "returns true for years between 2001 and 2100" do
        year_list = [2003, 2004, 2007, 2010, 2025, 2030, 2040]
        expect(subject.twenty_first_century_years?(year_list)).to be true
      end

      it "returns false for years outside the year range" do
        year_list = [2003, 2004, 2007, 2010, 2025, 2030, 2040, 2110]
        expect(subject.twenty_first_century_years?(year_list)).to be false
      end

    end


  end
end
