def cumulative_minutes(user)
    sessions_array = []
    @sessions = user.practice_sessions
    @sessions.each do |sess|
      sessions_array << sess.duration
    end
    sessions_array.reject! { |x| x == nil}

    sessions_array.inject(:+)
end
