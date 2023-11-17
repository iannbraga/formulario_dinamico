class Venda < ApplicationRecord
    has_many :itens
    accepts_nested_attributes_for :itens

end
