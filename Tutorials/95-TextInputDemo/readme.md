### QML Tutorials

#### 基本语法

---

1. id 是一个非常特殊的属性值，它在一个 QML 文件中被用来引用元素。id 不是一个字符串，而是一个标识符和 QML 语法的一部分。一个 id 在一个 QML 文档中是唯一的，并且不能被设置为其它值，也无法被查询（它的
   行为更像 C++ 世界里的指针）。

   ``` qml
   Text {
   	id: text
   }
   ```

   

2. property 一个属性能够设置一个值，这个值依赖于它的类型。如果没有对一个属性赋值，那么它将会被初始化为一个默认值。

   ``` qml
   Text {
   	id: thisLabel
   	property int times: 5
   	property alias anotherTimes: thisLable.times
   }
   ```

   

3. 一个属性能够依赖一个或多个其它的属性，这种操作称作属性绑定。当它依赖的属性改变时，它的值也会更新。

4.  添加自己定义的属性需要使用 property 修饰符，然后跟上类型，名字和可选择的初始化值 （property : ） 。如果没有初始值将会给定一个系统初始值作为初始值。

   注意如果属性名与已定义的默认属性名不重复，使用 default 关键字你可以将一个属性定义为默认属性。这在你添加子元素时用得着，如果他们是可视化的元素，子元素会自动的添加默认属性的子类型链表 （children property list） 。

   ``` qml
   Text {
   	property int times: 24
   }
   ```

5. alias 关键字允许我们转发一个属性或者转发一个属性对象自身到另一个作用域。

   ``` qml
   Text {
   	id: this
   	text: "abc"
   	property alias thisText: this.text 
   }
   ```

6. QML 提供了动态作用域的机制，后加载的文档会覆盖之前加载文档的元素 id 号，这样就可以引用已加载并且没有被覆盖的元素 id，这有点类似创建全局变量。但不幸的是这样的代码阅读性很差。目前这个还没有办法解决这个问题所以你使用这个机制的时候最好仔细一些甚至不要使用这种机制。

##### QML 与脚本

---

1. ``` qml
   Text {
   	id: label
   	x: 24; y: 24
   	// 自定义计数器
   	property int spacePresses: 0
   	text: "Space pressed: " + spacePresses + " times"
   	
   	// 文本改变操作 onTextChanged 会将每次空格键按下导致的文本改变输出到控制台
   	onTextChanged: console.log（"text changed to : "， text）
   	focus: true
   	
   	// JS code.
   	// 定义一个 JavaScript 函数使用这种格式 function(){....}，
   	// 在这个例子中是增加 spacePressed 的计数。
   	// 每次 spacePressed 的增加都会导致它绑定的属性更新。
   	function increment() {
   		spacePresses = spacePresses + 1
   	}
   	// call JS functions.
   	// 当文本元素接收到空格键操作（用户在键盘上点击空格键），会调用 JavaScript 函数 increment()。
   	Keys.onSpacePressed: {
   		increment()
   	}
   	// ESC 按下清空文本
   	Keys.onEscapePressed: {
   		label.text = ""
   	}
   }
   ```

##### 基础元素对象（Item Element）

---

​		Item （基础元素对象）是所有可视化元素的基础对象，**所有其它的可视化元素都继承自 Item**。它自身不会有任何绘制操作，但是定义了所有可视化元素共有的属性。

| Group（分组）                | Properties（属性）                                           |
| ---------------------------- | ------------------------------------------------------------ |
| Geometry（几何属性）         | x，y（坐标）定义了元素左上角的位置，width，height（⻓和宽）定义元素的显示范围，z（堆叠次序）定义元素之间的重叠顺序。 |
| Layouthandling（布局操作）   | anchors（锚定），包括左（left），右（right），上（top），下（bottom），水平与垂直居中（vertical center，horizontal center），与margins（间距）一起定义了元素与其它元素之间的位置关系。 |
| Key handlikng（按键操作）    | 附加属性key（按键）和keyNavigation（按键定位）属性来控制按键操作，处理输入焦点（focus）可用操作。 |
| Transformation（转换）       | 缩放（scale）和rotate（旋转）转换，通用的x，y，z属性列表转换（transform），旋转基点设置（transformOrigin）。 |
| Visual（可视化）             | 不透明度（opacity）控制透明度，visible（是否可⻅）控制元素是否显示，clip（裁剪）用来限制元素边界的绘制，smooth（平滑）用来提高渲染质量。 |
| State definition（状态定义） | states（状态列表属性）提供了元素当前所支持的状态列表，当前属性的改变也可以使用transitions（转变）属性列表来定义状态转变动画。 |

##### 矩形框元素 (Rectangle Element)

---

​		Rectangle(矩形框)是基本元素对象的一个扩展，增加了一个颜色来填充它。它还支持边界的定义，使用border.color(边界颜色)，border.width(边界宽度)来自定义边界。你可以使用radius(半径)属性来创建一个圆角矩形。

