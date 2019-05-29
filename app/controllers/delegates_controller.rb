class DelegatesController < ApplicationController
  def index
    @delegates = Delegate.where(user: current_user)
    @delegate = Delegate.new
  end

  def edit
    @delegate = Delegate.find(params[:id])
  end

  def update
    @delegate = Delegate.find(params[:id])
    @delegate.update(delegate_params)
  end

  def create
    @delegate = Delegate.new(delegate_params)
    @delegate.user = current_user

    if @delegate.save
      flash[:notice] = "Your delegate has been successfully created"
      redirect_to delegates_path
    else
      render :new
    end
  end

  def destroy
    @delegate = Delegate.find(params[:id])
    @delegate.destroy
  end

  private

  def delegate_params
    params.require(:delegate).permit(
      :first_name,
      :last_name,
      :email,
      :relationship,
      :user
    )
  end
end
