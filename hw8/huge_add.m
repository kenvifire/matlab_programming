function result = huge_add(s1, s2)

if ~isvector(s1) || ~isvector(s2)
    result = -1;
else

result = '';
carry = 0;
len = max(length(s1),length(s2));

flag = 0;

if length(s2) > length(s1)
    s = s1;
    s1 = s2;
    s2 = s;
end

diff = length(s1) - length(s2);

for i = (len:-1:1)
    v1 = 0;
    v2 = 0;
    v = 0;
    if i <= length(s1)
        v1 = getNum(s1(i));
    end
    
    if (i - diff) > 0
        v2 = getNum(s2(i-diff));
    end
    
    if v1 <0 || v2 <0
        flag = 1;
        break;
    end
    
    v = v1 + v2 + carry;
    if v >= 10
        v = v -10;
        carry = 1;
    else
        carry = 0;
    end
    
    result = [char(v + '0') result];
end

if flag
    result = -1;
elseif carry 
    result = ['1' result]
end
end


function num = getNum(c)
if ischar(c) && c >='0' && c <= '9'
    num = c - '0';
else
    num = -1;
end