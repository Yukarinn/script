Some scipts that may be useful.

- [Solarized ZSH theme](#solarized)
- [FindImageDFS](#findimagedfs)

## Solarized
[solarized.zsh-theme](solarized.zsh-theme)

Custom [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh) theme.

![solarized](/img/solarized.png)

1. Copy file `solarized.zsh-theme` to `$ZSH_CUSTOM/themes` folder. 
1. Set theme to `solarized` in `~/.zshrc`.
    ```
    ZSH_THEME="solarized"
    ```


## FindImageDFS
[findImageDFS.py](findImageDFS.py)
It generates a markdown file (`assetImageRef.md`) that lists all of the `.png` files with their names and the images recursively. This is done using depth-first search.

I wrote this to parse the image asset folder of the iOS app. It generates a nice list of asset names and the corresponding images, and the directory they belong to.

Execute the script in the top folder:
```
python findImageDFS.py
```
or 
```
python findImageDFS.py pathToFolder
```

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
