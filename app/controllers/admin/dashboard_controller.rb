class Admin::DashboardController < Admin::BaseController
  def index
    if params[:sort]
      @orders = Order.filter_status
    else
      @orders = Order.all
    end
    @status = Order.status_total
  end
end
