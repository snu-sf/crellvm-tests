for i in `echo */` ; do echo ${i} ; rm ${i}/example.foo* ${i}/example1.foo* ${i}/example2.foo* ${i}/example3.foo* ${i}/example4.foo* ${i}/example5.foo* ${i}/*.ll ; done
