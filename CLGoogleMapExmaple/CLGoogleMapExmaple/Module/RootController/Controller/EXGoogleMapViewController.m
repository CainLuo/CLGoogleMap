//
//  EXGoogleMapViewController.m
//  CLGoogleMapExmaple
//
//  Created by Cain Luo on 2018/5/29.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "EXGoogleMapViewController.h"
#import "EXGoogleMapViewModel.h"
#import "EXGoogleMapDelegate.h"

@interface EXGoogleMapViewController ()

@property (nonatomic, strong) EXGoogleMapViewModel *ex_googleMapViewModel;
@property (nonatomic, strong) EXGoogleMapDelegate  *ex_googleMapDelegate;

@end

@implementation EXGoogleMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"谷歌地图";
    
    [self cl_setGoogleMapViewDelegate:self.ex_googleMapDelegate];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self ex_addConstraintsWithSuperView];
}

- (EXGoogleMapViewModel *)ex_googleMapViewModel {
    
    CL_GET_METHOD_RETURN_OBJC(_ex_googleMapViewModel);
    
    _ex_googleMapViewModel = [[EXGoogleMapViewModel alloc] initGoogleMapViewViewModelWithController:self];
    
    return _ex_googleMapViewModel;
}

- (EXGoogleMapDelegate *)ex_googleMapDelegate {
    
    CL_GET_METHOD_RETURN_OBJC(_ex_googleMapDelegate);
    
    _ex_googleMapDelegate = [[EXGoogleMapDelegate alloc] initGoogleMapViewDelegateWithViewModel:self.ex_googleMapViewModel];
    
    return _ex_googleMapDelegate;
}

- (void)ex_addConstraintsWithSuperView {
    
    self.cl_mapView.myLocationEnabled = YES;
    
    [self.cl_mapView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
        } else {
            
            (void)make.edges;
        }
    }];
}

@end
