def cumulative_minutes(guitar)
    sessions_array = []
    @sessions = guitar.practice_sessions
    @sessions.each do |sess|
      sessions_array << sess.duration
    end
    sessions_array.reject! { |x| x == nil}

    sessions_array.inject(:+)
end
