class Product < ActiveRecord::Base
  store_accessor :properties, :author, :rating, :runtime
  validates :runtime, numericality: true, allow_blank: true
end
