class VendasController < ApplicationController
  def index
    @vendas = Venda.all
  end

  def new
    @venda = Venda.new
    @venda.itens.build
  end

  def create
    @venda = Venda.new(venda_params)
    @venda.itens = :itens
    if @venda.save
      redirect_to vendas_path
    else
      render :new
    end
  end

  private

  def venda_params
    params.require(:venda).permit(:total, :itens[:item_attributes[:produto_id, :preco_unitario, :quantidade]])
  end
end
