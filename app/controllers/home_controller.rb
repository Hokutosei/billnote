class HomeController < ApplicationController
  def index
    @mybills = Mybill.all(:conditions => {:user_id => current_user.id})
    respond_to do |format|
      format.html
    end
  end

  def showmybills
    @user = current_user
    @mybills = Mybill.all(:conditions => {:user_id => @user.id})
    respond_to do |format|
      format.js
    end
  end

  def home
    respond_to do |format|
      format.js
    end
  end

  def change_payment
    @user_item = Mybill.find(params[:id])
    #return @user_item
    respond_to do |format|
      format.js
    end
  end

end
