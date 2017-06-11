function cps = circular_primes(n)
cps = [];
for num = (n-1:-1:2)
    if is_circular_prime(num)
        cps = [cps num];
    end
end

    
function cp = is_circular_prime(n)
nums = circular_nums(n);
cp = 1;
for i = (1:length(nums))
    if ~is_prime(nums(i))
        cp = 0;
        break;
    end
end
    


function nums = circular_nums(m)
len = length(string(10));
nums = zeros(1,len);
n=0;
for i = (1:len)
    for j = (i:i+len)
        n = n + mpower(10,j-i) * get_num(m,n);
    end
    nums(i) = n;
end

        

function num = get_num(m,n)
num = mod(ceil(m / mpower(10,n-1)),10);


function prime = is_prime(p)
prime = 1;
for i = (2:floor(sqrt(p)))
    if mod(p,i) == 0
        prime = 0;
        break;
    end
end

