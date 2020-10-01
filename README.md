# **PsyExp**

<img src="img/psyexp.svg" width="130" align="left" />

The aim of this repository is collecting different functions regards common **Experimental Psychology** workflows. Usually we perform similar operations across experiments or different projects such as calculating distance and visual angles, manipulating images for stimuli. The idea is to collect and organize in an useful way several functions and general code for dealing with these operations.  
The final goal is creating an `R Package` for working in the same environment with the same language. However, for now, this repository contain also other functions from other programming languages.

</br>

# Table of Contents

  - [Functions](#functions)
    - [Oval Crop](#oval-crop)
    - [Oval Crop](#read-all-images)

# Functions

## Oval Crop

`Oval Crop` is a **MATLAB** script for automatically crop all images in the working directory. The circle is user defined based on `x, y, width and height` values. User have to defined `cirle parametres` and the input `images extension` (for example `.png`) and then run the script. A new folder `Cropped Images` will be created with all cropped images inside, with `.png` for having the trasparency.

## Read all images

`read_all images` is a **MATLAB** function that is simply a slight modification of the `readImages` function from the **SHINE Toolbox** by [Willenbockel et al. (2010)](https://link.springer.com/article/10.3758/BRM.42.3.671). The function read all images of a given directory and with a given extension giving the output both the image file inside a cell array and the image name.