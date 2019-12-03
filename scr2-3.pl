# scr2-3.pl
#

%days = ();	# キーが天気で値が日数であるハッシュ
%tmp = ();      # キーが天気で値が最高気温の合計であるハッシュ

open(IN, "weather.dat") or die("Cannot open file.");
# 日付と天気と最高気温をファイルから取り出す
while (<IN>)  {
  chomp;
  ($day,$weather,$tmp) = split(/,/);
  print("day $day:\t$tmp\t$weather\n");
  # 読み込んだ天気に対応する日数を１つ増やす（ハッシュを使う）
  $days{$weather}++;
  # 読み込んだ天気に対応する最高気温の合計に、読み込んだ
  #  最高気温を加える（ハッシュを使う）
  $tmp{$weather} += $tmp;
}
close(IN);

print("---\nDays\n");
# 天気ごとの日数を表示する処理を書く
print("cloudy: ",$days{cloudy},"\n");
print("rainy: ",$days{rainy},"\n");
print("cloudy: ",$days{stormy},"\n");
print("cloudy: ",$days{sunny},"\n");
print("---\nAverage Temperatures\n");
# 天気ごとの最高気温の平均を表示する処理を書く
#天気ごとの合計温度をsの天気の総日数でわる
print("cloudy: ",$tmp{cloudy}/$days{cloudy},"\n");
print("cloudy: ",$tmp{rainy}/$days{rainy},"\n");
print("cloudy: ",$tmp{stormy}/$days{stormy},"\n");
print("cloudy: ",$tmp{sunny}/$days{sunny},"\n");

