//
//  ViewController.m
//  SDKDemo
//
//  Created by Cer on 2018/11/6.
//  Copyright © 2018 Cer. All rights reserved.
//

#import "ViewController.h"
#import <SDK/SDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    SDKData *data = [SDKData new];
//    [data show];
    
    NSBundle *resourceBundle = [NSBundle bundleForClass:[SDKData class]]; // 获取类所在的bundle
    NSString *bundlePath = [resourceBundle pathForResource:@"SDK" ofType:@"bundle"]; // 获取资源bundle路径
    
    // 方式1 直接拼路径
//    NSString *imagePath = [bundlePath stringByAppendingPathComponent:@"user.jpg"];
//    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    
    // 方式2 通过获取bundle来操作
//    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
//    NSString *imagePath = [bundle pathForResource:@"user.jpg" ofType:nil];
//    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    
    // 方式3 通过传入bundle来获取数据
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"user.jpg" inBundle:bundle compatibleWithTraitCollection:nil];
    
    NSLog(@"%s  image = %@", __func__, image);
    
    return;
}

@end
