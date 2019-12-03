<html>
<form>
好きな果物は何ですか? <input type=text name=apple>
</form>
<?php
if(isset($_GET["apple"])){   
  $a=$_GET["apple"];
  print "$a が好きですね。";
}
?>
</html>
