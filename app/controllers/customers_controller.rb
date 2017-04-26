class CustomersController < ApplicationController

  def index
    params[:sort_by] ||= :name
    params[:order] ||= :asc
    sort_by = params[:sort_by]
    order = params[:order]

    @customers = Customer.all.order(Hash[sort_by, order])
    render partial: 'table' if request.xhr?
  end

end
