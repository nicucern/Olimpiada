program cumparaturi;
type a1=array[0..100] of integer;
var a,b:a1;sumamin,suma,sumamax,i,j,n,k:integer;filein,fileout:text;
function max:integer;
var
i,max1:integer;
begin
max1:=a[1];
for i:=2 to n do 
if a[i]>max1 then begin max1:=a[i];end;
for i:=1 to n do if a[i]=max1 then begin a[i]:=0;break;end;;
max:=max1;
end;
begin assign(filein,'shop.in');
reset(filein);
assign(fileout,'shop.out');
rewrite(fileout);
readln(filein,n,k);
for i:=1 to n do readln(filein,a[i]);
for i:=1 to n do suma:=a[i]+suma;
for j:=1 to n div k do begin 
for i:=1 to k do b[i]:=max;
sumamax:=b[k]+sumamax;end;
sumamin:=suma-sumamax;
writeln(fileout,sumamin);
close(filein);
close(fileout);
end.

