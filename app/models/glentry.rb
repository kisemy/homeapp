class Glentry < ApplicationRecord

  #scopes

  # associations
  #has_many :invoice_line_glentries

  belongs_to :company
  has_many :company_entities, :as => :entity

 
end
    
 

  
 



