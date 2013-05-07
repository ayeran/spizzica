#!/bin/env ruby
# encoding: utf-8
class Item < ActiveRecord::Base
  has_many :ordercontents
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_ordercontent
  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_ordercontent
    if ordercontents.count.zero?
      return true
    else
      errors.add(:base, "L'oggetto è presente in un contenuto di un ordine e quindì non può essere eliminato.")
      return false
  end

  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors.add(:base, "L'oggetto è presente in un contenuto di un carrello e quindì non può essere eliminato.")
    end
  end

  end

  def specify
    self.name.classify.constantize.find(self.iid)
  end
end
