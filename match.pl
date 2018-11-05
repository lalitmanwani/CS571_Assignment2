
# fname has defined the input text file
$fname = "input.txt";

# file exists or not
if(-e $fname)
{
# file is readable or not
if(-r $fname)
{
open FILE, "$fname" or die $!;
print("\n");

while(<FILE>)
{

$w = "$_";

chomp($w);

# string that contains hi
if($w =~m/hi/)
{
print "$w contains hi \n\n";
}

# string that contains exactly one vowel characters
if ( $w =~ tr/aeiuo// == 1 ) 
{
print "$w contains one vowel \n\n";
}

# string that contains two or more 'l'
if($w =~ tr/l/l/ >= 2)
{
print "$w contains two or more l's  \n\n";

}

# string that begin with letter "h" and end with "t"
if($w=~/^h/ && $w=~/t$/)
{
print "$w begin with letter h and ends with t \n";
}

}#end of while loop
    close(FILE);
}
}
else
{

   print "$fname : file does not exist\n";
}
