# Add  code here
require 'benchmark'
def prime?(number)
if number<2||number==4
   false
 elsif number==2
    true
   else
     i=3
     while i<=number/2
     if number%i==0
       return false
    end
   i=i+2
 end
 true
end
end
