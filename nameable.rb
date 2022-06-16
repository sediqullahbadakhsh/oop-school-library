class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} not implemented method '#{__method__}'"
  end
end
