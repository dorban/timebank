class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    #@user.email = ''#@user.login + "@alicetobob.com"
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default profile_url
    else
      render :action => :new
    end
  end
  
  def show
    @user = @current_user
    
    now = Date.today
    year = now.year - @user.birthday.year

    if (@user.birthday+year.year) > now
      year = year - 1
    end
    @age=year
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to profile_url
    else
      render :action => :edit
    end
  end
end
