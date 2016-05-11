class OneBedroom < Apartment
  def initialize(args={})
    @rent = args.fetch(:rent, 2500)
    @square_feet = args.fetch(:square_feet, 800)
    @room_count = args.fetch(:room_count, 3)
    @bathroom_count = args.fetch(:bathroom_count, 1)
    
    super
  end
end