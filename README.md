Some scipts that may be useful.

## findImageDFS.py
[can be found here](findImageDFS.py)
It generates a markdown file (`assetImageRef.md`) that lists all of the `.png` files with their names and the images. The script finds the images from the designated folder and its subfolders. Organizes the images by folder and the level of the folder. This is done using depth-first search.
I wrote this to parse the image asset folder of the iOS app. It generates a nice list of asset names and the corresponding images, and the directory they belong to.

To execute the script:
`python findImageDFS.py`
The designated folder is default to the folder that the script is in.

it also takes optional parameter `pathToFolder` :
`python findImageDFS.py pathToFolder`

sample `assetImageRef.md`
```
# Images
## imagefolderA
### imagefolderAA
image1
![image1](image1.png)
image2
![image2](image2.png)
### imagefolderAB
image3
![image1](image3.png)
image4
![image2](image4.png)
## imagefolderB
...
```
