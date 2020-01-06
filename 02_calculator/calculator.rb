#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    total = 0
    array.each do |item|
        total = total + item
    end
    total
end

def multiply(array)
    total = 1
    array.each do |item|
        total = total * item
    end
    total
end

def power(base, power)
    base**power
end

def factorial num
    if num <= 1
      1
    else
      num * factorial(num-1)
    end
end
