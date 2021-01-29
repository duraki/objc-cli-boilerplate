//
//  main.m
//  objc-cli-boilerplate
//
//  Created by Halis Duraki on 29/01/2021.
//

#import <Foundation/Foundation.h>
#import "main.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSArray *arguments = nil;
        
        arguments = [[NSProcessInfo processInfo] arguments];
        
        // handlers
        
        /* handle '-h' or '-help' */
        if( (YES == [arguments containsObject:@"-h"]) ||
            (YES == [arguments containsObject:@"-help"]) )
        {
            // usage();
            
            goto bail;
        }
        
        /* handle other args */
        if (YES != processArgs(arguments))
        {
            // usage();
            
            goto bail;
        }
        
        // run loop
        [[NSRunLoop currentRunLoop] run];
    
    } // pool
    
bail:
    return -1;
}

BOOL processArgs(NSArray *arguments)
{
    // flag
    BOOL validArgs = YES;
    
    // index
    NSUInteger index = 0;
    
    // init 'arg_1' flag
    arg_1 = [arguments containsObject:@"-argument1"];
    
    // init 'arg_2' flag
    arg_2 = [arguments containsObject:@"-argument2"];
    
    // extract value for 'url' flag
    index = [arguments indexOfObject:@"-url"];
    if (NSNotFound != index)
    {
        // increment
        index++;
        
        // sanity check
        if (index >= arguments.count)
        {
            // invalid
            validArgs = NO;
            
            // bail
            goto bail;
        }
        
        // grab url
        url = [arguments objectAtIndex:index];
    }
    
bail:
    return validArgs;
}

void usage()
{
    //name
    NSString* name = nil;
    
    //version
    NSString* version = nil;
    
    //extract name
    name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    
    //extract version
    version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];

    //usage
    printf("\n%s (v%s) usage:\n", name.UTF8String, version.UTF8String);
    printf(" -h or -help      display this usage info\n");
    printf(" -argument1       Argument one flag\n");
    printf(" -argument2       Argument two flag\n");
    printf(" -url <link>      Argument three example (with 'value')\n\n");
    
    return;
}
