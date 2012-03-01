//
//  ReactionRemoveClass.m
//  ReactionRemoveClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionClassRemove.h"

@implementation ReactionClassRemove


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Remove Class"];
		[self setAction:@"removeClass"];
    }
    return self;
}

- (NSString *) callback {
	return [NSString stringWithFormat:@"$('%@').%@('%@');",[[self targetField] stringValue],[self action],[[self deltaField] stringValue]];
}


@end
