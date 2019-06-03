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
      mail = DelegateMailer.with(delegate: @delegate, token: @delegate.confirm_token).confirm
      mail.deliver_now
      respond_to do |format|
        format.html { redirect_to delegates_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
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
      :phone_number,
      :relationship,
      :user
    )
  end

  def confirm_email
    @delegate = Delegate.find_by_confirm_token(params[:token])
    if @delegate.present?
      @delegate.update(email_confirmed: true)
      @delegate.save
      flash[:success] = "#{delegate.first_name} has confirmed themselves as your delegate."
    end
  end
end
