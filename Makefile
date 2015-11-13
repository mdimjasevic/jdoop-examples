#!/usr/bin/make -f

PROJECTS = commons-collections commons-codec commons-net commons-math

BUILD_CMD = mvn compile
CLEAN_CMD = mvn clean

all: git_submodules
	$(foreach PROJECT,$(PROJECTS),cd $(PROJECT) && $(BUILD_CMD) && cd -;)

git_submodules:
	git submodule init
	git submodule update

clean: git_submodules
	$(foreach PROJECT,$(PROJECTS),cd $(PROJECT) && $(CLEAN_CMD) && cd -;)
