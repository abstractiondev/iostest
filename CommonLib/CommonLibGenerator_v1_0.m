 
- (void)COPYBUNDLEFILETODOCUMENTSIFNOTTHEREALREADY:(NSString*) fileName
{
    //Get a fileManager object
    NSFileManager *manager = [NSFileManager defaultManager];
    
    //Get the path to the desired data file in /Documents
    NSString *docsDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *docsFilePath = [docsDir stringByAppendingPathComponent:fileName];
    NSString *docsFileURL = [NSURL URLWithString:docsFilePath];
    
    //See if file is there already; if not, copy from bundle
    if (![[NSFileManager defaultManager] fileExistsAtPath: docsFilePath]) {
        
        //Get the file URL to the file in the app bundle
        // TODO: Fix code here! NOTE! Fix it in the template .tt file, not in the ".m" file
        NSString* baseName = @"TODOBaseNameHere";
        NSString* extensionName = @"TODOExtNameHere";
        NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:baseName withExtension:extensionName];
        
        //Copy the file from the bundle to the /Documents directory
        [manager copyItemAtURL:bundleURL toURL:docsFileURL error:NULL];
    }
}
