//
//  Deck.h
//  MatchGame
//
//  Created by 鹏 刘 on 2017/3/26.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)top;

- (Card *)drawRandomCard;

@end
