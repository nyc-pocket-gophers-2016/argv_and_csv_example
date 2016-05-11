require_relative './rentable'
require_relative './apartment'
require_relative './townhouse'
require_relative './studio'
require_relative './one_bedroom'
require 'pry'
require 'csv'

apartments = []

CSV.foreach("apartments.csv", headers: true, header_converters: :symbol) do |row|
  case row[:type]
  when 'studio'
    apartments << Studio.new(row)
  when 'townhouse'
    apartments << Townhouse.new(row)
  when 'one-bedroom'
    apartments << OneBedroom.new(row)
  end
end

CSV.open("new_awesome_csv.csv", "w") do |csv|
  csv << ['type','rent','square_feet','room_count','bathroom_count','pets_allowed']
  apartments.each do |apartment|
    csv << apartment.to_csv
  end
end

