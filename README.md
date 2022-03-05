# Flutter
understanding &amp; explore Flutter (dart)

## Built-in Types

- Number: Int, 
- String
- List
- Boolean


#### Array

- List로 구현
- push = add();
- pop = remove();

- 단순 List 로 배열 구현시, 각각의 index 에 들어있는 요소의 data type 은 중요치 않음.
- but List<String> 으로 구현시, 요소의 data type 은 반드시 정해진 data type 으로 구현되어야함.

 

## <span style="color: orange">Life Cycle - Stateful Widget</span>

![lifeCycle](https://user-images.githubusercontent.com/69840717/155669183-3abcbb19-512f-42d0-b259-4ecce4f62177.png)


### <span style="color: #A7C7E7">initState()</span>

initState는 오직 한번 만 호출 되는데 반드시 super.initState()를 호출해야합니다.

주로
1. 생성된 위젯 인스턴스의 BuildContext에 의존적인 것들의 데이터 초기화
2. 동일 위젯트리내에 부모위젯에 의존하는 속성 초기화
3. Stream 구독, 알림변경, 또는 위젯의 데이터를 변경할 수 있는 다른 객체 핸들링.
이용하게 됩니다!

>``` dart
>class _CounterContainerState extends State<CounterContainer> {
>  late int count;
>
>  @override
>  void initState() {
>    super.initState();
>    count = 0;
>  }
>  ...
>}


### <span style="color: #A7C7E7">didChangeDependencies()</span>
didChangeDependencies 메서드는 위젯이 최초 생성될 때 initState() 다음에 호출 됩니다.
또한 위젯이 의존하는 데이터의 객체가 호출될때마다 호출되죠!
예를 들면, 업데이트 되는 위젯을 상속한 경우 상속한 위젯이 업데이트 될 때 네트워크 호출이 필요한 경우 사용하게 됩니다.

>``` dart
>@override
>void didChangeDependencies() {
>  super.didChangeDependencies();
>}
>```

### <span style="color: #A7C7E7">didUpdateWidget()</span>

>```dart
>@override
>void didUpdateWidget(MyWidget oldWidget) {
>  super.didUpdateWidget(oldWidget);
>  if (widget.value != oldWidget.value) {
>    // TODO: start a transition between the previous and new value
>  }
>}
>```

### <span style="color: #A7C7E7">build()</span>

### <span style="color: #A7C7E7">setState()</span>

### <span style="color: #A7C7E7"> dispose()</span>


## Const vs Final

const와 final의 속성은 비슷하지만
- const는 compile 단계에서 지정, final은 running context에서 지정

>``` dart
> final List<String> classOne = ['철수','영이','수미']; // classOne 의 철수 영이 수미 라는 값은 바뀔수있다.
> const List<String> classOne = ['철수','영이','수미']; // classTwo 의 element는 바뀔수 없다.

## Number type

