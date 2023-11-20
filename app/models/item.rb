class Item < ApplicationRecord
  belongs_to :produto
  belongs_to :venda, optional: true
end
