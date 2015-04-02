def cumulative_minutes(guitar)
    #sessions_array = []
    #@sessions = guitar.practice_sessions
    #@sessions.each do |sess|
    #  sessions_array << sess.duration
    #end
    #sessions_array.reject! { |x| x == nil}
    #sessions_array.inject(:+)

  # Try to keep code concise where possible...
  # Try not to use temporary variables if not necessary
    guitar.practice_sessions.where.not(duration: nil).inject(0) { |i, s|
      i + s.duration
    }
end
