---
layout: post
title:  "Python Turtle 的一些有趣实践"
date:   2021-04-18 02:37:00 +0800
categories: technology
tags: Python 摸鱼 整活
img: https://z3.ax1x.com/2021/04/18/cI7teA.jpg
author: Keyou_Fang
describe: 开开心心地整活哈哈哈
---

## Hello 大家好啊我是方可忧，好久不见我终于又有想法更Blog了

## 最近在学[复习]Python的Turtle，U1S1，还是挺有趣的

## 下面是我的两个代码的小小实践[整活]

---

# 春

###这是运用了随机数的画图，让这棵树看起来并不会过于死板，同时可以更换树叶的颜色，让树看起来在开樱花

```py
# code by Keyou_Fang
import turtle
import random
from turtle import *

#先定义两个全局指针
t = turtle.Turtle()
w = turtle.Screen()

def tree(branchLen, t):
    if branchLen > 3:
        if 8 <= branchLen <= 12:
            if random.randint(0, 2) == 0: #随机画叶子
                t.color('SpringGreen4')
            else:
                t.color('lawngreen')
            t.pensize(branchLen / 2)
        elif branchLen < 8:
            if random.randint(0, 1) == 0:
                t.color('SpringGreen4')
            else:
                t.color('lawngreen')
            t.pensize(branchLen / 1.5)
        else:
            t.color('sienna')
            t.pensize(branchLen / 6)
        t.forward(branchLen)
        a = 1.5 * random.random()
        t.right(20 * a)
        b = 1.5 * random.random()
        tree(branchLen - 10 * b, t)
        t.left(40 * a)
        tree(branchLen - 10 * b, t)
        t.right(20 * a)
        t.up()
        t.backward(branchLen)
        t.down()
        turtle.delay(delay = 1)
    else:
        pass

def petal(m, t):
    for i in range(m):        
        a = 200 - 400 * random.random()
        b = 10 - 20 * random.random()
        t.up()
        t.forward(b)
        t.left(90)
        t.forward(a)
        t.down()
        if random.randint(0, 1) == 0:
            t.color('SpringGreen4')
        else:
            t.color('lawngreen')
        t.circle(1.5)
        t.up()
        t.backward(a)
        t.right(90)
        t.backward(b)

t.hideturtle()
getscreen().tracer(5, 0)
turtle.screensize(bg='thistle1')
t.left(90)
t.up()
t.backward(150)
t.down()
t.color('sienna')
tree(60, t)
petal(30, t)
t.goto(125, -100)
t.color('SpringGreen4')
t.write("By Keyou_Fang", font = 50)
```

# 世 界 名 画

### 只是想整个活，画了一幅世界名画而已，因为是画画就打了个表，手工画的哦

```py
# code by Keyou_Fang
import turtle as t

def Square(x, y, color):
    t.begin_fill()
    t.penup()
    t.goto(15 * y + 1, -15 * x - 1)
    t.color(color, color)
    t.setheading(0)
    t.pendown()
    for i in range(4):
        t.forward(15)
        t.right(90)
    t.end_fill()
    pass

t.tracer(2)
image = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,3,3,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,1,1,3,5,5,1,0,0,7,7,7,7,7,7,7,15,15,15,15,0,0,0,0],[0,0,1,3,4,5,4,2,0,0,7,7,7,7,7,7,15,15,15,15,15,15,0,0,0],[0,0,1,3,5,5,5,2,0,7,11,17,11,7,7,16,15,15,15,15,15,15,15,0,0],[0,0,0,0,2,2,0,0,0,7,11,11,11,7,7,16,16,16,16,15,15,15,15,15,0],[0,0,2,1,1,1,1,1,7,7,7,7,7,7,7,7,16,16,16,16,15,15,15,15,0],[0,0,2,1,1,1,1,2,10,10,10,10,10,10,10,10,10,10,10,10,15,15,15,15,0],[0,0,2,2,2,5,1,2,8,8,8,8,8,8,11,8,8,8,11,15,15,15,15,16,0],[0,0,0,1,1,1,1,2,8,8,8,8,8,8,11,11,11,11,11,15,15,15,15,16,0],[0,0,0,6,6,6,6,2,8,8,8,8,8,8,11,11,12,0,12,15,15,16,16,16,0],[0,0,0,6,9,6,6,5,8,8,8,8,8,8,11,11,0,13,13,15,16,16,16,16,0],[0,0,0,6,9,6,6,0,8,8,8,8,8,8,11,14,14,14,16,16,16,16,8,8,0],[0,0,0,6,9,6,6,0,8,8,8,8,8,8,14,14,14,14,16,16,16,16,8,8,0]]
colors = ['gray91', 'turquoise', 'steel blue', 'light coral', 'deep sky blue', 'bisque', 'midnight blue', 'seashell3', 'seashell4', 'navy', 'AntiqueWhite3', 'thistle1', 'dark orange', 'sienna3', 'gray67', 'gray6', 'gray2', 'red']
for i in range(15):
    for j in range(25):
        Square(i, j, colors[image[i][j]])

```

谢谢！