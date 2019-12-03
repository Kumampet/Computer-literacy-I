# scr1-2.pl
# $id に標準入力の内容が代入されるようにする
$id = <STDIN>;
chomp($id);

open(File,"grade3.dat") or die("File Open Error.");
while (<File>)  {
    # ファイルから読み込んだ文字列から改行文字を取り除く処理を書く。
    chomp;
    # ファイルから読み込んだ文字列を区切り文字 : で分割して、
    #  得られたリストを配列 @items に代入する処理を書く。
    @items = split(/:/);
    # ファイルから読んだ学籍番号と $id が一致するなら、
    # 学籍番号、得点、評価(A,B,C,Dのどれか)をプリントする
    # 処理を以下に書く。
    if ($id eq $items[0])  {
	if($items[1] >= 80){
	    print("$items[0] ","$items[1] ","A","\n");
	}
	
	elsif($items[1] < 80 and $items[1] >= 65){
	    print("$items[0] ","$items[1] ","B","\n");
	}
	elsif($items[1] < 65 and $items[1] >= 50){
	    print("$items[0] ","$items[1] ","C","\n");
	}
	elsif($items[1] < 50){
	    print("$items[0] ","$items[1] ","D","\n");
	}
    }
}
close(File);
