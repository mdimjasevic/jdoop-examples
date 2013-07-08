#!/usr/bin/env python

import os
import argparse

class ClassList:
    def get_all_java_source_files(self, base, rootdir):
        ret = []
        
        for dirpath, dirnames, filenames in os.walk(os.path.join(base, rootdir)):
            for name in filenames:
                if name.endswith('.java'):
                    # No need to worry about abstract class or
                    # interfaces because Randoop will take care of
                    # that
                    ret.append(dirpath[len(os.path.normpath(base)) + 1:].replace("/", ".") + "." + name[:-len(".java")])

        return ret

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Finds all Java source files and writes their filenames to a list file.')
    parser.add_argument('--path', required=True, help='path within the root directory to the source files')
    parser.add_argument('--root', default='src/examples/', help='source files root directory')
    parser.add_argument('--classlist', default='classlist.txt', help='Name of a file to write a file list to')
    params = parser.parse_args()
    classlist = ClassList()

    with open(params.classlist, 'w') as f:
        f.write("\n".join(classlist.get_all_java_source_files(params.root, params.path)) + "\n")
