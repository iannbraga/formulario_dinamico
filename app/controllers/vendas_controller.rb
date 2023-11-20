class VendasController < ApplicationController
    
    def index 
      @vendas = Venda.all
    end
    
    def new
      @venda = Venda.new
    end
  
    def create
      @venda = Venda.new(venda_params)
      if @venda.save
        # Implemente a lógica de redirecionamento ou renderização desejada
      else
        render :new
      end
    end
  
    private
  
    def venda_params
      params.require(:venda).permit(:total, itens_attributes: [:produto_id, :preco_unitario, :quantidade])
    end
  end
  