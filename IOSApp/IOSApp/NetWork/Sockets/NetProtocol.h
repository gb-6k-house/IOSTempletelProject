//
//  NetProtocol.h
//  HuXiaoQiHuo
//
//  Created by niupark on 16/5/19.
//  Copyright © 2016年 fukeng. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  @author LiuK, 16-05-19 14:05:33
 *
 *  socket 协议定义
 *
 *  @return <#return value description#>
 */

/*
 网络层说明
 /NetWork/Http/ ，是http协议相关封装
 /NetWork/Socket/ socket协议请求的封装
 /NetWork/Request/ 请求数据封装
 /NetWork/Response/ 返回数据封装
 /NetWork/NetProtocol  服务相关协议定义信息
 socket 通信说明
 */

#define  SOCKET_PROTOCOL(name)\
-(void)socket##name##CallBack:(id)response;

#define  PROTOCOL_SEL(name)\
@selector(socket##name##CallBack:)

@protocol SocketCallBackProtocol <NSObject>
@optional
/**
 *  @author LiuK, 16-06-07 17:06:58
 *
 *  socket链接成功返回
 *  NSDictionary;{
 * socket: 当前socket对象
 }
 *  @param SocketConnected <#SocketConnected description#>
 *
 *  @return <#return value description#>
 */
SOCKET_PROTOCOL(SocketConnected) //socket链接成功




@end
