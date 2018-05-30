//
//  CLGoogleMapViewController.m
//  CLMapKit
//
//  Created by Cain Luo on 2018/5/25.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLGoogleMapViewController.h"

@interface CLGoogleMapViewController ()

@property (nonatomic, strong, readwrite) GMSMapView *cl_mapView;

@end

@implementation CLGoogleMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.cl_mapView];
}

- (void)cl_setGoogleMapViewDelegate:(id <GMSMapViewDelegate>)delegate {
    
    self.cl_mapView.delegate = delegate;
}

- (GMSMapView *)cl_mapView {

    if (!_cl_mapView) {
    
        _cl_mapView = [[GMSMapView alloc] initWithFrame:self.view.frame];
    }
    
    return _cl_mapView;
}

@end
