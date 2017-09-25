//
//  ViewController.m
//  Repro2
//
//  Created by Aaron Jensen on 9/25/17.
//  Copyright © 2017 Aaron Jensen. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)buttonClicked:(id)sender {
    NSWindow* window = [[self view] window];
    NSWindowStyleMask mask = [window styleMask];
    
    if (mask & NSWindowStyleMaskTitled) {
        [window setStyleMask: (mask & ~NSWindowStyleMaskTitled) | NSWindowStyleMaskBorderless];
    } else {
        [window setStyleMask: (mask & ~NSWindowStyleMaskBorderless) | NSWindowStyleMaskTitled];
    }

}

@end
