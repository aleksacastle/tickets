class BusesController < ApplicationController
  def new
    bus = Bus.new
    render_bus_form(bus)
  end

  def index
    buses = Bus.all
    render_buses(buses)
  end

  private

    def render_buses(buses)
      render 'buses/index', :locals => { buses: buses}
    end

    def render_bus_form(bus)
      render 'buses/new', :locals => { bus: bus}
    end
end
