function Events=GetEvents(L,s)
% This function is to get Events text
% L is begin Events line , where [Events] is

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

if nargin == 0
    L = 16 ;
end
    
clear Events;
L = L + 1 ;

% Get the title 
q=regexp(s(L,:),'[:,]','start');
[g h]=size(q);
q=[0 q];
Events=s(L,q(1)+1:q(2)-1);
for i=2:h
    Events=[Events,cellstr(s(L,q(i)+2:q(i+1)-1))];
end
Events=[Events,cellstr(s(L,q(i+1)+1:end))];


for L=18:size(s)-1
q=regexp(s(L,:),':','start');
q=[q(1) regexp(s(L,:),',','start')];
q=[0 q];
Events{L-16,1}=s(L,q(1)+1:q(2)-1);
Events{L-16,2}=cellstr(s(L,q(2)+2:q(3)-1));
for i=3:h
    Events{L-16,i}=cellstr(s(L,q(i)+1:q(i+1)-1));
end
Events{L-16,i+1}=cellstr(s(L,q(i+1)+1:end));
end