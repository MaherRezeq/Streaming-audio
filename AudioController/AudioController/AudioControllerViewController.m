//
//  AudioControllerViewController.m
//  AudioController
//
//  Created by Maher Rezeq on 10/11/11.
//  Copyright 2011 __NativeNCreative__. All rights reserved.
//

#import "AudioControllerViewController.h"
#import "AudioPlayer.h"
@implementation AudioControllerViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
     * How to use
     */
    
    // Create Player instance
    AudioPlayer  *audioPlayer=[[AudioPlayer alloc]init];
    audioPlayer.view.frame=CGRectMake(10, 40, 300, 85);
    
    [audioPlayer.view.layer setCornerRadius:10.0f];
    [audioPlayer.view.layer setMasksToBounds:YES];
    // Add to your view
    [self.view addSubview:audioPlayer.view];
    
    // Play Audio from URL
    [audioPlayer playAudioURL:@"http://www.entertainment.farfesh.com/music/arabic/Elissa/Bitmon.mp3"];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
