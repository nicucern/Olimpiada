program divizori1;
var x,i,m,max,k:longint;s:string;maxim1:array[0..100] of longint;f,f1:text;
function divizori(k:longint):longint;
var i,count:longint;
begin
for i:=1 to k do if k mod i=0 then count:=count+1;
divizori:=count;
end;
begin
assign(f,'divizor.in');
reset(f);
assign(f1,'divizor.out');
rewrite(f1);
k:=1;
readln(f,x);
s:=inttostr(x);
m:=length(s);
max:=divizori(x);
maxim1[1]:=x;
for i:=1 to m-1 do begin 
s:=s+s[1];
delete(s,1,1);
if divizori(strtoint(s))>max then begin maxim1[1]:=strtoint(s);max:=divizori(strtoint(s));end;end;
for i:=1 to m-1 do begin 
s:=s+s[1];
delete(s,1,1);
if (divizori(strtoint(s))=max) and (s<>inttostr(maxim1[1])) then begin k:=k+1;maxim1[k]:=strtoint(s);end;
end;
for i:=1 to k do
writeln(f1,maxim1[k]);
close(f);close(f1);
end.