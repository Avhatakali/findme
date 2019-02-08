class AddressesController < ApplicationController

  def index
      @addresses = Address.all
  end

  def show
    @user = User.find(params[:user_id])
    @address = @user.address
  end

  def new
      @user = User.find(params[:user_id])
      @address = Address.new(user: @user)
  end

  def create
      @user = User.find(params[:user_id])
      @address = Address.new(address_params)

      @address.user = @user
      if @address.save
        redirect_to users_path
      else
        render 'new'
      end
  end

  private
    def address_params
        params.require(:address).permit(:number, :street, :suburb, :city)
    end
end
