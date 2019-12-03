#scr2-2b
sub hms_str2s                   #関数hms2sの定義
{
    my($word) = @_;
    my($time);
    if($word =~ /^(\d+)h(\d+)m(\d+)s$/){
	$time = 3600*$1+60*$2+$3;

    }
    elsif($word !~ /^(\d+)h(\d+)m(\d+)s$/){
	$time = "illegal time !!";
    }
    return $time;
}

#実行
print( "0h30m0s = ",        hms_str2s( "0h30m0s" ),         "s\n" );
print( "11h02m55s = ",     hms_str2s( "11h02m55s" ),      "s\n" );
print( "108h320m85s = ",  hms_str2s( "108h320m85s" ),   "s\n" );
print( "1m27m12s = ",      hms_str2s( "1m27m12s" ),       "s\n" );
print( "3b0dh51m43s = ",   hms_str2s( "3b0dh51m43s" ),    "s\n" );
print( "zn11h370m50s = ",  hms_str2s( "zn11h370m50s" ),  "s\n" );
print( "6h19m28s16xab = ", hms_str2s( "6h19m28s16xab" ), "s\n" );
print( "5h23m-51s = ",      hms_str2s( "5h23m-51s" ),       "s\n" );
print( "11hm27s = ",         hms_str2s( "11hm27s" ),         "s\n" );
print( "7h07m0g7s = ",  hms_str2s( "7h07m0g7s" ),   "s\n" );
print( "12hd24m36s = ", hms_str2s( "12hd24m36s" ), "s\n" );
print( "18h36m+72s = ", hms_str2s( "18h36m+72s" ), "s\n" );
print( "3zh56m27s = ", hms_str2s( "3zh56m27s" ), "s\n" );
print( "-36h15m28s = ", hms_str2s( "-36h15m28s" ), "s\n" );

# 実行結果をコメントアウトして以下に付記してください
#    0h30m0s = 1800s
#    11h02m55s = 39775s
#    108h320m85s = 408085s
#    1m27m12s = illegal time !!s
#    3b0dh51m43s = illegal time !!s
#    zn11h370m50s = illegal time !!s
#    6h19m28s16xab = illegal time !!s
#    5h23m-51s = illegal time !!s
#    11hm27s = illegal time !!s
#    7h07m0g7s = illegal time !!s
#    12hd24m36s = illegal time !!s
#    18h36m+72s = illegal time !!s
#    3zh56m27s = illegal time !!s
#    -36h15m28s = illegal time !!s
