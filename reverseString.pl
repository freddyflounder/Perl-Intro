$s=<STDIN>;
chomp($s);
@a=(0..length($s)-1);

@rstack=();
for(@a){
  push(@rstack, substr($s,$_,1));
}

for(@a){
  substr($s,$_,1,pop(@rstack));
}
print($s);
