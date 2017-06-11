function cen = centuries(year)
roman_cent{1} = 'I';
roman_cent{2} = 'II';
roman_cent{3} = 'III';
roman_cent{4} = 'IV';
roman_cent{5} = 'V';
roman_cent{6} = 'VI';
roman_cent{7} = 'VII';
roman_cent{8} = 'VIII';
roman_cent{9} = 'IX';
roman_cent{10} = 'X';
roman_cent{11} = 'XI';
roman_cent{12} = 'XII';
roman_cent{13} = 'XIII';
roman_cent{14} = 'XIV';
roman_cent{15} = 'XV';
roman_cent{16} = 'XVI';
roman_cent{17} = 'XVII';
roman_cent{18} = 'XVIII';
roman_cent{19} = 'XIX';
roman_cent{20} = 'XX';
roman_cent{21} = 'XXI';
roman_cent{22} = 'XXII';
roman_cent{23} = 'XXIII';
roman_cent{24} = 'XXIV';
roman_cent{25} = 'XXV';
roman_cent{26} = 'XXVI';
roman_cent{27} = 'XXVII';
roman_cent{28} = 'XXVIII';
roman_cent{29} = 'XXIX';
roman_cent{30} = 'XXX';
cen = '';

if ~isscalar(year) || uint64(year) ~= year
    cen ='';
elseif year < 1
    cen ='';
elseif year <= 3000
    cen = roman_cent{ceil(year/100)};
else
    cen = '';
end



