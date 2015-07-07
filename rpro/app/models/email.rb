class Email < ActiveRecord::Base
  attr_accessible :Body, :From, :To
end
