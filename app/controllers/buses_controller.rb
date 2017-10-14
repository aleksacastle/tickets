class BusesController < ApplicationController
  def index
    buses = Bus.all
    render_buses(buses)
  end

  private

    def render_buses(buses)
      render 'buses/index', :locals => { buses: buses}
    end
end
