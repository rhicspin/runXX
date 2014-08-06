
BEGIN {i=0; j=0;}

NR==FNR {a[i]=$2; i++; next} { b[j]=$2; j++}

END {
   j=length(b)-1;
   for(i=0; i<length(a); i++)
      if (a[i] == b[j]) { print "Match",a[i],b[j];j--} else print "Do Not Match",a[i],b[j];
   j--
}
