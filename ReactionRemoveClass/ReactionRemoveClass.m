//
//  ReactionRemoveClass.m
//  ReactionRemoveClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionRemoveClass.h"

@implementation ReactionRemoveClass

@synthesize removeClassField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setName: @"Remove Class"];
    }
    return self;
}

- (BOOL) hasSelectorField {
	return YES;
}

- (NSString *) callbackFunction {
	
	NSString * myFunc = @"";
	if( [[[self selectorField] stringValue] isEqualToString:@"this"] ) {
		myFunc = @"$(this)";
	}
	else {
		myFunc = [myFunc stringByAppendingFormat:@"$('%@')", [[self selectorField] stringValue]];
	}
	myFunc = [myFunc stringByAppendingFormat:@".removeClass('%@')",[removeClassField stringValue]];
	
	return [NSString stringWithFormat:@"function(event,elem){%@}", myFunc];
}

@end
