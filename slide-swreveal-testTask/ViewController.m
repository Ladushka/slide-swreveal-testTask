//
//  ViewController.m
//  slide-swreveal-testTask
//
//  Created by Admin on 14.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;

@interface ViewController (){
    GMSMapView *mapView_;
}

@end

@implementation ViewController
@synthesize mapLabel;
@synthesize mapName;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    mapLabel.text = mapName;
    
    GMSCameraPosition *camera = [GMSCameraPosition
                                 cameraWithLatitude:55.182668
                                 longitude:30.202229
                                 zoom:8];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
        if([mapName compare: @"satellite"]==0){
            mapView_.mapType = kGMSTypeSatellite;
        }
        else if([mapName compare: @"sheme"]==0){
            mapView_.mapType = kGMSTypeNormal;
        }
        else if ([mapName compare: @"hybrid"]==0){
            mapView_.mapType = kGMSTypeHybrid;
        }
    
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
}


@end
