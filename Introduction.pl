###Getting started
use warnings;

#print("Hello, World!\n");

###Basic Tutorial
##Perl Syntax
$x = 10;
$y = 20;
$s = "Perl String";
print($s,"\n");

$z = $x + $y;
print($z,"\n");

{
  $a = 1;
  $a = $a + 1;
  print($a);
}

#$salary = $salary * 1.05;
#$counter=0; #reset the counter

#Note that whitespace makes no difference and the $ helps differentiating variables from keywords

##Perl Variable

#Perl is case sensitive
#$variable=1;
#$Variable=10;
#scalar variables begin with a $, followed by a letter or underscore, and after that any combo of letters, numbers, and underscores

$_port=443;

#use strict to declare variables explicitly, so then it more explicitly says when a variable isn't declared
#use strict;
#my $color = 'red';
#print "Your favorite color is " . $colour . "\n"

#to delcare globol variables, use our
our $color = 'red';

#Variable interpolation example
#use strict

$amount = 20;
$s = "\nThe amount is $amount\n"; #interpolates the value of $amount into s
print($s);

##Perl numbers
#Perl integers: 10, -20, 100
$a = 123_456_789;
print($a,"\n");

#binary, octal, and hexadecimal integers
$bin = 0b110; #binary integer using a prefix of 0b
$oct = 0255; #octal integer using a prefix of 0
$hex = 0xABC; #hexadecimal integer using a prefix of 0x
print($bin,"\n",$oct,"\n",$hex,"\n"); #6, 173, 2748

#Perl floating-point numbers
#Fixed point: decimal to denote fractional part starts
$fixed=10.23;

#Scientific: significant and power of 10
$science1=+1.0025e2;
$science2=-1.0025E2;
print($science1,"==(-1)",$science2,"\n"); #100.25=100.25

##Perl Strings
#double quotes are variables, single-quotes are text
#Perl string alternative delimiters
#q/<text>/ functions as single-quotes
#qq/<text>/ functions as double-quotes

$s=q/"Are you learning?" we asked./;
print($s,"\n");

$name = 'Andy';
$s2 = qq/"Are you bored?" $name asked./;
print($s2,"\n");

#^ is the delimeter
$s = q^A string with different delimiter ^;
print($s, "\n");

#Perl string length
$s = "This is a string\n";
print(length($s),"\n");

#uc($s) gives upper case, lc($s) gives lower case
print(uc($s),"\n");
print(lc($s),"\n");

#Search for a substring inside a string: index() and rindex()
#index() searches for a substring and returns its first occurence; if position omitted, searches from the beginning
#rindix works as index() but from end to beginning
$s = "Learning Perl is easy\n";
$sub = "Perl";

$p = index($s, $sub);
print(qq\The substring "$sub" found at position "$p" in string "$s"\,"\n");

#Perl variable scopes
$color = 'red';
print("my favorite #1 color is " . $color . "\n");

{
  my $color = 'blue';
  print("my favorite #2 color is " . $color . "\n");
}
print("my favorite #1 color is " . $color . "\n");
print("\n");

##Perl operators
#addition, multiplication, subtraction, and division work as expected, as well as OOperations
print 2**3, "\n"; # = 2^3 = 8.
print 3**4, "\n"; # = 3^4 = 81.

#% is still the modulo operator

#Bitwise Operators
$a = 0b0101;
$b = 0b0011;
$c = $a & $b; #and; =0001 or 1
print $c, "\n";

$c = $a | $b; #or; =0111 or 7
print $c, "\n";

$c = $a ^ $b; #xor; =0110 or 6
print $c, "\n";

$c = ~$a; #negation; =64 bit binary inverse
print $c, "\n";

$c = $a >> 1; #shift right 1 bit; 0101 becomes 010 or two
print $c, "\n";

$c = $a << 1; #shift left 1 bit; 0101 becoems 1010 or ten
print $c, "\n";

#Booleans
#all operators same as c++ EXCEPT:
#INTRODUCING:
#<=>, the comparison operator.

print($a <=> $b, "\n"); #returns 1 if $a>$b, 0 if $a=$b, and -1 if $a<$b

#string operators
#equality eq
#not equal ne
#comparison cmp
#less than lt
#greater than gt
#less than or equal le
#greater than or equal ge

#String concatenation: .
print "this is" . " concatenation operator" ."\n";
print "a message " x4, "\n"; #prints message four times.

#chomp() operator removes the last character in a string and returns a number of characters removed.
#note: <STDIN> is used to get input
#chomp($s = <STDIN>);
print($s, "\n");

#Logical operators
#for our if, while, etc. loops
# &&
# ||
# !$a

##Perl lists
#examples
(); #empty list
(10, 20, 30);
("This", "is", "SPARTA");

#complex lists
$x = 10;
$s = "string";
print("complex list ", $x, $s, "\n");

#qw takes spaces out of a string, quote word
print(qw(red green blue),"\n"); #redgreenblue

#list flattening: no lists inside lists
print((2,3,4,(5,6))==(2,3,4,5,6),"\n");
print((1,2,3)[0]); #1st element
print "\n";

print((1,2,3,4,5)[0,2,3]); #(1,3,4)
print "\n";

#ranges
#store a range using an elipsis
$hunnet=(1..100);

##Perl array
#lists are immutable, arrays aren't

#scalars begin with $, lists with @
@days = qw(Mon Tues Wed Thu Fri Sat Sun);
print("@days", "\n");
print($days[0]);
print "\n";
print(@days[-2..-1]);
print "\n";

$count = scalar @days;
print($count, " days in a week");
print "\n";

$days[0] = 'Monday';

@days[1..6] = qw(Tuesday Wednesday Thursday Friday Saturday Sunday);

print("@days");
print "\n";

#Perl arrays as stacks
@stack=();
push(@stack,1);
push(@stack,2);
push(@stack,3);
print(@stack);
print "\n";
$elem = pop(@stack);
print($elem);
print "\n";

#Perl arrays as queues
@queue = ();
unshift(@queue,1);
unshift(@queue,2);
unshift(@queue,3);
print(@queue);
print "\n";
$elem=pop(@queue);
print($elem);
print "\n";

#sorting Perl arrays
@fruits = qw(oranges apples mango cucumber);
@sorted = sort @fruits;
print("@sorted","\n");

##Perl Hash: % as prefix

%countries = qw(England English
                France French
                Spain Spanish
                China Chinese
                Germany German);
#can also be written for readability:
%langs =  ( England => 'English',
	           France => 'French', 
    	           Spain => 'Spanish', 
    	           China => 'Chinese', 
	           Germany => 'German');
#call an element
$lang = $langs{'England'}; #English
print($lang);
print "\n";

#add a new element
$langs{'Italy'}='Italian';
#remove an element
delete $langs{'China'};
#modify elements
$langs{'India'}='Many languages';
$langs{'India'}='Hindi';

#loop over Perl hash elements
for(keys %langs){
  print("Official language of $_ is $langs{$_}\n");
}

##Perl for loop
@a = (1..9);
for(@a){
print("$_","\n");
}
foreach(@a){
print("$_","\n");
}
#explicit iterator
for $i (@a){
  print("$i","\n");
}
@b=(1..5);
for(@b){
  $_=$-*2;
}

print(@b);
print "\n";

#can also do in C-style
@c=(1..6);
for($i=0; $i<= $#c; $i++){
  print("$c[$i] \n");
}
