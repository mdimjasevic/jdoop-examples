These examples are meant to be used with Randoop and J-Doop.

# Dependencies

[Apache Ant](https://ant.apache.org/),
[Randoop](https://bitbucket.org/psycopaths/randoop), and
[Jacoco](http://www.eclemma.org/jacoco/) are needed to run Randoop
examples. To run J-Doop examples, in addition to the tools needed to
run Randoop examples, two modules of Java PathFinder are needed
[jpf-core](http://babelfish.arc.nasa.gov/trac/jpf/wiki/projects/jpf-core)
and [jpf-jdart](https://bitbucket.org/psycopaths/jpf-jdart), as well
as [Python](http://python.org/).

# Usage with J-Doop

All the examples should be moved to the `src/examples/` sub-directory
of JDart.

Ant build files (build-*.xml) should be in the root directory of Jdart.

To run an example, type:

`ant -f <build-file> report`

`report` is a target of each build file that builds and runs all the
tools. Final code coverage reports can be found in the `build/site/`
directory.

# Usage with Randoop
