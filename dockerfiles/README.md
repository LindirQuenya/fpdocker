These are all the wonderful dockerfiles. They depend on each other in the following structure:
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
```
If you think that tree was tough to *read*, just imagine how the author feels. Hand-aligning that in `nano` was a nightmare.
