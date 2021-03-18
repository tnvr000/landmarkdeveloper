class Admin::ClientsController < Admin::ApplicationController
  def index
    @clients = Client.order('updated_at DESC')
  end

  def show
    @client = Client.find_by_id(params[:id])
    notification = @client.notification
    notification.update_attributes(seen: true) if notification.present?
  end

  def edit
    @client = Client.find_by_id(params[:id])
  end

  def update
    @client = Client.find_by_id(params[:id])
    if @client.save
      redirect_to admin_clients_url, notice: 'Client Updated successfully.'
    else
      render :edit, alert: 'Client could not be updated.'
    end
  end

  def destroy
    @client = Client.find_by_id(params[:id])
    if @client.destroy
      flash[:notice] = 'Client is deleted successfully.'
    else
      flash[:alert] = 'Client could not be deleted.'
    end
    redirect_to admin_clients_url
  end
end
