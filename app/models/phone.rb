class Phone < ActiveRecord::Base
  
  PTYPE = %w[Celular Comercial Fax Residencial]
  belongs_to :contact
  
  def phone_type=(ptype)
    self.ptype = PTYPE.index(ptype)
  end
  
  def phone_type
    PTYPE[self.ptype] if ptype
  end
      
end
