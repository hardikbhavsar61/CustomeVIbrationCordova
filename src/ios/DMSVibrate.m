//
//  DMSVibrate.m
//  DMSVibration
//
//  Created by Dynamic Methods  on 16/02/15.
//
//

#import "DMSVibrate.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation DMSVibrate

-(void) vibrate:(CDVInvokedUrlCommand *)command
{

    NSString* myarg = [command.arguments objectAtIndex:0];
    int value = [myarg intValue];
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    NSMutableArray* arr = [NSMutableArray array ];
    
    [arr addObject:[NSNumber numberWithBool:YES]];  //vibrate for 1000ms
    [arr addObject:[NSNumber numberWithInt:value]];
    
    [dict setObject:arr forKey:@"VibePattern"];
    [dict setObject:[NSNumber numberWithInt:1] forKey:@"Intensity"];
    
    
    AudioServicesPlaySystemSoundWithVibration(4095,nil,dict);
}

@end
