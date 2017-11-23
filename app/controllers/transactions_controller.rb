class TransactionsController < ApplicationController

  before_action :set_item, only: [:new, :create]

  def new
    @transaction = Transaction.new(transaction_params)
    @transaction.item = @item
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.item = @item
    @transaction.user = current_user

    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def transaction_params
    params.require(:transaction).permit(:start_date, :end_date, :user_id)
  end
end
