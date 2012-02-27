//
//  ReactionRemoveClass.m
//  ReactionRemoveClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionRemoveClass.h"

@implementation ReactionRemoveClass


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Remove Class"];
    }
    return self;
}

- (NSString *) callback {
	return [NSString stringWithFormat:@"$('%@').removeClass('%@')",[[self targetField] stringValue],[[self deltaField] stringValue]];
}


@end
