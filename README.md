# Minecraft Simple World Editor (work in 1.18)
## _Simple interface to edit your world_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

The purpose of this repo is to give you tools to edit simply your mincraft world.

The actual functionnality supported are:
- Chunk copy from a save to another
- Entities copy (more information below)


## Features

- GUI for copy and paste chunks in a world edit style
- Python function to be exported

### Item container
Every Item container (chest,shulker,dispenser,...) has their item copied.

### Entities Copy
Actual entities supported are :
- Any mobs
- Item Frame

Minecart, Armor stand, ... are not yet supported.

## How to

Choose 2 copy points which will define a rectangle. Every chunks in it will be copied from world 1 to world 2 at the paste point. 

If you only want to copy chunks in the same world, you have to select the same world for world 1 and 2.

Carefull, it is necessary to have the region file already created to the paste region. It is not needed for the entities region file.

**Please Generate the paste region approximately before pasting. Same for copied region**

##

## License

MIT


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
