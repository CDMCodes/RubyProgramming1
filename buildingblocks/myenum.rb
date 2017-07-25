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
  end

  def my_any?
  end

  def my_none?
  end

  def my_count
  end

  def my_map
  end

  def my_inject
  end

end
