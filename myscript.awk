BEGIN{
print "The Users and Their Corresponding home"
print "UserName \t HomePath"
print "______________\t_______________"
FS=":"
}
{
print $1 "\t" $6
}
END {
print "The End"
}

