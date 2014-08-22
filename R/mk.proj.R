#' Create New Research Project Directory
#' @description
#' create new project directory such as... 
#'  PROJECT
#'   |- Alias
#'   |- Analysis
#'       |- Data
#'           |- Original
#'           |- Input
#'           |- `AvailableData.md`
#'       |- Figure
#'       |- Images
#'   |- Paper
#'      |- Draft
#'          |- `Changelog.mdown`
#'          |- Graphics
#'          |- `Graphics.mdown`
#'          |- LaTeX
#'          |- `README.mdown`
#'          |- Revise
#'     |- Submission
#'   |- Poster
#'   |- README.mdown
#'   |- Slide
#' @import tcltk
#' @examples
#' mk.proj()
#' @export
mk.proj <- function(){
  tk_choose.dir(getwd(), "choose or create project directory")
  
  dir.create("Alias")
  
  dir.create("Analysis")
    dir.create("Analysis/Data")
      dir.create("Analysis/Data/Original")
      dir.create("Analysis/Data/Input")
      file.create("Analysis/Data/AvailableData.md")
    dir.create("Analysis/Figure")
    dir.create("Analysis/Table")
  
  dir.create("Doc")
  
  dir.create("Images")
  
  dir.create("Paper")
    dir.create("Paper/Draft")
    dir.create("Paper/Draft/LateX")
    dir.create("Paper/Draft/Graphics")
    dir.create("Paper/Draft/Revise")
    file.create("Paper/Draft/Changelog.md")
    file.create("Paper/Draft/README.md")
    file.create("Paper/Draft/Graphics.md")
    dir.create("Paper/Submission")
  
  dir.create("Poster")
  
  dir.create("Slide")
  
  file.create("README.md")
}