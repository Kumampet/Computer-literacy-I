# scr1-3.pl
# initialize variables
$sum = 0;
$n = 0;

# ここで必要なファイルのオープンを行う。
open(IN ,"grade3.dat") ;
open(OUT ,">grade.html") ;

# print the contents to "grade.html"
print(OUT "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01\n");
print(OUT "  Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
print(OUT "<html>\n");
print(OUT "<head lang=\"ja\">\n");
print(OUT "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
print(OUT "<title>grade3</title>\n");
print(OUT "</head>\n");
print(OUT "<body>\n");
print(OUT "<table border=\"1\">\n");
print(OUT "<tr><th>ID</th><th>grade</th></tr>\n");

my $std = $total =0; 
my $avg;
while (<IN>)  {
  # ファイルから１行ずつ読み、点数の合計と人数の更新処理と、
  # 表の行 <tr>...</tr> を grade.html に出力する。
    chomp;
    @items = split(/:/);

    print( OUT "<tr><td>","$items[0]","</td><td>","$items[1]","</td></tr>\n" );

    $total += $items[1];
    $std++; 
    
}
$avg = $total/$std;
$avgketa = sprintf('%.3f', $avg);
close(IN);

print(OUT "</table>\n");
print(OUT "<hr/>\n");
# 平均点を grade.html に出力する。
print(OUT "average = $avgketa");
print(OUT "</body>\n");
print(OUT "</html>\n");

close(OUT);
