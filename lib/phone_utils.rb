require "phone_utils/version"

module PhoneUtils
  # Your code goes here...
  def self.normalize_number(number)
    number.match(/^\+/) ? number.slice(1,11) : number
  end

  def self.denormalize_number(number)
    return nil if number.nil?
    number = number.gsub(/[-()\s]/, "").split("+").last
    if number.length == 10
      number = "1#{number}"
    end
    "+%s" % number 
  end
end
