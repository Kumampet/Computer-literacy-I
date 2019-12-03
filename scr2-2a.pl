#scr2-2a
sub hms2s                       #関数hms2sの定義
{
    my($h,$m,$s)= @_;
    my($time);
    $time = 3600*$h + 60*$m + $s;
    return $time;
}

#実行
print( "0h45m0s = ", hms2s( 0, 45, 0 ), "s\n" );
print( "11h02m55s = ", hms2s( 11, 2, 55 ), "s\n" );
print( "108h320m85s = ", hms2s( 108, 320, 85 ), "s\n" );
print( "7h07m07s = ", hms2s( 7, 7, 7 ), "s\n" );
print( "12h24m36s = ", hms2s( 12, 24, 36 ), "s\n" );
print( "18h36m72s = ", hms2s( 18, 36, 72 ), "s\n" );

# 実行結果をコメントアウトして以下に付記してください
#0h45m0s = 2700s
#11h02m55s = 39775s
#108h320m85s = 408085s
#7h07m07s = 25627s
#12h24m36s = 44676s
#18h36m72s = 67032s
