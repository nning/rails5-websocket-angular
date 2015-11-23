class CompaniesController < ApplicationController
  def index
    respond_to do |format|
      format.html

      format.json do
        render json: Company.all
      end
    end
  end
end