``` qml
//! See 'RectangleDemo'
Rectangle {
	id: rect1
	x: 12; y: 12
    width: 76; height: 96
    // 颜色的命名是来自 SVG 颜色的名称
    // 也可以使用其它的方法来指定颜色，
    // 比如 RGB 字符串('#FF4444')，或者一个颜色名字(例如'white')。
    color: 'blue'
}

Rectangle {
	id: rect2
	x: 112; y: 12
	width: 76; height: 96
	border.color: 'blue'
	border.width: 4
	radius: 8
}
```

##### 文本元素 (Text Element)

---

​		显示文本你需要使用Text元素(Text Element)。它最值得注意的属性时字符串类型的text属性。这个元素会使用给出的text(文本)与font(字体)来计算初始化的宽度与高度。可以使用字体属性组来(font property group)来改变当前的字体，例如font.family，font.pixelSize，等等。改变文本的颜色值只需要改变颜色属性就可以了。

``` qml
//! See 'TextDemo'
Text {
	text: "Hello QML!"
	color: '#303030'
	font.family: 'Source Code Pro'
	font.pixelSize: 28
}
```

文本可以使用 horizontalAlignment 与 verticalAlignment 属性来设置它的对⻬效果。

##### 图像元素(Image Element)

---

​		一个图像元素(Image Element)能够显示不同格式的图像(例如 PNG， JPG， GIF， BMP)。想要知道更加详细的图像格式支持信息，可以查看 Qt 的相关文档。source 属性(source property)提供了图像文件的链接信息， fillMode(文件模式)属性能够控制元素对象的大小调整行为。

``` qml
//! See 'ImageDemo'
Image {
    id: img
    // 也可以是一个网络链接
    source: "qrc:/linux.png"
    anchors.centerIn: parent
}

 mage {
    id: img2
    // 也可以是一个网络链接
    source: "qrc:/linux.png"
    width: 200; height: 200
}
```

1. PreserveAspectCrop 可以避免裁剪图像数据被渲染到图像边界外。默认情况下裁剪是被禁用的(clip:false)。

##### 鼠标区域元素 (MouseArea Element)

---

​		为了与不同的元素交互，你通常需要使用MouseArea(鼠标区域)元素。这是一个矩形的非可视化元素对象，你可以通过它来捕捉鼠标事件。当用户与可视化端口交互时，mouseArea通常被用来与可视化元素对象一起执行命令。

``` qml
//! See 'MouseAreaDemo'
Rectangle {
    id: rect1
    width: 200; height: 200
    x: 20; y: 20
    color: 'orange'
}

Rectangle {
    id: rect2
    width: 200; height: 200
    x: 240; y: 20
    color: "orange"
}
MouseArea {
    anchors.fill: rect2
    onClicked: {
        rect2.color = "blue"
    }
}
```

#### 组件 (Compontents)

---

​		一个组件是一个可以重复使用的元素， QML 提供几种不同的方法来创建组件。但是目前我们只对其中一种方法进行讲解: **一个文件就是一个基础组件**。一个以文件为基础的组件在文件中创建了一个 QML 元素，并且将文件以元素类型来命名(例如Button.qml)。你可以像任何其它的 QtQuick 模块中使用元素一样来使用这个组件。

``` qml
//! See 'CustomButtonDemo'
file: CustomButton.qml
```

##### 简单的转换 (Simple Transformations)

---

简单的**位移**是通过改变 **x**，**y** 坐标来完成的。

**旋转**是改变 **rotation** (旋转)属性来完成的，这个值使用角度作为单位(0~360)。

**缩放**是通过改变 **scale** (比例)的属性来完成的，小于1意味着缩小，大于1意味着放大。

``` qml
//! See 'SimpleTransformationDemo'
// 点击图片1，缩放（放大）图片
// 点击图片2，位移图片
// 点击图片3，（逆时针）旋转图片3
```

##### 定位元素 (Positioning Element)

---

``` qml
//! See 'Positioning Demo'
// 行布局
RowDemo.qml
spacing: x		// 间隔 x

// 列布局
ColumnDemo.qml
spacing: x 		// 间隔 x

// 栅格布局
GridDemo.qml
rows: x			// x 行
columns: y		// y 列

// 流布局
Flow.qml
spacing: x 		// 间隔 x

// 重复元素
RepeaterDemo.qml
model: x		// 重复 x 次
```

#### 输入元素 (Input Element)

##### 文本输入(TextInput)

``` qml 
// 文本输入允许用户输入一行文本。这个元素支持使用正则表达式验证器来限制输入和输入掩码的模式设置。
//! See 'TextInputDemo'
//！文本输入见 'TextInputDemo.qml'
//! 文本编辑见 'TextEditDemo.qml'
```



