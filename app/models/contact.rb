class Contact < ActiveRecord::Base
    has_many :phones, :dependent => :destroy  
    accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true  
end
