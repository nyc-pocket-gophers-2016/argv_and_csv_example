class Studio < Apartment
  def initialize(args={})
    @rent = args.fetch(:rent, 2000)
    @square_feet = args.fetch(:square_feet, 300)
    @room_count = args.fetch(:room_count, 1)
    @bathroom_count = args.fetch(:bathroom_count, 1)
    
    super
  end

  def to_csv
    ['studio'] + super
  end
end