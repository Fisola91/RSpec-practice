require "boutique_inventory"

RSpec.describe BoutiqueInventory do
  let(:boutique_inventory) {BoutiqueInventory.new([
    {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
    {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
    {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
    {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
  ]) }

  it "returns a list of the names of the items" do
      expect(boutique_inventory.item_names).to eq([
        "Bamboo Socks Cats",
        "Black Short Skirt",
        "Maxi Brown Dress",
        "Red Short Skirt"])
  end

  it "returns any item that cost less than $30" do
    expect(boutique_inventory.cheap).to match_array([
      {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
      {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}])
  end
end
