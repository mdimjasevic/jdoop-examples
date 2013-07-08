# A script that compiles JUnit tests one by one and then the final
# main file.
#
# The main reason why this script exists is because compiling many
# JUnit tests at once, say 100 or more, results in the out of memory
# exception

#!/bin/bash

DIR=$1
for i in `ls -1 $DIR/RandoopTest?*.java`
do
    # ls -l $i
    javac -g -d build/tests -cp build/:build/examples/:build/tests/:lib/junit4.jar $i
done

# Now that all the dependencies are compiled, compile the main file
javac -g -d build/tests -cp build/:build/examples/:build/tests/:lib/junit4.jar $DIR/RandoopTest.java
