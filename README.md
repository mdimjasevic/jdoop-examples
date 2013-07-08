These examples are meant to be used with Randoop and JPF-Doop. This
repository is not stand-alone - it is to be used within the root
directory of JPF-Doop, as instructed bellow.

# Dependencies

[Apache Ant](https://ant.apache.org/),
[Randoop](https://bitbucket.org/psycopaths/randoop), and
[Jacoco](http://www.eclemma.org/jacoco/) are needed to run Randoop
examples. To run JPF-Doop examples, in addition to the tools needed to
run Randoop examples, [Python](http://python.org/) and two modules of
Java PathFinder are needed:
[jpf-core](http://babelfish.arc.nasa.gov/trac/jpf/wiki/projects/jpf-core)
and [jpf-jdart](https://bitbucket.org/psycopaths/jpf-jdart).

## Randoop

Easier option compared to building Randoop from source is to use a
pre-built version, which can be found at
[http://l.dimjasevic.net/randoop](http://l.dimjasevic.net/randoop)
(randoop.jar, built for Java SE 7).

`randoop.jar` should be placed in the `lib/` directory.

## JaCoCo

Download JaCoCo and place in the `lib/` directory. It should be named
`jacocoant.jar`.

# Usage with JPF-Doop

All the Java classes should be moved to the `src/examples/` sub-directory
of JPF-Doop.

Ant build files (build-*.xml) should be in the root directory of Jdart.

To run an example, type:

`ant -f <build-file> report`

For example, to run it for the org.apache.commons.math3 package, type:

`ant -f build-org-apache-commons-math3-jpfdoop.xml report`

`report` is a target of each build file that builds and runs all the
tools. Final code coverage reports can be found in the `build/site/`
directory.

# Usage with Randoop

All the Java classes should be moved to the `src/examples/` sub-directory
of JPF-Doop.

To run an example, type:

`ant -f <build-file> report`

`report` is a target of each build file that builds and runs all the
tools. Final code coverage reports can be found in the `build/site/`
directory.
