Things that I still need to work on:
 - Get wined SA v2 and v3 working.
 - Fix Xhost authentication, instead of just disabling it.
 - Fix unity. It's broken right now. This will likely require messing with Wine and Pipelight.
    - Perhaps it's a problem with wine/dxvk? Look here: https://bugs.winehq.org/show_bug.cgi?id=45277
    - Fixed, I think. Awaiting confirmation from ColdIce before removing this.
 - Move Wine key to a trusted.gpg.d approach, rather than the deprecated apt-key.
 - Add support for more unity versions.
 - Auto-enable basilisk plugins.
    - Awaiting confirmation on my desktop computer.
 - (Low-priority) Wine-d versions of flash plugins, maybe through Pipelight? Modification might be needed.
 - (Low-priority) Make all these images work in environments that aren't mine.
