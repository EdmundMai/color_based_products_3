class FreeShippingCoupon < Coupon
  before_save :set_value_to_zero
  
  def apply_discount(order)
    shipping_cost = order.shipping
    order.shipping = 0
    order.savings = shipping_cost
  end
  
  def value_prettified
    "Free Shipping"
  end
  
  private
  
    def set_value_to_zero
      self.value = 0.00
    end
  
end
