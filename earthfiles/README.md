These are Earthfiles, an alternative to dockerfiles, with some makefile mixed in. They should create a bunch of docker images.  
The rationale for using earthly over docker is that earthly will build non-dependent images in parallel.

Here is a somewhat outdated version of our dependency tree. A bunch of stuff is missing from it.
```
                                       ubuntu
                                         |
                                         |
                                        base
                                         /\
                      __________________/  \__________________
                     /                                        \
                 basilisk                                   flash-sa
                    /\                                         /\
 ubuntu    ________/  \________                     __________/  \__________
   |      /                    \                   /                        \
   |    wine              flash-plugin     flashSA11_2r202_644        flashSA32_0r0_330
builder  |                     /\
   \ __  |             _______/  \_______
       \ |            /                  \
        \|    flash11_2r202_644    flash32_0r0_330
     pipelight
         |
         |
       unity
         |
         |
      5xunity
```
If you think that tree was tough to *read*, just imagine how the author feels. Hand-aligning that in `nano` was a nightmare.
