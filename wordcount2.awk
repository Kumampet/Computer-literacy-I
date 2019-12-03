BEGIN {
    word="";
}
{
    if($1!=word){
	print word,count;
	word=$1;
	count=1;
    }else{
	count++;
    }
}
END {
    print word,count;
}
