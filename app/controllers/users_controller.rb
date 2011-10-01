class UsersController < ApplicationController

  def new
    @title = "Sign up"
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end

  end
  
  def index 
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @Title = @user.name
  end
  
  def edit
    @user = User.find(params[:id])
    @Title = @user.name
  end
  
  # PUT /tracks/1
  # PUT /tracks/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:track])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
