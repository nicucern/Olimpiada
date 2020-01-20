program hotel;
var
f,f1:text;n,k:integer;
begin
assign(f,'hotel.in');
reset(f);
assign(f1,'hotel.out');
rewrite(f1);
readln(f,n);
if n=4 then begin writeln(f1,12,' ',0);n:=-1;
end; 
if n=5 then begin writeln(f1,1,' ',1);n:=-1;
end;
while n>2 do begin 
if n=4 then begin writeln(f1,2,' ',k);n:=-1;
break end;
if n=5 then begin writeln(f1,1,' ',k+1);n:=-1;
break end;k:=k+1;
n:=n-3;end; 
if n=2 then writeln(f1,1,' ',k) else if (n<>-1) and (n<>2) then writeln(f1,0,' ',k);
close(f);close(f1);
end.