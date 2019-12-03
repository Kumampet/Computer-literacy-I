各学生の合計得点を出すために、sedを使って名前と各教科の得点をそれぞれnamelist.csv mathpoint.csv englishpoint.csv physicspoint.csvに出力。
教科の得点はawk '{print NF}' [FileName] > [FileName2]として書き出す。
すべてのFileが揃ったら、pasteを使って合体させる。
合体したところresult.csvとする。

合体したFileをsed '{print $1" "$2" "$3+$4+$5"\t"}' result.csv > sum.csvに新たに書き込む。$3+$4+$5で個人のそれぞれの教科の得点が足される。

つづいて標本平均と標本分散を求める。私は一度に表示させる方法で処理した。
awk '{sum+=$3;ave=sum/NR;sum2+=$3^2}END{print ave" "sum2/NR-ave^2"\t"}' sum.csv

これらの方法により私がだした値は以下のとおりである。
標本平均：149.862
標本分散：1521.76

以上

s1250050
隈本剛史
