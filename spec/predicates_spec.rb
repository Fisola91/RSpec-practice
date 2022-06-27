require "predicates"
RSpec.describe PredicateEnumerables do
  it "returns true when drink list contain the string coffee" do
    drink_list = ["coffee", "espressor", "calsberg"]
    expect(subject.coffee_drink?(drink_list)).to be true
  end
end
