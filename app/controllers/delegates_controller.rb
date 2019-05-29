class DelegatesController < ApplicationController
  def index
    @delegates = Delegate.where(user: current_user)
  end

  def edit
  end
  def update
  end
  def create
  end

  def destroy
    @delegate = Delegate.find(params[:id])
    @delegate.destroy
    redirect_to delegates_path
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
