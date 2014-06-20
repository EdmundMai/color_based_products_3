class PercentageCoupon < Coupon
  def apply_discount(order)
    order.savings = order.subtotal * self.value / 100.00
    order.subtotal = order.subtotal * (100.00 - self.value) / 100.00
  end
  
  def value_prettified
    "#{self.value.to_i}%"
  end
  
end
