This contains the files needed for patching wine-staging v6.19 to include child window rendering support in Vulkan.

`childwindow-6.19-staging.patch` is a git-formatted patch that adds the functionality.  
`Earthfile` builds Wine with the patches. It saves the resulting binaries in `built`.  
`files` are the changed files themselves, useful for people who want to read the before and after.  
`built` is where the built debs are placed.
