class Order < ActiveRecord::Base
  attr_accessible :id, :order_date, :order_number, :status, :total
end
