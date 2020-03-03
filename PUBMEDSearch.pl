#gets pubmed abstract for a given term
use LWP::Simple;

unlink "abstracts.txt";

#query (search term to find)
$search_term = 'coronavirus SARS';

#replace space with +
$search_term =~ s/\s/+/g;

#print $search_term
print $search_term;

#maximum number of results to retrive
$retmax = 10;

#base url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set the database to search
$db_name = 'pmc';

#generate the query url
$url = $base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

#print url
print $url;

#post (submit the search and retrieve the XML based results)
$search_result = get($url);

#print search results 
print "$search_result";

#extract paper IDs using match regex.  anything * anytime, globally
@ids = ($search_result =~ m|.*<Id>(.*)</Id>.*|g);
#print join(',',@ids);
#delete old abstracts.txt file
unlink "abstracts.txt";
#loop through all the ids
foreach $id(@ids)
{
print "$id\n";
$fetchurl = $base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
open(OUTFILE,'>>','abstracts.txt');
print OUTFILE get($fetchurl);
sleep 1;
#close file
close OUTFILE;
}

