function missing($nums, $str) {
  $result = "";
  sort($nums);
  $temp = implode("",(explode(" ",$str)));
  for ($x = 0; $x < 3; $x++) {
    if ($nums[$x] >= strlen($temp)){
      return "No mission today";
    }
    $result .= strtolower($temp[$nums[$x]]);
  }
  return $result;
}