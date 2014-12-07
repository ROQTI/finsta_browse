class WelcomeController < ApplicationController

  def index
    @companies = Company.all()
    @markets = Market.all()
  end

  def view_company
    @company = Company.find(params[:id])
  end

  def view_company_information
    @company = Company.find(params[:id])
  end

  def list_unread_reports
    @reports = Report.where(read:0)
  end

  def view_report
    @reports = Report.find(params[:id])
  end

  def mark_as_read
    @reports = Report.find(params[:id])
    @reports.read = 1
    @reports.save
    redirect_to :action => "view_report", :id => @reports.id

  end

  def list_all_directors
    @directors = Director.all
  end

  def update_company
    id = params[:id]
    @company = Company.find(params[:id])
    @company.year_founded = params[:year_founded]
    @company.save
    redirect_to :action => "view_company", :id => @company.id 
  end

  def view_market
    @market = Market.find(params[:id])
  end

  def update_market
    id = params[:id]
    @market = Market.find(params[:id])
    @market.end_price = params[:end_price]
    @market.save
    redirect_to :action => "view_market", :id => @market.id 
  end


  def create_new_company
    if request.post?
      d=Company.new
      d.company_name=params["company_name"]
      d.ticker_symbol=params["ticker_symbol"]
      d.year_founded=params["year_founded"]
      d.save
      redirect_to :action => "view_company", :id => d.id
    end
  end


end
