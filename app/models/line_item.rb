class LineItem < ActiveRecord::Base
   belongs_to :order
   belongs_to :product
   belongs_to :cart
   def total_price
    if product.price
       product.price = product.price * quantity
     else
        0.to_d
     end
   end
end
