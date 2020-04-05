# Add  code here
require 'benchmark'
def prime0?(number)
  if number<2
     false
    else
      i=2
     while i<number
       if number%i==0
         return false
      end
     i=i+1
   end
   true
 end
  end


  def prime1?(number)
  if number<2
     false
    else
      i=2
     while i<=number/2
       if number%i==0
         return false
      end
     i=i+1
   end
   true
 end
  end


  def prime2?(number)
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


def checkprime0
  i=2
  while i<100000
    prime0?(i)
    i=i+1
  end
end

def checkprime1
  i=2
  while i<100000
    prime1?(i)
    i=i+1
  end
end

def checkprime2
  i=2
  while i<100000
    prime2?(i)
    i=i+1
  end
end
  Benchmark.bm do |bm|
  bm.report { checkprime0}
  bm.report { checkprime1}
  bm.report { checkprime2}

end
