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

if ARGV[0] == "by_rent"
  apartments = apartments.sort_by { |apartment| -apartment.rent.to_i }
end

apartments.each do |apartment|
  puts apartment.to_s
end