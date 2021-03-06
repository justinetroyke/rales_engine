class Api::V1::Invoices::SearchController < ApplicationController
  def show
    if !invoice_params.empty?
      render json: Invoice.find_by(invoice_params)
    end
  end

  def index
    if !invoice_params.empty?
      render json: Invoice.where(invoice_params)
    end
  end

  private

  def invoice_params
    params.permit(:id, :customer_id, :merchant_id, :status, :created_at, :updated_at)
  end
end
