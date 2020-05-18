//
//  HPaySDK.h
//  HPayDemo
//
//  Created by zhaoze@BSoft on 2020/4/1.
//  Copyright © 2020 bsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIViewController;

NS_ASSUME_NONNULL_BEGIN

@interface HPaySDK : NSObject

/**
 获取HPaySDK对象
 
 @param merchantNo 开发者id 聚合支付平台为每个开发者分配的开发者账号
 @param url 接口地址
 @param universalLink 微信开发者Universal Link UIWebView
 @return HPaySDK对象
 */
+ (HPaySDK *)registerSDKPay:(NSString *)merchantNo
                        url:(NSString *)url
              universalLink:(NSString *)universalLink;

+ (HPaySDK *)registerSDKPay:(NSString *)merchantNo
                        url:(NSString *)url;

+ (instancetype)shared;

/**
 支付
 
 @param orderInfo 订单信息
 @param sign 签名串
 @param appSchema URLtype
 @param viewController 视图控制器
 @param callback 回调函数 在没有安装支付宝钱包的情况下，通过该方法同理前台同步返回结果
 @param finishHandler 如果code 为1001，表示处理成功，即将跳转支付或微信，如果code不等于1001，说明处理失败，需要显示错误消息
 */
- (void)doPay:(NSString *)orderInfo
         sign:(NSString *)sign appSchema:(NSString *)appSchema viewController:(UIViewController *)viewController
     callback:(void(^)(NSDictionary *dict))callback
finishHandler:(void(^)(NSString *code, NSString *errMsg))finishHandler;



/**
 充值

 @param orderInfo 订单信息
 @param sign 签名串
 @param appSchema URLtype
 @param viewController 视图控制器
 @param callback 回调函数 在没有安装支付宝钱包的情况下，通过该方法同理前台同步返回结果
 @param finishHandler 回调函数 如果code 为1001，表示处理成功，即将跳转支付或微信，如果code不等于1001，说明处理失败，需要显示错误消息
 */
- (void)doRecharge:(NSString *)orderInfo
              sign:(NSString *)sign
         appSchema:(NSString *)appSchema
    viewController:(UIViewController *)viewController
          callback:(void(^)(NSDictionary *dict))callback
     finishHandler:(void(^)(NSString *code, NSString *errMsg))finishHandler;

/**
 获取开通渠道

 @param orderInfo 订单信息
 @param sign 签名
 @param completeHandler 成功回调函数 成功时调用该函数，APP可在该方法里面显示界面
 @param failHandler 失败回调函数 失败时回调函数，APP可在该方法实现错误信息的提示框告诉用户
 */
- (void)getOpenChannel:(NSString *)orderInfo
                  sign:(NSString *)sign
       completeHandler:(void (^)(NSArray *array))completeHandler
           failHandler:(void(^)(NSString *code, NSString *errMsg))failHandler;

/**
 前台同步返回结果处理
 该方法应该在AppDelegate.m文件中-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options 方法中调用
 @param url 接口地址
 @param callback resultDict 包含两个参数: RetCode SUCCESS – 支付成功  FAIL – 支付失败 ErrMsg 错误消息描述
 @return 结果
 */
- (BOOL)processOrder:(NSURL *)url callback:(void(^)(NSDictionary *resultDict))callback;


/// 处理微信通过Universal Link启动App时传递的数据
/// 该方法应该在AppDelegate.m文件中application:continueUserActivity:restorationHandler: 方法中调用
/// @param universalLink 微信启动第三方应用时系统API传递过来的userActivity
/// @param callback resultDict 包含两个参数: RetCode SUCCESS – 支付成功  FAIL – 支付失败 ErrMsg 错误消息描述
/// @return 结果
- (BOOL)handleOpenUniversalLink:(NSUserActivity *)universalLink
                       callback:(void(^)(NSDictionary *resultDict))callback;


@end

NS_ASSUME_NONNULL_END
