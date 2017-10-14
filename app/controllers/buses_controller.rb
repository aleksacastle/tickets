class BusesController < ApplicationController
  def index
    buses = Bus.all
    render 'buses/index', :locals => { buses: buses}
  end
end
