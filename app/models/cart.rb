class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

  def add_item(item_id, how_many_to_add=1)
    current_item = self.line_items.find_by_item_id(item_id)
    if current_item
      current_item.quantity += how_many_to_add
    else
      current_item = self.line_items.build(:item_id => item_id)
    end
    current_item
  end

  def delete_item(item_id)
    current_line_item = self.line_items.find_by_item_id(item_id)
    if current_line_item
      quantity=current_line_item.quantity
      if quantity > 1
        current_line_item.update_attributes(:quantity => quantity-1)
        current_line_item.save
      end
      if quantity==1
        current_line_item.destroy
      end
    end
  end
end
