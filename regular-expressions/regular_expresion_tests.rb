# regular expresion test
letters = "abxciejrsdxqw12lj2,z.a,q1nmm2nzaj"

# regex = /.+?j/
regex = /.*?(?=j)/
regex2 = /.*?[?=j]/
regex3 = /j(?:.*?)/
p letters[regex]
p letters[regex2]
p letters[regex3]
p letters.scan(regex)
p letters.scan(regex2)
p letters.scan(regex3)


