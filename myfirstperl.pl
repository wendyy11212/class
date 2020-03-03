$DNA1 = 'AGCTAGCTATCGTACATCGATCGATGCTGAATCGATGCATTCG';
$DNA2 = 'GCATCGATGCTAGCAGTGCACTA';
print "Here are the original two DNA fragments:\n\n";
print $DNA1, "\n";
print $DNA2, "\n\n";

$DNA3 = "$DNA1$DNA2";
print "Here is the concatenantion of the first two fragments: \t";
print $DNA3, "\n\n";

print "Here is the starting DNA:\n\n";
print $DNA3, "\n\n";
$RNA = $DNA3;
$RNA =~ s/T/U/g;
print "Here is the result of transcribing the DNA to RNA:\n\n";
print $RNA, "\n\n";

