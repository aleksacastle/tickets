require 'rails_helper'

RSpec.describe Bus, type: :model do

  describe "initialization" do
    let(:bus_full) { Bus.new(
      seats: 20,
      city_a: "city_a",
      city_d: "city_D",
      date_a: '26/12/2017',
      date_d: '27/12/2017'
        )
      }

    it "is valid with date of arrival, departure, city of arrival, departure and number of seats" do
      expect(bus_full).to be_valid
    end

    it "expect to have seats field" do
      expect( bus_full.seats ).to eq(20)
    end

    it "expect to have city of departure" do
      expect( bus_full.city_d ).to eq("city_D")
    end

    it "expect to have city of arrival" do
      expect( bus_full.city_a ).to eq("city_a")
    end

    it "expect to have date of arrival" do
      expect( bus_full.date_a ).to eq("26/12/2017".to_date)
    end

    it "expect to have date of departure" do
      expect( bus_full.date_d ).to eq("27/12/2017".to_date)
    end
  end

  describe "validation" do
    it "is not valid without number of seats" do
      bus =  Bus.new(
        seats: nil,
        city_a: "city_a",
        city_d: "city_D",
        date_a: '26/12/2017',
        date_d: '27/12/2017'
          )
      expect( bus.valid? ).to be_falsey
    end
    it "is not valid without date of departure" do
      bus = Bus.new(
        seats: 20,
        city_a: "city_a",
        city_d: "city_D",
        date_a: '26/12/2017',
        date_d: nil
          )
      expect( bus.valid? ).to be_falsey
    end
    it "is not valid without date of arrival" do
      bus =  Bus.new(
        seats: 20,
        city_a: "city_a",
        city_d: "city_D",
        date_a: nil,
        date_d: '27/12/2017'
          )
      expect( bus.valid? ).to be_falsey
    end
    it "is not valid without city of departure" do
      bus =  Bus.new(
        seats: 20,
        city_a: "city_a",
        city_d: nil,
        date_a: '26/12/2017',
        date_d: '27/12/2017'
          )
      expect( bus.valid? ).to be_falsey
    end
    it "is not valid without city of arrival" do
      bus =  Bus.new(
        seats: 20,
        city_a: nil,
        city_d: "city_D",
        date_a: '26/12/2017',
        date_d: '27/12/2017'
          )
      expect( bus.valid? ).to be_falsey
    end
    it 'date of departure differ from date of arrival' 
  end
end
