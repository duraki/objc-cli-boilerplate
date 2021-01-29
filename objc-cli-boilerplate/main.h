//
//  main.h
//  objc-cli-boilerplate
//
//  Created by Halis Duraki on 29/01/2021.
//

#ifndef main_h
#define main_h

/* GLOBALS */

// 'arg_1' flag
BOOL arg_1 = NO;

// 'arg_2' flag
BOOL arg_2 = NO;

// 'url' string
NSString *url = nil;

/* FUNCTIONS */
//process args
BOOL processArgs(NSArray* arguments);

//print usage
void usage(void);

#endif /* main_h */
