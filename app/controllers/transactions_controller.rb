class TransactionsController < ApplicationController

  before_action :set_item, only: [:new, :create]

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transction_params)
    @transaction.item = @item
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
