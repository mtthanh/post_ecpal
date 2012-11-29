class Order < ActiveRecord::Base
  attr_accessible :id, :order_date, :order_number, :status, :total
  
  STATUS_PENDING = "0001";
  STATUS_SHIPPING = "0002";
  STATUS_SHIPPED = "0003";
  STATUS_RETURNED = "0004";
  STATUS_CANCELED = "0005";
  STATUS_CLOSED = "0006";
  
  STATUS = {
    STATUS_PENDING => "pending",
    STATUS_SHIPPING => "shipping",
    STATUS_SHIPPED => "shippped",
    STATUS_RETURNED => "returned",
    STATUS_CANCELED => "cancel",
    STATUS_CLOSED => "closed"
  }
end
