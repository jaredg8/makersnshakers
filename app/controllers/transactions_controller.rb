class TransactionsController < ApplicationController

  before_action :set_item, only: [:new, :create]

  def new
    @transaction = Transaction.new(transaction_params)
    @transaction.item = @item
    @transaction.start_date = params[:transaction][:start_date].to_date
    @transaction.end_date = params[:transaction][:end_date].to_date



    respond_to do |format|
      format.js
      format.html { render :new  }

    end
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.start_date = params[:start_date].to_date
    @transaction.end_date = params[:end_date].to_date
    @transaction.item = @item
    @transaction.user = current_user

    if @transaction.save
      redirect_to root_path
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
    params.permit(:start_date, :end_date)
  end
end
