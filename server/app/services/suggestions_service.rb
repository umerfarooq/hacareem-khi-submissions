class SuggestionsService
	def initialize( user )
		@user = user
  end

  def suggestions
    begin
    	customer_segment = @user.segment_it_belongs_to
			@user.discounts.where( :customer_segments.in => [ customer_segment ] )
    rescue
    	nil
    end
  end
end