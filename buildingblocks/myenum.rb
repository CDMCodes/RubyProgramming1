module Enumerable
  def my_each
    if block_given?
      for i in 0..self.length-1
        yield(self[i])
      end
    else
      return self
    end
  end

  def my_each_with_index
    if block_given?
      for i in 0..self.length-1
        yield(self[i],i)
      end
    else
      return self
    end
  end

  def my_select
    if block_given?
      ret = []
      for i in 0..self.length-1
        if yield(self[i])
          ret << self[i]
        end
      end
    else
      ret = self
    end
    return ret
  end

  def my_all?
    if block_given?
      if self.my_select{|n| yield(n)}.length == self.length
        return true
      else
        return false
      end
    else
      return self
    end
  end

  def my_any?
    if block_given?
      if self.my_select{|n| yield(n)}.length >= 1
        return true
      else
        return false
      end
    else
      return self
    end
  end

  def my_none?
    if block_given?
      if self.my_select{|n| yield(n)}.length == 0
        return true
      else
        return false
      end
    else
      return self
    end
  end

  def my_count(val = 0)
    if block_given?
      self.my_select{|n| yield(n)}.length
    else
      if val > 0
        self.my_select{|n| n == val}.length
      else
        self.length
      end
    end
  end

  def my_map
  end

  def my_inject
  end

end
