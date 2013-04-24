//
//  YelpRootViewController.m
//  YelpExample
//
//  Created by Ramiro Guerrero & Marco Graciano on 4/24/13.
//    Copyright (c) 2013 Weston McBride
//
//    Permission is hereby granted, free of charge, to any
//    person obtaining a copy of this software and associated
//    documentation files (the "Software"), to deal in the
//    Software without restriction, including without limitation
//    the rights to use, copy, modify, merge, publish,
//    distribute, sublicense, and/or sell copies of the
//    Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice
//    shall be included in all copies or substantial portions of
//    the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
//    KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//    WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
//    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
//    OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
//    OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//    OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "YelpRootViewController.h"
#import "RMMasterSDK.h"

@interface YelpRootViewController ()

@end

@implementation YelpRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //COMMENT AND UNCOMMENT THE FOLLOWING LINES FOR METHOD TESTING: check for the responseObjects in the console output.
    
    // NSDictionary *bounds = [NSDictionary dictionaryWithObjectsAndKeys:@"37.900000",@"sw_latitude", @"-122.500000", @"sw_longitude", @"37.788022", @"ne_latitude", @"-122.399797", @"ne_longitude", nil];
    
    // NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:@"10", @"limit", @"1", @"offset", @"2", @"sort", @"argentine", @"category_filter", @"20000", @"radius_filter", @"false", @"deals_filter", nil];
    
    // [[RMMasterSDK YelpSDK] getSearchWithTerm:@"restaurants" AndBounds:bounds AndParams:params AndWithDelegate:nil];
    
     [[RMMasterSDK YelpSDK] getSearchWithTerm:@"restaurants" AndLocation:@"Hayes" AndLatitude:@"37.77493" AndLongitude:@"-122.419415" AndParams:nil AndWithDelegate:nil];
    
    // [[RMMasterSDK YelpSDK] getBusinessWithBusinessId:@"yelp-san-francisco" AndParams:nil AndWithDelegate:nil];
    
    //  [[RMMasterSDK YelpSDK] getSearchWithTerm:@"food" AndLocation:@"new york" AndParams:params AndWithDelegate:nil];
    
    //  NSDictionary* coordParams = [NSDictionary dictionaryWithObjectsAndKeys:@"37.788022", @"latitude", @"-122.399797", @"longitude", nil];
    
    // [[RMMasterSDK YelpSDK] getSearchWithTerm:@"bar" AndCoordinates:coordParams AndParams:params AndWithDelegate:nil];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end