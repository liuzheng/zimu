function str = delN(s,d)
% This function is to delete some char
% In this program is '\N'
% But in regexp d needs '\\N'
% So when you use it , you need very notice it!!!

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

[s1 s2] = size(s);
str = '';
for j = 1:s1
    ss = s(j,:);
    strl='';
    h = regexp(ss,d,'start');
    if size(h)==[0 0]
        str =strvcat(str,ss);
        continue;
    end
    strl = ss(1:h(1)-1);
    sh = size(h);
    for i=1:sh(2)-1
        st = ss(h(i)+2:h(i+1)-1);
        strl = [strl '  ' st];
    end
    str =strvcat(str,strl);
end
end