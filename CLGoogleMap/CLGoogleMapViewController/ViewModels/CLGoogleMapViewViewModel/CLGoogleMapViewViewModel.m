//
//  CLGoogleMapViewViewModel.m
//  CLMapKit
//
//  Created by Cain Luo on 2018/5/25.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLGoogleMapViewViewModel.h"

@interface CLGoogleMapViewViewModel ()

@property (nonatomic, weak, readwrite) CLGoogleMapViewController *cl_googleMapViewController;

@end

@implementation CLGoogleMapViewViewModel

- (instancetype)initGoogleMapViewViewModelWithController:(CLGoogleMapViewController *)controller {
    
    self = [super init];
    
    if (self) {
        
        self.cl_googleMapViewController = controller;
    }
    
    return self;
}

@end
