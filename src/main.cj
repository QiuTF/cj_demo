package cj_demo

import cj_demo.pkg.dao
import cj_demo.pkg.startServer
import std.sync.*
import std.time.*
import std.collection.*
import cj_demo.routers

main(param: Array<String>): Int64 {

    println(param)

    println("hello world")

    var p = Person("123")

    println(p.name)

    var s = dao.Student("zyy")

    println(s.name)

    spawn {
        =>
        println("New thread before sleeping")
        // sleep for 100ms.
        println("New thread after sleeping")
    }

    sleep(100 * Duration.millisecond)
    println("Main thread")

    var a = 0

    a = 9

    println(param)

    println(age)

    var arr :Array<String> = ["qttf","好好好"]

    arr[0] = "123"

    var arr1 :ArrayList<Int16> = ArrayList<Int16>([1,2])

    arr1.append(9)

    println(arr1)

    for(i in routers.h){
        println(i)
    }

    routers.m["age"] = "28"

    routers.m["name"] = "张三"

    routers.m["height"] = "173"

    println(routers.m)

    startServer()

    return 0
}
