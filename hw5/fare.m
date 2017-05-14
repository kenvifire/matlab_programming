function fee = fare(distance, age)
if distance <= 1
    fee = 2;
elseif distance <= 10
    fee = 2 + round(distance - 1) * 0.25;
elseif distance > 10
    fee = 2 + 9*0.25 + round(distance-10)*0.1;
end

if age <= 18 || age >= 60
    fee = fee * 0.8;
end

