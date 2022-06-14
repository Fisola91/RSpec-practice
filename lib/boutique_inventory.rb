class BoutiqueInventory
  def initialize (boutique_inventory = [])
    @items = boutique_inventory
  end

  def item_names
    @items.map { |item| item[:name]}.sort
  end

  def cheap
    @items.select {|item| item[:price] < 30}
  end

end
