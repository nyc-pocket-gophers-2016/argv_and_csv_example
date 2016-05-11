class Townhouse < Apartment
  def initialize(args={})
    @rent = args.fetch(:rent, 13000)
    @square_feet = args.fetch(:square_feet, 3000)
    @room_count = args.fetch(:room_count, 7)
    @bathroom_count = args.fetch(:bathroom_count, 3)

    super
  end
end