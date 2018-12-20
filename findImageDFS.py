#!usr/bin/python

import os
import sys

scanDir = os.getcwd() #current dierctory
resFileName = "assetImageRef.md"

# optional - can specify the directory that the sciprt is going to scan
if len(sys.argv) > 1:
    scanDir = str(sys.argv[1])

class make_pair:
    def __init__(self, firstParam, secondParam):
        self.first = firstParam
        self.second = secondParam

def DFS(path):

    stack = []
    stack.append(make_pair(path,0))

    while len(stack) > 0:
        curItem = stack.pop()
        curPath = curItem.first
        curInd = curItem.second
        basePath = os.path.basename(curPath).split(".")[0]
        indent = " " * 4 * curInd
        dirIndent = "#" * curInd

        if (os.path.isdir(curPath)):
            file.write("%s# %s\n" % (dirIndent, basePath))
            #print(curPath)
            for item in os.listdir(curPath):
                stack.append(make_pair(os.path.join(curPath, item), curInd+1))
        else:
            # we only want png
            if curPath.endswith(".png"):
                file.write("%s\n" % (basePath))
                file.write("![%s](%s)\n" % (basePath, curPath))


file = open(resFileName, "w+")
DFS(scanDir)
file.close()

print("------ please check %s ------" % os.path.abspath(resFileName))
