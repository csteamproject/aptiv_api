class Ticket < ApplicationRecord
  belongs_to :item

  def self.find_by_user(current_user)
    @tickets = select('*').from('items i, tickets t').where("t.item_id = i.id and i.checkout_user_id = #{current_user.id}")
  end
end
