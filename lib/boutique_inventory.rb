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

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
    @items.find {|item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    @items.map {|item| item[:quantity_by_size].values.sum}.sum
  end

end
