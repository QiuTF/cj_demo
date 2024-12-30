package cj_demo.pkg

import net.http.*
import std.time.*
import std.sync.*
import std.log.LogLevel

let http = ServerBuilder().addr("127.0.0.1").port(9907).build()

public func startServer(): Unit {
    // 2. 注册请求处理逻辑
    http.distributor.register(
        "/hello",
        {
            httpContext => httpContext.responseBuilder.body("Hello Cangjie!")
        }
    )
   
    // 3. 启动服务
    http.serve()
}
