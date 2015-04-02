class PracticeSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :guitar

  # So we keep methods which update our models, esp if they are somewhat
  # complex, in the model itself.  Separation of concerns.  Models should
  # know how to update themselves... external objects should just be able 
  # to call a method to do so.
  def set_duration!
    self.update(duration: ((Time.now - created_at) / 60).to_i)
  end
end
