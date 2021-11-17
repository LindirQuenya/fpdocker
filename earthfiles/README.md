These are Earthfiles, an alternative to dockerfiles. They should create a bunch of docker images.

They have the same dependency structure as the dockerfiles. The information is just presented slightly differently.
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
