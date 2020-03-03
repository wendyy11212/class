<?php

#Author - Wendy Yang
print "Hello World\n";

#variable
$DNA = 'AGCTGGCATGCAATGCCAA';
print $DNA."\n";
# another 
$DNA2 = 'ATCG';
print $DNA2."\n";
print "Here are the original DNA fragments:\n\n";
print $DNA."\n";
print $DNA2."\n";
$DNA3 = "$DNA$DNA2";
print "Here is my concatenantion:\n\n";
print $DNA3."\n";

$RNA = $DNA3;
$RNA = str_replace("T","U",$RNA);
print "Here is my RNA:\t";
print "$RNA\n\n";

?>
