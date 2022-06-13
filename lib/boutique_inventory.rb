class BoutiqueInventory
  def initialize (boutique_inventory = [])
    @items = boutique_inventory
  end

  def item_names
    @items.map do |item|
      item[:name]
    end.sort

  end
end