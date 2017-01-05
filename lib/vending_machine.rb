class VendingMachine

attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    inventory << snack
  end

  def snacks_by_name
    inventory.map do |snack|
      snack.name
    end
  end

  def how_many_snacks
    inventory.group_by do |snack|
      snack.quantity
    end
  end

  def inventory_by_alphabet
    inventory.group_by do |snack|
      snack.name.chr
    end
  end

  def total_num_items
    inventory.each do |snack|
      snack.quantity
    end
  end

end
