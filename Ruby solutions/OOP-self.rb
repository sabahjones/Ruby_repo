
class Fixnum
  def who_am_i
    puts self
  end
end

class String
  def who_am_i
    puts self
  end
end

4.who_am_i
15.who_am_i
"string".who_am_i
"hello world".who_am_i
string.who_am_i           #this will not work since object is neither string nor number.
