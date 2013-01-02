module DinosHelper
  
  def convert_pounds_to_tons(n)
    if n.is_a? Integer
      return n/2000.to_f
    else
      return ""
    end
  end
  
end
