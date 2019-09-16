<?xml version="1.0" encoding="UTF-8" standalone="no"?><map version="0.8.1"><node CREATED="1568604549616" ID="2qt324j6cn1fih6ssk19r3f1a0" MODIFIED="1568604549617" TEXT="我"><node CREATED="1568604549617" ID="0sro8h3cg8bs1bd7ujbvgjnmac" MODIFIED="1568604549617" POSITION="right" TEXT="python"><node CREATED="1568604549617" ID="3svl39mlcjhvm6t0vfsm4lgmbu" MODIFIED="1568604549617" TEXT="类图工具"><node CREATED="1568604549617" ID="26f05mbu43f7viom8ac3ups0kn" MODIFIED="1568604549617" TEXT="Enterprise Architec 14"/><node CREATED="1568604549617" ID="23akotnnv17fmh7d9aqeeit0pi" MODIFIED="1568604549617" TEXT="pycharm"/></node><node CREATED="1568604549617" ID="2hi2ceqtb58aou4kkffsng59cc" MODIFIED="1568604549617" TEXT="面向对象学习"><node CREATED="1568604549617" ID="5k6apte7m8eqogfn6947qfg4v9" MODIFIED="1568604549617" TEXT="面向对象分析"><node CREATED="1568604549617" ID="1vk1nds7mnc4m3mucco6fthkpu" MODIFIED="1568604549617" TEXT="解释:"><hook NAME="accessories/plugins/NodeNote.properties"><text>面向对象分析是查看问题、系统或任务（某人希望将其转化为应用程序）并识别对象和这些对象之间的交互的过程
。分析阶段是关于需要做什么的。
 
分析阶段的输出是一组需求。如果我们在一个步骤中完成分析阶段，我们将把一个任务（比如我需要一个网站）变成一组需求。例如，这里或一些关于网站访问者可能需要做什么的要求（斜体表示动作，粗体表示对象）：
回顾我们的历史
应用找工作
浏览，比较和订购产品
 
在某些方面，分析是一个误称。我们之前讨论过的婴儿没有分析积木和拼图块。相反，她探索她的环境，操纵形状，并看到它们可能适合的地方。更好的说法可能是面向对象的探索。在软件开发中，分析的初始阶段包括与客户面谈、研究他们的过程和消除可能性。</text></hook></node></node><node CREATED="1568604549617" ID="1b2gfkuo5iq6m9al8kfd43hhhq" MODIFIED="1568604549617" TEXT="面向对象设计"><node CREATED="1568604549617" ID="0e5cfbl66sr0tiva3tmnn07vig" MODIFIED="1568604549617" TEXT="解释"><hook NAME="accessories/plugins/NodeNote.properties"><text>设计阶段是关于如何做事情的。
①命名对象
②定义行为，
③指定哪些对象可以激活其他对象上的特定行为。
将把在面向对象分析期间定义的需求转化为一组类和接口</text></hook></node></node><node CREATED="1568604549617" ID="621ndc5fl8rvkvcv6ahmke6e8i" MODIFIED="1568604549617" TEXT="迭代开发模型"><node CREATED="1568604549617" ID="35heu913cc3rr84o4r9srecm18" MODIFIED="1568604549617" TEXT="解释"><hook NAME="accessories/plugins/NodeNote.properties"><text>根据功能需要一点点完善</text></hook></node></node><node CREATED="1568604549617" ID="11pim7dfcsntaivvpc44gjvolh" MODIFIED="1568604549617" TEXT="相关概念翻译"/><node CREATED="1568604549617" ID="75h9859aemdc0eplupkrvu4m0q" MODIFIED="1568604549617" TEXT="包"><node CREATED="1568604549617" ID="2mmqtdccf061c57i4393qi6tnm" MODIFIED="1568604549617" TEXT="包的结构"><hook NAME="accessories/plugins/NodeNote.properties"><text>父目录/
	main.py
	子目录/
		__init__.py
		模块1.py
		模块2.py
		子目录的子目录/
			模块1.py
			模块2.py</text></hook><node CREATED="1568604549618" ID="08lmnafob1514vlh81b1u15kt6" MODIFIED="1568604549618" TEXT="模块级别的变量"><hook NAME="accessories/plugins/NodeNote.properties"><text>假如模块中的变量需要持续地使用,那么添加global
eg:数据库中的例子
database.py
class Database(object):
	#数据库实现
	pass
database = Database()
但是上面的例子有一个问题,数据库连接需要时间,这就会减缓程序启动,或者得不到数据库连接信息.那么可以减缓database对象的创建,等真正需要他的时候,通过调用初始化数据库函数来创建模块级别的变量:
database.py
class Database(object):
	#数据库实现
	pass
database = None
def 初始化数据库():
	global database
	database = Database()
分析:如果没有指定这个变量是全局的,那么初始化数据库方法执行完毕返回的时候,database会被抛弃掉,但是剩下那个模块级别的database变量,支部会变(None)</text></hook></node></node><node CREATED="1568604549618" ID="78h1f0ikiv72s0gmcv7hkadg5t" MODIFIED="1568604549618" TEXT="包的导入方式"><node CREATED="1568604549618" ID="7t5nvavk1hqrlglb40g8jf92n2" MODIFIED="1568604549618" TEXT="绝对导入"><node CREATED="1568604549618" ID="2f23mfif095gm0ehcn8p2v4ost" MODIFIED="1568604549618" TEXT="例子"><node CREATED="1568604549618" ID="16sn5jqd0njdpt3eo09orp7tif" MODIFIED="1568604549618" TEXT="方法1"><hook NAME="accessories/plugins/NodeNote.properties"><text>import 包名.模块1
别名 = 包名.模块1.类1</text></hook></node><node CREATED="1568604549618" ID="3nmfv84s68iadps0ba3dbjequn" MODIFIED="1568604549618" TEXT="方法2"><hook NAME="accessories/plugins/NodeNote.properties"><text>from 包名.模块1 import 类1
别名 = 类1</text></hook></node><node CREATED="1568604549618" ID="4ruuj0urlgau7dc3d79cnbncj9" MODIFIED="1568604549618" TEXT="方法3"><hook NAME="accessories/plugins/NodeNote.properties"><text>from 包名 import 模块1
别名 = 模块1.类1</text></hook></node></node></node><node CREATED="1568604549618" ID="22pof2uk8brch2q12o8noqav9h" MODIFIED="1568604549618" TEXT="相对导入"><hook NAME="accessories/plugins/NodeNote.properties"><text>基于包中当前编辑的模块</text></hook><node CREATED="1568604549618" ID="56baoge1nqdnvf89ri0d73p6du" MODIFIED="1568604549618" TEXT="当前文件夹中的导入"><hook NAME="accessories/plugins/NodeNote.properties"><text>from .模块1 import 类1</text></hook></node><node CREATED="1568604549618" ID="03rj3lba6s54jqoc0k75jnnh2r" MODIFIED="1568604549618" TEXT="导入父层级中的模块或者文件夹"><hook NAME="accessories/plugins/NodeNote.properties"><text>from ..模块1 import 类1
#多少个点也就是多少个上层</text></hook></node></node></node><node CREATED="1568604549618" ID="254r7309bfj5ttpkriqcf41aub" MODIFIED="1568604549618" TEXT="类可以定义在任何地方例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 格式化字符串(字符串,格式化器 = None):
    class 默认格式化器(object):
        def 格式化(self,字符串):
            return str(字符串).title()
    if not 格式化器:
        格式化器 = 默认格式化器()
    return 格式化器.格式化(字符串)
测试字符串 = "today is good"
print("input:" + 测试字符串)
print("output" + 格式化字符串(测试字符串))</text></hook></node></node><node CREATED="1568604549618" ID="03e8cl48ccoi729613jq9htlj4" MODIFIED="1568604549618" TEXT="属性"><node CREATED="1568604549618" ID="5cmtbpm6lqf8ep2hepgflaqgak" MODIFIED="1568604549618" TEXT="property"><node CREATED="1568604549618" ID="7v16uivj76qq0331o64d8koe2g" MODIFIED="1568604549618" TEXT="通常指对私有变量的访问控制"/><node CREATED="1568604549618" ID="60ke3mplnkn3eel48gj109udel" MODIFIED="1568604549618" TEXT="getter"/><node CREATED="1568604549618" ID="58jj57377viviofp04ts158iq5" MODIFIED="1568604549618" TEXT="setter"/><node CREATED="1568604549618" ID="4sf7tfcrrpraoh6tb2e9qu9smj" MODIFIED="1568604549618" TEXT="特征,属性,property属性"/></node><node CREATED="1568604549618" ID="121ir8dqs71sv6lntncg6m9c7k" MODIFIED="1568604549618" TEXT="attribute"><node CREATED="1568604549618" ID="0ganslb8226vdgoqetqgf9j9hm" MODIFIED="1568604549618" TEXT="通常指一个类中的数据成员"/><node CREATED="1568604549618" ID="45bq7h7t5nvl839rlae5decv62" MODIFIED="1568604549618" TEXT="属性"/><node CREATED="1568604549618" ID="0t85pt0i6skreii33n4ubshus6" MODIFIED="1568604549618" TEXT="属性类型"><node CREATED="1568604549618" ID="2vp0fo0m67kucd675e33aupj7r" MODIFIED="1568604549618" TEXT="整数"/><node CREATED="1568604549618" ID="3qdb83npv3pfip1lt461vi467t" MODIFIED="1568604549618" TEXT="浮点型"/><node CREATED="1568604549618" ID="1hgumh96nlh99khatj7noqr1mu" MODIFIED="1568604549618" TEXT="字符串"/><node CREATED="1568604549618" ID="0i484r490p3t5bs9f5j8tbvijk" MODIFIED="1568604549618" TEXT="布尔型"/><node CREATED="1568604549618" ID="7dhdo8j8p272c2jv2ivch12oc2" MODIFIED="1568604549618" TEXT="数据结构"><node CREATED="1568604549618" ID="44lul32ifu3c8052fimpnf87nr" MODIFIED="1568604549618" TEXT="列表"/><node CREATED="1568604549618" ID="3vuk0hufnnr791vkqaudh4mvu2" MODIFIED="1568604549618" TEXT="图"/><node CREATED="1568604549618" ID="52uepijh88660g2skrcu33jhbm" MODIFIED="1568604549618" TEXT="树"/></node></node></node></node><node CREATED="1568604549618" ID="21bd83d7ct4ugmjoss3imomcov" MODIFIED="1568604549618" TEXT="类"><node CREATED="1568604549618" ID="7ir9podab1ak7309jo14p1o10a" MODIFIED="1568604549618" TEXT="多态性"/><node CREATED="1568604549618" ID="44svhebkg9ooblhbgshe2bfehf" MODIFIED="1568604549618" TEXT="容器"/><node CREATED="1568604549618" ID="1gk39oub1mcrtlq1npenik88ph" MODIFIED="1568604549618" TEXT="抽象基类"><node CREATED="1568604549618" ID="0e89qjiluib4dd3ccbhln3e0t4" MODIFIED="1568604549618" TEXT="抽象基类"><hook NAME="accessories/plugins/NodeNote.properties"><text>将每一个类定义为父类的子类，而不必实际扩展父类</text></hook><node CREATED="1568604549618" ID="6arqrco9solm6ie9c7upb8n0ic" MODIFIED="1568604549618" TEXT="一个判断另外一个类是否是类本身子类的方法"><hook NAME="accessories/plugins/NodeNote.properties"><text>    @classmethod
    def __subclasshook__(cls, C):
        if cls is Assignment:
            attrs = set(dir(C))
            if set(cls.__abstractmethods__) &lt;= attrs:
                return True
        return NotImplement</text></hook><node CREATED="1568604549618" ID="4n98ra11sopeastpks91pt7k06" MODIFIED="1568604549618" TEXT="该方法说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>不值得记住,只需要复制粘贴</text></hook></node></node></node></node></node><node CREATED="1568604549618" ID="32eldil6ne6j1o2bdh37vhljpp" MODIFIED="1568604549618" TEXT="Unexpected"><node CREATED="1568604549618" ID="2bkcpoq8g1g4ddr3rpkqfpvjr8" MODIFIED="1568604549618" TEXT="异常的运行机制"><hook NAME="accessories/plugins/NodeNote.properties"><text>当出现异常时，它似乎会立即停止程序执行。在引发异常之后应该运行的任何行都不会被执行，除非处理了异常，否则程序将退出并显示一条错误消息。</text></hook></node><node CREATED="1568604549618" ID="2g73hti9fmojl376cus6gqe26s" MODIFIED="1568604549618" TEXT="eg:"><hook NAME="accessories/plugins/NodeNote.properties"><text>#  a simple class that adds items to a list only if they are even numbered integers
class EvenOnly(list):
    def append(self, integer):
        if not isinstance(integer, int):
            raise TypeError("Only integers can be added")
        if integer % 2:
            raise ValueError("Only even numbers can be added")
        super().append(integer)
e = EvenOnly()
#e.append("字符串")
e.append(2)
e.append(3)</text></hook></node><node CREATED="1568604549618" ID="2b1eu79j9shi59ult11e2vgput" MODIFIED="1568604549618" TEXT="raise"><hook NAME="accessories/plugins/NodeNote.properties"><text> the raise keyword causes an exception to occur. The raise keyword is followed by the
object being raised as an exception.</text></hook></node><node CREATED="1568604549619" ID="0uehor342hmn75idq3m2vb2i7m" MODIFIED="1568604549619" TEXT="异常的影响"><hook NAME="accessories/plugins/NodeNote.properties"><text>When an exception is raised, it appears to stop program execution immediately. Any lines
that were supposed to run after the exception is raised are not executed, and unless the
exception is dealt with, the program will exit with an error message. </text></hook></node><node CREATED="1568604549619" ID="1bh71214102h74lfpvoesoup9q" MODIFIED="1568604549619" TEXT="异常的处理格式"><node CREATED="1568604549619" ID="0a82362gtatm3e40gdlcfdmvc9" MODIFIED="1568604549619" TEXT="不建议使用的异常处理格式"><hook NAME="accessories/plugins/NodeNote.properties"><text>try:
	#your def
except:
	#when the exception ocured the code will run.</text></hook></node><node CREATED="1568604549619" ID="3mcm6cqlmeer32hnagfpaohgur" MODIFIED="1568604549619" TEXT="异常处理的正确使用格式"><hook NAME="accessories/plugins/NodeNote.properties"><text>try:
    if divider == 13:
        raise ValueError("13 is an unlucky number")
    return 100 / divider
except ZeroDivisionError:
    return "Enter a number other than zero"
except TypeError:
    return "Enter a numerical value"
except ValueError:
    print("No, No, not 13!")
    raise</text></hook></node><node CREATED="1568604549619" ID="47k20nljj0n9o14i861l5kn3fp" MODIFIED="1568604549619" TEXT="异常完全正确的使用方式"><hook NAME="accessories/plugins/NodeNote.properties"><text>import random
some_exceptions = [ValueError, TypeError, IndexError, None]
try:
    choice = random.choice(some_exceptions)
    print("raising {}".format(choice))
    if choice:
        raise choice("An error")
except ValueError:
    print("Caught a ValueError")
except TypeError:
    print("Caught a TypeError")
except Exception as e:
    print("Caught some other error: %s" % (e.__class__.__name__))
else:
    print("This code called if there is no exception")
finally:
    print("This cleanup code is always called")</text></hook><node CREATED="1568604549619" ID="16ukppus7dt231cqpfi9qq6bq5" MODIFIED="1568604549619" TEXT="finally常用使用情况"><hook NAME="accessories/plugins/NodeNote.properties"><text>Cleaning up an open database connection
Closing an open file
Sending a closing handshake over the network</text></hook></node><node CREATED="1568604549619" ID="5sf5s12oudaoug08560ca2934q" MODIFIED="1568604549619" TEXT="关于except后面带不带异常种类"><hook NAME="accessories/plugins/NodeNote.properties"><text>When we use the except: clause without specifying any type of exception, it will catch all
subclasses of BaseException; which is to say, it will catch all exceptions, including the
two special ones. Since we almost always want these to get special treatment, it is unwise to
use the except: statement without arguments. If you want to catch all exceptions other
than SystemExit and KeyboardInterrupt, explicitly catch Exception. Most Python
developers assume that except: without a type is an error and will flag it in code review.
If you really do want to catch everything, just explicitly use except BaseException:.</text></hook></node></node></node><node CREATED="1568604549619" ID="1c6j5ce4rjicngc9b6ritno5ir" MODIFIED="1568604549619" TEXT="定义自己的异常"><node CREATED="1568604549619" ID="03ab2sslog9u11ibe97s70c0vb" MODIFIED="1568604549619" TEXT="通过继承exception不初始化构造器来定义新异常"><hook NAME="accessories/plugins/NodeNote.properties"><text>有时候，当我们想要引发异常时，我们发现没有一个内置的异常是合适的。幸运的是，定义我们自己的新异常非常简单。类的名称通常用于通信出错的地方，我们可以在初始化器中提供任意参数来包含其他信息。
我们所要做的就是继承Exception类。我们甚至不需要向类添加任何内容!当然，我们可以直接扩展BaseException，但是我从来没有遇到过这样的用例
。我们能够向异常传递任意数量的参数。通常使用字符串消息，但是可以存储在以后的异常处理程序中可能有用的任何对象。
方法被设计成接受任何参数，并将它们作为元组存储在一个名为args的属性中。这使得异常更容易定义，而不需要覆盖_init__</text></hook><node CREATED="1568604549619" ID="7e5sgiblfqe6j7qtuuab5tcikl" MODIFIED="1568604549619" TEXT="代码例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 取款操作(Exception):
    pass
raise 取款操作("你的账户里面没有$50")</text></hook></node></node><node CREATED="1568604549619" ID="3bsjv579bi3espnescb47aardc" MODIFIED="1568604549619" TEXT="自定义__init__构造器新建自定义异常"><node CREATED="1568604549619" ID="63864j8d5fef7havm6a38ff6ft" MODIFIED="1568604549619" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 取款操作(Exception):
    def __init__(self, 余额, 取的钱):
        super().__init__(f"余额没有 ${取的钱}")
        self.取的钱 = 取的钱
        self.余额 = 余额
    def 超额(self):
        return self.取的钱 - self.余额
try:
    raise 取款操作(25, 50)
except 取款操作 as e:
    print("我非常抱歉,但是你的取款超过了你的余额 "
          f"${e.超额()}")</text></hook><node CREATED="1568604549619" ID="1ngcv34qimisihm8o6geo6oq1v" MODIFIED="1568604549619" TEXT="例子说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>自定义初始化器，我们可以这样做。这里有一个异常，它的初始化器接受当前余额和用户想要提取的金额。此外，它还添加了一个方法来计算请求的透支程度:</text></hook></node></node></node><node CREATED="1568604549619" ID="3p345vk3u2k39voke8k7r1bno4" MODIFIED="1568604549619" TEXT="例子集合"><node CREATED="1568604549619" ID="2t9bg1oqln6mmg0vggpfa38fh5" MODIFIED="1568604549619" TEXT="检查除数是否为零的两种方法"><hook NAME="accessories/plugins/NodeNote.properties"><text>def divide_with_exception(number, divisor):
    try:
        print(f"{number} / {divisor} = {number / divisor}")
    except ZeroDivisionError:
        print("You can't divide by zero")
def divide_with_if(number, divisor):
    if divisor == 0:
        print("You can't divide by zero")
    else:
        print(f"{number} / {divisor} = {number / divisor}")
divide_with_exception(1, 0)</text></hook></node></node><node CREATED="1568604549619" ID="6givkduarl8pun9a3c4rnd6ppp" MODIFIED="1568604549619" TEXT="异常处理用于流程控制"><node CREATED="1568604549619" ID="0848jq12hr2l1gbc5abodgdi2c" MODIFIED="1568604549619" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 已售完(Exception):
    pass
class 无效的商品类型(Exception):
    pass
class 库存处理类:
    def 锁定(self, 商品类型):
        """参数[商品类型]:要锁定的商品类型,这个方法将锁定这个这个商品类型,知道这个商品被解锁,
        这样可以防止把同上的商品同时卖给两个不同的客户."""
        pass
    def 解锁(self, 商品类型):
        """释放锁定的[商品类型],是另外的客户可以访问这个[商品类型]"""
        pass
    def 购买(self, 商品类型):
        """如果[self.商品类型]没有被锁定,那么会引发异常;
        如果商品类型不存在将会引发异常;
        如果商品类型缺货,将会引发异常;
        如果商品类型可用,那么该商品数量会-1,然后返回该商品剩余的数量"""
        pass
商品类型 = "小部件"
库存处理对象 = 库存处理类()
库存处理对象.锁定(商品类型)
try:
    剩余商品数量 = 库存处理对象.购买(商品类型)
except 无效的商品类型:
    print("对不起,我们暂时不卖{}这种东西".format(商品类型))
except 已售完:
    print("对不起,{}已经卖完了".format(商品类型))
else:
    print("购买完毕.现在{}库存中的剩余数量是{}".format(剩余商品数量, 商品类型))
finally:
    库存处理对象.解锁(商品类型)</text></hook><node CREATED="1568604549619" ID="7tf1na5btidcml3ge2llmsreth" MODIFIED="1568604549619" TEXT="异常之间传递消息"><hook NAME="accessories/plugins/NodeNote.properties"><text>使用异常在不同的方法之间传递消息。例如，如果我们想要通知客户该项目预计何时再次有货，我们可以确保OutOfStock对象在构造时需要back_in_stock参数。然后，当我们处理异常时，我们可以检查该值并向客户提供附加信息。附加到对象上的信息可以很容易地在程序的两个不同部分之间传递。异常甚至可以提供一个方法来指示inventory对象重新排序或延迟排序</text></hook></node></node><node CREATED="1568604549619" ID="0ni5n6cl6jaknrnf4vphnetk6s" MODIFIED="1568604549619" TEXT="try....except...相对于if....elif....的所具有的的优点"><hook NAME="accessories/plugins/NodeNote.properties"><text>注意如何使用所有可能的异常处理子句来确保在正确的时间发生正确的操作。尽管OutOfStock不是一个非常特殊的情况，但是我们能够使用一个异常来适当地处理它。同样的代码也可以用if…elif…其他结构，但它不会那么容易阅读或维护。</text></hook></node></node></node></node><node CREATED="1568604549619" ID="6v2a5paj99irl3kq2di3lk7ada" MODIFIED="1568604549619" TEXT="何时使用面向对象程序编程"><node CREATED="1568604549619" ID="5huj7u6vd3ss90f46pr1tst1ua" MODIFIED="1568604549619" TEXT="将对象视为对象"><node CREATED="1568604549619" ID="1sgvga4a939oq748ba27dsf5sq" MODIFIED="1568604549619" TEXT="处理方法"><hook NAME="accessories/plugins/NodeNote.properties"><text>①确认问题中的对象
②对对象的数据和行为建模</text></hook><node CREATED="1568604549619" ID="21gq902sle311nas35546elsn7" MODIFIED="1568604549619" TEXT="①确认问题中的对象"/><node CREATED="1568604549619" ID="57n1uup1ubhk78jtgrli3hsvt7" MODIFIED="1568604549619" TEXT="②对对象的数据和行为建模"/><node CREATED="1568604549619" ID="75eec9meid94shurnl8j04n2nt" MODIFIED="1568604549619" TEXT="如何识别对象"><hook NAME="accessories/plugins/NodeNote.properties"><text>在面向对象的分析和编程中，对象识别是一项非常重要的任务。
对象是既有数据又有行为的东西。
如果我们只处理数据，那么最好将其存储在列表、集合、字典或其他python数据结构中（我们将在第6章python数据结构中详细介绍）。
另一方面，如果我们只处理行为，而不处理存储的数据，那么一个简单的函数更合适。</text></hook><node CREATED="1568604549619" ID="6jdtqki59nmqjtrs2vm8b9noce" MODIFIED="1568604549619" TEXT="对象是既有数据又有行为的东西。"/><node CREATED="1568604549619" ID="1kdm0el69qkb0p65mrc787hkiu" MODIFIED="1568604549619" TEXT="只处理数据详细介绍"/><node CREATED="1568604549619" ID="56sn8lt859iob8qulslfhb353q" MODIFIED="1568604549619" TEXT="只处理行为"/><node CREATED="1568604549619" ID="4upbke4eei859ooss197luelhk" MODIFIED="1568604549619" TEXT=""><hook NAME="accessories/plugins/NodeNote.properties"><text>一组数据越重要，它就越有可能具有特定于该数据的多个函数，而使用具有属性和方法的类则更有用.所以说,一组可能被多次使用的的数据,往往都可以演化成为类.</text></hook></node></node></node></node><node CREATED="1568604549619" ID="2h57bo7do74a7vd9v7ljhb8oh2" MODIFIED="1568604549619" TEXT="使用属性向类数据添加行为"><node CREATED="1568604549619" ID="56neqsg7ommvvgtn4h92hrqife" MODIFIED="1568604549619" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text># 使用属性向类数据添加行为
class Color:
    def __init__(self, rgb_value, name):
        self.rgb_value = rgb_value
        self._name = name
    def _set_name(self, name):
        if not name:
            raise Exception("Invalid Name")
        self._name = name
    def _get_name(self):
        return self._name
    name = property(_get_name, _set_name)
c = Color("#0000ff","bright red")
print("No.1.color:",c.name)
c.name = "red"
print("No.2.color:",c.name)
c.name = ""</text></hook></node><node CREATED="1568604549619" ID="4vqachharji2lnhk6ujmj2vth0" MODIFIED="1568604549619" TEXT="在对象属性变量前面使用一个下划线"/></node><node CREATED="1568604549619" ID="5dgmcf0gp4gktj6b5mm1d9c8ff" MODIFIED="1568604549619" TEXT="对象们的管理器"><node CREATED="1568604549619" ID="4llse28rl962ddpsjpu7i056su" MODIFIED="1568604549619" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>import sys
import shutil
import zipfile
from pathlib import Path
class ZipReplace:
    def __init__(self, filename, search_string, replace_string):
        self.filename = filename
        self.search_string = search_string
        self.replace_string = replace_string
        self.temp_directory = Path(f"unzipped-{filename}")
    def zip_find_replace(self):
        """这里是将三个步骤集中在这里,或者说,是将三个步骤在外部分散"""
        self.unzip_files()
        self.find_replace()
        self.zip_files()
    def unzip_files(self):
        self.temp_directory.mkdir()
        with zipfile.ZipFile(self.filename) as zip:
            zip.extractall(self.temp_directory)
    def find_replace(self):
        for filename in self.temp_directory.iterdir():
            with filename.open() as file:
                contents = file.read()
            contents = contents.replace(self.search_string, self.replace_string)
            with filename.open("w") as file:
                file.write(contents)
    def zip_files(self):
        with zipfile.ZipFile(self.filename, "w") as file:
            for filename in self.temp_directory.iterdir():
                file.write(filename, filename.name)
        shutil.rmtree(self.temp_directory)
if __name__ == "__main__":
    ZipReplace(*sys.argv[1:4]).zip_find_replace()</text></hook></node><node CREATED="1568604549620" ID="7g8hdegjvd6vtt220o2vj14ma0" MODIFIED="1568604549620" TEXT="消除重复的代码"><node CREATED="1568604549620" ID="6ojb3dbbqa15lnvqf2n8jutrhu" MODIFIED="1568604549620" TEXT="通过组合减少代码重复"/><node CREATED="1568604549620" ID="61ngqqg0qppsn973uftsab5654" MODIFIED="1568604549620" TEXT="通过继承减少代码重复"/></node></node></node><node CREATED="1568604549620" ID="1hegqls2mfmstomcdtfa21bt4o" MODIFIED="1568604549620" TEXT="总结"><node CREATED="1568604549620" ID="4pdl506oc72e4i0bkte4fkqe4l" MODIFIED="1568604549620" TEXT="python写代码的原则"><hook NAME="accessories/plugins/NodeNote.properties"><text>always make the effort to refactoryour code to be easier to read instead of writing bad code that may seem easier to write</text></hook></node></node><node CREATED="1568604549620" ID="0e9hhhldba58jth4bkapasqto4" MODIFIED="1568604549620" TEXT="数据结构+面向对象"><node CREATED="1568604549620" ID="2e990679-971b-4c32-803a-b962b638d010" MODIFIED="1568604549620" TEXT="几种数据类型"><node CREATED="1568604549620" ID="0ec6af37-20b9-4bd7-b462-81e5c655b900" MODIFIED="1568604549620" TEXT="正确使用数据类型对代码的可读性很重要"/><node CREATED="1568604549620" ID="1suu0tb03m5o56pu4l11rrjip5" MODIFIED="1568604549620" TEXT="关于元组"><node CREATED="1568604549620" ID="71gmrql285q8ho4c8lu7a92vbp" MODIFIED="1568604549620" TEXT="元组本身"><node CREATED="1568604549620" ID="0sdh5a1h8oti0f4q5mvm6v9r0t" MODIFIED="1568604549620" TEXT="元组的特性"><node CREATED="1568604549620" ID="1gbjqacaeqdqop4ih3jcjuofl8" MODIFIED="1568604549620" TEXT="对元组的操作"><hook NAME="accessories/plugins/NodeNote.properties"><text>不能对元组进行下面的操作:
添加
删除
修改(也就是替换里面的元素)</text></hook></node><node CREATED="1568604549620" ID="753mjl9jts1u73fa3hkjjmo14q" MODIFIED="1568604549620" TEXT="元组可以储存的对象"><hook NAME="accessories/plugins/NodeNote.properties"><text>数据√
行为×</text></hook></node></node><node CREATED="1568604549620" ID="1isb25ektl3r36vl77fr0iq1go" MODIFIED="1568604549620" TEXT="元组的结构"><node CREATED="1568604549620" ID="29014gsbc7pck36sro133bob8p" MODIFIED="1568604549620" TEXT="里面的元素用逗号隔开"/><node CREATED="1568604549620" ID="06a9oqmd8mv45cdqkg45q8dk59" MODIFIED="1568604549620" TEXT="元素包装在一个括号之中"><node CREATED="1568604549620" ID="4upgj1e48sn4hoh8sk8afi4eb8" MODIFIED="1568604549620" TEXT="创建的时候的两种写法"><hook NAME="accessories/plugins/NodeNote.properties"><text>两种写法在创建的时候都是一样的,不过通常都带括号,更加方便阅读</text></hook><node CREATED="1568604549620" ID="6bk0103kdib9pcn5j50vfgc93m" MODIFIED="1568604549620" TEXT="包含括号"><hook NAME="accessories/plugins/NodeNote.properties"><text>eg:
stock = ("good",666.66, 123)</text></hook></node><node CREATED="1568604549620" ID="33s8g7i4cgp9uvbldig3ta5ve2" MODIFIED="1568604549620" TEXT="不包含括号"><hook NAME="accessories/plugins/NodeNote.properties"><text>eg:
stock = "good",666.66, 123</text></hook></node></node></node></node><node CREATED="1568604549620" ID="7cjh59ifuvmkpjhs4gqqd891ab" MODIFIED="1568604549620" TEXT="把元组集成到其他对象中必须带括号"><node CREATED="1568604549620" ID="6ivlgp0s7uv3n1hphciets9khi" MODIFIED="1568604549620" TEXT="这些对象包括"><hook NAME="accessories/plugins/NodeNote.properties"><text>函数
列表解释
生成器</text></hook></node></node><node CREATED="1568604549620" ID="7f447lr91cfpdrdrqo7k56e53e" MODIFIED="1568604549620" TEXT="元组的拆分方式"><node CREATED="1568604549620" ID="56ecsljmlv3r3gtfncu2s8ree5" MODIFIED="1568604549620" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>原元组 = (参数1, 参数2, 参数3)
#下面拆分
变量1, 变量2, 变量3 = 原元组</text></hook></node><node CREATED="1568604549620" ID="4d16g013j5k7hllfc7dhc2ibhs" MODIFIED="1568604549620" TEXT="拆分方式说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>拆分元组的时候,它被拆分的赋值到的变量的数量和len(元组)的值相等.
也就是说元组有多少个元素,那么拆分的时候就必须要多少个变量来"装"下这些元素.</text></hook></node></node><node CREATED="1568604549620" ID="16g43tq168qv6ich25reqtd2vp" MODIFIED="1568604549620" TEXT="元组的读取"><node CREATED="1568604549620" ID="7sas0btaj1pr2h5t69ptrqu3s4" MODIFIED="1568604549620" TEXT="读取它的单个元素"><node CREATED="1568604549620" ID="284l3hdd7cc7rfp5g1s1sk8072" MODIFIED="1568604549620" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>元组 = ("well","你好", "什么", "天津", "广东")
单个元素示例 = 元组[2]
print(单个元素示例)</text></hook></node></node><node CREATED="1568604549620" ID="0u418n99j2d45rfnklf8bi6a6m" MODIFIED="1568604549620" TEXT="切片方式读取"><node CREATED="1568604549620" ID="7i3717mlfsm447dom1j26cfi1q" MODIFIED="1568604549620" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>元组 = ("well","你好", "什么", "天津", "广东")
切片读取示例 = 元组[1:3]
print(切片读取示例)</text></hook></node></node></node><node CREATED="1568604549620" ID="651ospl4q4nhgad8f07jkhk8e2" MODIFIED="1568604549620" TEXT="元组的缺点"><hook NAME="accessories/plugins/NodeNote.properties"><text>可读性差</text></hook></node></node><node CREATED="1568604549620" ID="1m63d04pum4o7r0ghd1h5el3bg" MODIFIED="1568604549620" TEXT="命名元组"><node CREATED="1568604549620" ID="7d2iu0vrftgno9vpildnp5pa0n" MODIFIED="1568604549620" TEXT="使用命名元组的环境说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果我们不需要向对象添加行为，并且事先知道需要存储哪些属性，那么可以使用命名元组。命名元组是带有态度的元组。它们是将只读数据分组在一起的好方法。</text></hook></node><node CREATED="1568604549620" ID="6ivakh69mrr8oq01q6bf6jgbko" MODIFIED="1568604549620" TEXT="如何使用命名元组"><node CREATED="1568604549620" ID="6smeqnreknqsdrkjhr5sh01flo" MODIFIED="1568604549620" TEXT="namedtuple构造函数"><hook NAME="accessories/plugins/NodeNote.properties"><text>from collections import namedtuple</text></hook><node CREATED="1568604549621" ID="2q9lf2671qejecaabsru4h0bcg" MODIFIED="1568604549621" TEXT="格式"><hook NAME="accessories/plugins/NodeNote.properties"><text>示例命名元组类 = namedtuple("这里元组的名字", "属性1名字 属性2名字 属性3名字............")
# 这个心的对象可以向一个正常的类那样调用.参数的数量和顺序必须正确,所有的属性都必须被指定
# 属性1应该能够被列表话
示例命名元组 = 示例命名元组类("示例元组名字", 属性1值, 属性2名字=属性2值, 属性3名字=属性3值......)
#上面的属性名字应该可有可无,看情况使用
#下面是像类的属性那样访问元组属性
print(示例命名元组.属性1名字)</text></hook><node CREATED="1568604549621" ID="49n35mk4d5huem33og5ummp92o" MODIFIED="1568604549621" TEXT="可以像类的属性那样访问命名元组的属性"/><node CREATED="1568604549621" ID="6pvpur8tbdtedqvrcvgmteg2b8" MODIFIED="1568604549621" TEXT="可以像普通元组那样打包或者拆分"/></node></node><node CREATED="1568604549621" ID="af9fa8a1-4ae1-4a37-b66f-816656a6a74c" MODIFIED="1568604549621" TEXT="from collections import namedtuple"/></node></node></node><node CREATED="1568604549621" ID="17pstu76rna0flifqn26grd13d" MODIFIED="1568604549621" TEXT="关于字典"><node CREATED="1568604549621" ID="5ift206c51bq9hamk30q6mksov" MODIFIED="1568604549621" TEXT="字典的特性"><node CREATED="1568604549621" ID="5egd833q1suket8lt0m2dn39jp" MODIFIED="1568604549621" TEXT="没有顺序"><node CREATED="1568604549621" ID="2gvdahsrl54tfutuem865eakke" MODIFIED="1568604549621" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典内部使用了高效的哈希算法,所以字典内部数据没有顺序,能使键查找非常快.</text></hook></node></node></node><node CREATED="1568604549621" ID="7m2iouu4b2lbecq14m4kelph1f" MODIFIED="1568604549621" TEXT="字典的作用"><hook NAME="accessories/plugins/NodeNote.properties"><text>将一个对象映射到另一个对象</text></hook></node><node CREATED="1568604549621" ID="1g9sp6ovv3r55k0m1bjldn1nsj" MODIFIED="1568604549621" TEXT="使用环境"><hook NAME="accessories/plugins/NodeNote.properties"><text>当需要基于另一个对象去查找一个对象的时候,最应该使用的就是字典.
在查询值方面,字典是非常高效的</text></hook><node CREATED="1568604549621" ID="4l112nc7gt1h44pu4qpmu2knif" MODIFIED="1568604549621" TEXT="具体使用环境1"><hook NAME="accessories/plugins/NodeNote.properties"><text>使用字典中所有的键代表相似对象的不同实例.
例如股票字典,这可以看做一个索引系统.使用股票代码作为值的索引,而值可以是自定义的复杂对象,包含买卖的决定,或者这设置一个止损点,而不只是一个简单的元组.</text></hook></node><node CREATED="1568604549621" ID="06lk2vmbdhvrae41fqrtu2fgqn" MODIFIED="1568604549621" TEXT="具体使用环境2"><hook NAME="accessories/plugins/NodeNote.properties"><text>狮子点的每个键代表一个单一对象的某些方面.</text></hook></node></node><node CREATED="1568604549621" ID="2cqoh8ihnpt80vu4p1g2hb3drh" MODIFIED="1568604549621" TEXT="字典值和键的定义"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典中,
被存储的对象定义为"值"
也在用作索引的对象定义为"键"</text></hook></node><node CREATED="1568604549621" ID="3u8b15s6p7lr8r7vdvo68ivmjl" MODIFIED="1568604549621" TEXT="构造字典的方法"><node CREATED="1568604549621" ID="3tcga4io95ib87ucjjmqglph5i" MODIFIED="1568604549621" TEXT="方法1:使用dict()"/><node CREATED="1568604549621" ID="7gv1uv5ucs3tba26hmn1o5emv9" MODIFIED="1568604549621" TEXT="方法2:使用{}"><node CREATED="1568604549621" ID="17eb0tvs4blcjjgcss1ru4snem" MODIFIED="1568604549621" TEXT="这个是常用的方法"/></node></node><node CREATED="1568604549621" ID="3lqf3hkcsqnoh3f57cp66vccvi" MODIFIED="1568604549621" TEXT="字典的方法"><node CREATED="1568604549621" ID="0i4d6gdkk1fcbh63j3gp6smrhm" MODIFIED="1568604549621" TEXT="字典.get()"><node CREATED="1568604549621" ID="58q07q8kmdkaciteqpl9tghq0t" MODIFIED="1568604549621" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典 = {"good": (11, 22, 33),
        "bad": (101, 202, 303)}
print(字典["good"])
# 不存在的键
#print(字典["不存在"])
print(字典.get("get测试"))
print(字典)
print(字典.get("get测试", "不存在这个键"))
print(字典)</text></hook></node><node CREATED="1568604549621" ID="6n9cs2s0khld0fkj79vjnheg85" MODIFIED="1568604549621" TEXT="格式:"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典.get(参数1,参数2)
解释:
参数1:"键名"--必选
参数2:"字典没有该键时返回的字符串"--可选</text></hook></node></node><node CREATED="1568604549621" ID="6hdvv1ndft1ite0ja474a033ov" MODIFIED="1568604549621" TEXT="字典.setdefault()"><node CREATED="1568604549621" ID="2q2v2nhj72s34k99nfb42kq1t3" MODIFIED="1568604549621" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典 = {"good": (11, 22, 33),
        "bad": (101, 202, 303)}
print(字典["good"])
# 不存在的键
#print(字典["不存在"])
print(字典.get("get测试"))
print(字典)
print(字典.get("get测试", "不存在这个键"))
print(字典)</text></hook></node><node CREATED="1568604549621" ID="2nb5j9bgfldbs6l8pvk7oikhdo" MODIFIED="1568604549621" TEXT="格式"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典.setdefault(参数1,参数2)
解释:
参数1(必选):"键名"
参数2(必选):如果参数1中的"键名"不存在,那么setdefaule函数会在字典中添加这个"键名",然后设置这个"键名"的值为参数2,同时setdeafault返回参数2</text></hook></node></node><node CREATED="1568604549621" ID="60am61aqug8mpq65fl3chhejd6" MODIFIED="1568604549621" TEXT="字典.keys()"><node CREATED="1568604549621" ID="427seo66plta1bfs312n0b2qlo" MODIFIED="1568604549621" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回字典所有的key</text></hook></node></node><node CREATED="1568604549621" ID="2sc4plsead9h4b9i2lbc8lsven" MODIFIED="1568604549621" TEXT="字典.values()"><node CREATED="1568604549621" ID="5hvobmv186a57nfr8ha4uvibtd" MODIFIED="1568604549621" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回字典所有的value</text></hook></node></node><node CREATED="1568604549621" ID="4nspsn3n39c2ho58d2svgeiljb" MODIFIED="1568604549621" TEXT="字典.items()"><node CREATED="1568604549621" ID="74dcglecsmgve2nqhrp0du05jr" MODIFIED="1568604549621" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回包含所有key和value的</text></hook></node></node></node><node CREATED="1568604549621" ID="5c2t0uqg8bchd74csg7efk3f2s" MODIFIED="1568604549621" TEXT="字典的键"><node CREATED="1568604549621" ID="5g0gd66pp2obls0r2hr0oqorm8" MODIFIED="1568604549621" TEXT="可以作为字典的键的对象类型"><node CREATED="1568604549621" ID="23j88h3ge0pfn3r50ddeon35a4" MODIFIED="1568604549621" TEXT="字符串"><node CREATED="1568604549621" ID="0c4b93k7ispljdtr4n8rok3v4q" MODIFIED="1568604549621" TEXT="共同例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>stocks = {
    "GOOG": (1235.20, 1242.54, 1231.06),
    "MSFT": (110.41, 110.45, 109.84),
}
random_keys = {}
#string
random_keys["astring"] = "somestring"
#integer
random_keys[5] = "aninteger"
#float
random_keys[25.2] = "floats work too"
#tuple
random_keys[("abc", 123)] = "so do tuples"
#object
class AnObject:
    def __init__(self, avalue):
        self.avalue = avalue
my_object = AnObject(14)
random_keys[my_object] = "We can even store objects"
my_object.avalue = 12
#list
try:
    random_keys[[1, 2, 3]] = "we can't store lists though"
except:
    print("unable to store list\n")
for key, value in random_keys.items():
    print("{} has value {}".format(key, value))</text></hook></node></node><node CREATED="1568604549621" ID="65laluljs4jl538ffph9t16p4m" MODIFIED="1568604549621" TEXT="元组"><arrowlink DESTINATION="0c4b93k7ispljdtr4n8rok3v4q" ENDARROW="Default" ID="77mfunbpk69ojoj39m4usgbujm" STARTARROW="None"/><node CREATED="1568604549622" ID="0g3dauj8c028neq9q3r4upp5hc" MODIFIED="1568604549622" TEXT="也可以进一步使用命名元组"/></node><node CREATED="1568604549622" ID="6590i7dlqel1d55eucdc1jttna" MODIFIED="1568604549622" TEXT="数字"><arrowlink DESTINATION="0c4b93k7ispljdtr4n8rok3v4q" ENDARROW="Default" ID="18vcfo4jrnd7noo477iljq2ppf" STARTARROW="None"/></node><node CREATED="1568604549622" ID="1t66en484r66he4rcomig67kgk" MODIFIED="1568604549622" TEXT="自定义的对象"><arrowlink DESTINATION="0c4b93k7ispljdtr4n8rok3v4q" ENDARROW="Default" ID="7t9g6njlr04l9n1acl8ni42r2v" STARTARROW="None"/></node><node CREATED="1568604549622" ID="3af2inhj32eq4ck3bsk4uk496j" MODIFIED="1568604549622" TEXT="Dataclass"/></node><node CREATED="1568604549622" ID="3icf9qsdjfktclvus7cfihq6o0" MODIFIED="1568604549622" TEXT="可以在一个字典中使用多种不同类型的键"/></node><node CREATED="1568604549622" ID="5gk97uki0jccop654id9bpsige" MODIFIED="1568604549622" TEXT="字典的值"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典的值对对象类型没有限制</text></hook></node><node CREATED="1568604549622" ID="58ba2a55-d8fe-4862-925e-44adfa068b49" MODIFIED="1568604549622" TEXT="与collections中的XX组合使用"><node CREATED="1568604549622" ID="0iunf0mpthlbm00limve3qbv2a" MODIFIED="1568604549622" TEXT="使用collections.defaultdict"><node CREATED="1568604549622" ID="36o4touf8ho6as4eim2noog4a1" MODIFIED="1568604549622" TEXT="defaultdict的功能"><hook NAME="accessories/plugins/NodeNote.properties"><text>#解释:defaultdict类在他的构造函数中接收一个函数作为参数,当范文字典中不存在的键的时候,创建该键同时赋值该键默认值(defaultdict会以不含参数的形式调用该函数返回的默认值)</text></hook></node><node CREATED="1568604549622" ID="7s3dh558u9clo8t6n5krceafpa" MODIFIED="1568604549622" TEXT="创建容器的时候非常有用"/><node CREATED="1568604549622" ID="51te0smevllp5142iina2kvti2" MODIFIED="1568604549622" TEXT="接收的函数类型"><node CREATED="1568604549622" ID="6nals6d0k3c9skrfgh6mjlkr3b" MODIFIED="1568604549622" TEXT="内置函数"><node CREATED="1568604549622" ID="13ml66r86r20720231lmmnostc" MODIFIED="1568604549622" TEXT="int"/><node CREATED="1568604549622" ID="3vkb6u4ha3rds0sc7adb6676cp" MODIFIED="1568604549622" TEXT="list"/><node CREATED="1568604549622" ID="07e3k9n5lh98d3nfkhqrf128vq" MODIFIED="1568604549622" TEXT="其他"/></node><node CREATED="1568604549622" ID="1791htf5s378ok511jlluf53rq" MODIFIED="1568604549622" TEXT="自定义函数"/></node><node CREATED="1568604549622" ID="b57686a4-e756-412d-a2de-58e016a695ec" MODIFIED="1568604549622" TEXT="字符频率统计Lv2"><arrowlink DESTINATION="e1234d74-72f1-4238-b085-bd5f8c5a86dd" ENDARROW="Default" ID="c2a01126-94d3-4044-83e2-6d42807bd177" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>from collections import defaultdict

def 字母频率(句子):
    频率们 = defaultdict(int)
    for 字母 in 句子:
        频率们[字母] += 1
    return 频率们


#测试
字频率统计 = 字母频率("hello")
print(字频率统计)
</text></hook><node CREATED="1568604549622" ID="3b0ab5f6-b5d1-45bb-9c7d-66f5147fac99" MODIFIED="1568604549622" TEXT="字符频率统计Lv1"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 字母频数(句子):
    频数们 = {}
    for 字母 in 句子:
        频数 = 频数们.setdefault(字母, 0)
        频数们[字母] = 频数 + 1
    return 频数们
print("版本1#------------------------------------------------------------------------")
统计 = 字母频数("hello, where are you from 你 从 哪里 来的?")
print(统计)
print("#------------------------------------------------------------------------")

</text></hook></node></node></node><node CREATED="1568604549622" ID="d38cdb30-1130-41ea-a198-9206567d433c" MODIFIED="1568604549622" TEXT="collections.Counter"><node CREATED="1568604549622" ID="f88892ec-2fad-471b-a4bc-38882c70f490" MODIFIED="1568604549622" TEXT="Counter功能"><arrowlink DESTINATION="c128bef1-5c48-4187-a906-b1829cd9643a" ENDARROW="Default" ID="c48502fe-5598-479c-8405-d8dbe36f1e73" STARTARROW="None"/><node CREATED="1568604549622" ID="e1234d74-72f1-4238-b085-bd5f8c5a86dd" MODIFIED="1568604549622" TEXT="字符频率统计Lv3 eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>from collections import Counter

def 字符频率统计(句子):
    return Counter(句子)

测试句子 = "englishword 0_0 这是什么?"

print(字符频率统计(测试句子))</text></hook></node></node></node></node></node><node CREATED="1568604549622" ID="049ipe9la440gk3pojh94saln3" MODIFIED="1568604549622" TEXT="关于Dataclasses"><node CREATED="1568604549622" ID="0nchev683gcg0113ohu9doj7dj" MODIFIED="1568604549622" TEXT="使用dataclasses.make_dataclass创建实例化Dataclass"><node CREATED="1568604549622" ID="5n63eh0etaep99vf3tt277loo9" MODIFIED="1568604549622" TEXT="例子"><arrowlink DESTINATION="119g20lgrr03tk4cl2vqj7qtdu" ENDARROW="Default" ID="5s3ebb2er8boskaee3vibuvoa7" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text># 6.Dataclass
from dataclasses import make_dataclass
Dataclass类名 = make_dataclass("Dataclass类名", ["参数1名字", "参数2名字", "参数3名字", "参数4名字"])
Dataclass对象 = Dataclass类名("参数1值", 177.46, 参数3名字=178.67, 参数4名字=175.79)
print("以下打印Dataclass对象数据#--------------------")
print(Dataclass对象)
print("以下读取Dataclass对象数据#--------------------")
print(Dataclass对象.参数2名字)
print("以下修改Dataclass对象数据")
Dataclass对象.参数2名字 = 178.25
print(Dataclass对象)</text></hook></node></node><node CREATED="1568604549622" ID="4pq136pa15sksk32ba52212i77" MODIFIED="1568604549622" TEXT="使用dataclasses.dataclass创建实例化Dataclass对象"><node CREATED="1568604549622" ID="119g20lgrr03tk4cl2vqj7qtdu" MODIFIED="1568604549622" TEXT="例子"><arrowlink DESTINATION="6pkcmf3cghqflrif8e6t9n6pmv" ENDARROW="Default" ID="5d3dmk0k2f5imd86q3p9mlctge" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>from dataclasses import dataclass
@dataclass
class Dataclass类名:
    属性1名字: str
    属性2名字: int
    属性3名字: float
Dataclass对象 = Dataclass类名("hello", 999, 999.999)
print(Dataclass对象)
print(Dataclass对象.属性1名字)</text></hook></node><node CREATED="1568604549622" ID="45ghletjnmhuoi6tv2i41egk82" MODIFIED="1568604549622" TEXT="可以为属性设置默认值"><node CREATED="1568604549622" ID="6pkcmf3cghqflrif8e6t9n6pmv" MODIFIED="1568604549622" TEXT="升级版例子"><arrowlink DESTINATION="45u2g552mol8tmkfslfphf2d4b" ENDARROW="Default" ID="5k3chpdtqr7mugj8vj13ra5gv8" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>from dataclasses import dataclass
@dataclass
class Dataclass类名:
    属性1名字: str = "默认值"
    属性2名字: int = 0
    属性3名字: float = 0
Dataclass对象 = Dataclass类名(属性2名字=1)
print(Dataclass对象)
print(Dataclass对象.属性2名字)</text></hook></node></node></node><node CREATED="1568604549623" ID="1ilblh4jnkeldasd2q59qm57ss" MODIFIED="1568604549623" TEXT="可以使用=="><hook NAME="accessories/plugins/NodeNote.properties"><text>两个Dataclass实例化的对象可以使用==来判断是否相同</text></hook><node CREATED="1568604549623" ID="5ld6vlb0fthcq6lcfgrccohdo9" MODIFIED="1568604549623" TEXT="可以添加order来比较大小"><node CREATED="1568604549623" ID="45u2g552mol8tmkfslfphf2d4b" MODIFIED="1568604549623" TEXT="例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>from dataclasses import dataclass
from pprint import pprint
@dataclass(order=True)
class Dataclass类名:
    属性1名字: str = "默认值"
    # 注意1:str型数据不能在实例化的时候用 &lt;属性名 = ""&gt;的形式,否则报错
    # 注意2:比较的时候,这个属性的值必须相同
    属性2名字: int = 0
    属性3名字: float = 0
Dataclass对象_MIN = Dataclass类名("名字")
Dataclass对象_MID = Dataclass类名("名字", 1)
Dataclass对象_MAX = Dataclass类名("名字", 2, 2.2)
print(Dataclass对象_MIN &lt; Dataclass对象_MID)
print(Dataclass对象_MIN &gt; Dataclass对象_MID)
print(Dataclass对象_MIN &lt; Dataclass对象_MID &lt; Dataclass对象_MAX)
print("#------------------------------------------------------------------------")
pprint(sorted([Dataclass对象_MIN, Dataclass对象_MID, Dataclass对象_MAX]))</text></hook></node><node CREATED="1568604549623" ID="6ueei3j9da6rekgntqrvq87cnb" MODIFIED="1568604549623" TEXT="更加具体化的排序规则 ,在Dataclass中的:__post_init__"/></node><node CREATED="1568604549623" ID="4lrdnhvrsa1n0l8l52058ci6rt" MODIFIED="1568604549623" TEXT="没有添加order=True的时候只能判断两个对象是否相等"/></node></node><node CREATED="1568604549623" ID="e81faaa7-6773-47c2-8d98-85768a1c382e" MODIFIED="1568604549623" TEXT="关于列表"><node CREATED="1568604549623" ID="678d782e-ae06-4497-b9b1-c7f7d804396d" MODIFIED="1568604549623" TEXT="列表的使用注意事项"><hook NAME="accessories/plugins/NodeNote.properties"><text>不要用列表保存不同对象的不同属性.
也就是说,一个列表最好只针对一个对象.</text></hook></node><node CREATED="1568604549623" ID="ae0aedea-2537-4127-9902-f558d2c7d3fe" MODIFIED="1568604549623" TEXT="列表内置方法"><node CREATED="1568604549623" ID="713afa26-31d6-4f3d-83ca-2751bea8d80b" MODIFIED="1568604549623" TEXT="列表.append(元素)"/><node CREATED="1568604549623" ID="7bc87c34-7f03-4c18-83fc-fbc6dadea433" MODIFIED="1568604549623" TEXT="列表.insert(index,元素)"/><node CREATED="1568604549623" ID="05e10a37-6c8b-4fdd-bf40-9521ca9a913a" MODIFIED="1568604549623" TEXT="列表.count(元素)"><hook NAME="accessories/plugins/NodeNote.properties"><text>没有该元素返回Exception&#13;
&#13;
</text></hook></node><node CREATED="1568604549623" ID="fbcc81a7-b325-4e4b-b8e9-56128ee9c4e0" MODIFIED="1568604549623" TEXT="列表.index(元素值)"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回该元素的index
没有该元素返回Exception&#13;
&#13;
</text></hook></node><node CREATED="1568604549623" ID="b7491153-0016-4fe3-b5df-8dbd04b60359" MODIFIED="1568604549623" TEXT="列表.find(元素)"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回该元素的index,没有该元素返回-1</text></hook></node><node CREATED="1568604549623" ID="db5d4640-1e70-4640-895c-cf46c6cbf20e" MODIFIED="1568604549623" TEXT="列表.reverse()"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回翻转的列表</text></hook></node><node CREATED="1568604549623" ID="ec94b5fd-c0b6-4443-bf8f-5744f454c67b" MODIFIED="1568604549623" TEXT="列表.sort(参数1,参数2....)"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回翻转的列表</text></hook><node CREATED="1568604549623" ID="5d78f417-af5f-4b58-87a8-b15a8b56634b" MODIFIED="1568604549623" TEXT="可以含有多个参数,默认没有参数"><node CREATED="1568604549623" ID="4faad80e-8b58-453f-967b-159d457016a7" MODIFIED="1568604549623" TEXT="没有参数下的排序"><node CREATED="1568604549623" ID="4967584b-7305-4acb-b964-d3191b002710" MODIFIED="1568604549623" TEXT="列表是string"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果是字符串列表，它将按字母顺序排列。此操作区分大小写，因此所有大写字母都将排在小写字母之前;</text></hook></node><node CREATED="1568604549623" ID="bc173a5c-63f4-4b05-b78b-ced8d3a64e54" MODIFIED="1568604549623" TEXT="列表是int"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果这是一个数字列表，它们将按数字顺序排序。</text></hook></node><node CREATED="1568604549623" ID="2a631b1e-9179-402e-b192-a23c64c00f71" MODIFIED="1568604549623" TEXT="列表是元组"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果提供了一个元组列表，则根据每个元组中的第一个元素对列表进行排序</text></hook></node><node CREATED="1568604549623" ID="5fcc560f-56f7-4c0b-8056-d34144277067" MODIFIED="1568604549623" TEXT="列表的元素是不可排序对象"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果提供了包含不可排序项的混合数据结构，则排序将引发TypeError例外。</text></hook></node><node CREATED="1568604549623" ID="64470103-030d-4625-a34f-cc669759282d" MODIFIED="1568604549623" TEXT="列表元素是自定义对象"><node CREATED="1568604549623" ID="bbf99274-6233-4266-b96f-67907b7caae9" MODIFIED="1568604549623" TEXT="__lt__"><hook NAME="accessories/plugins/NodeNote.properties"><text>自定义对象的类中的def:__lt__,必须定义元素的可以比较的方法,才可以进行排序.</text></hook><node CREATED="1568604549623" ID="a4f23f1c-6e60-4ae7-b50a-cc7cee35fc34" MODIFIED="1568604549623" TEXT="例子Lv1"><arrowlink DESTINATION="8c8af1fd-fc77-43c4-bed9-b5b34bc050b8" ENDARROW="Default" ID="b483576d-534a-4ad3-ada7-dc609b98caf6" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>class 自定义类:
    def __init__(self, 字符串, 数字,is按数字排列 = True):
        self.字符串 = 字符串
        self.数字 = 数字
        self.is按数字排列 = is按数字排列
    
    def __lt__(self, object):
        if self.is按数字排列:
            return self.数字 &lt; object.数字
        return self.字符串 &lt; object.字符串

    def __repr__(self):
        return f"{self.字符串}:{self.数字}"

a = 自定义类("a", 4)
b = 自定义类("b", 3)
c = 自定义类("c", 2)
d = 自定义类("d", 1)
自定义对象列表 = [a, b, c, d]
print("原始列表:\n",自定义对象列表)
自定义对象列表.sort()
print("调用sort()之后:\n",自定义对象列表)
print("下面换成按字母排列,将&lt;is按数字排列&gt;设置成False")
for i in 自定义对象列表:
    i.is按数字排列 = False

自定义对象列表.sort()
print(自定义对象列表)</text></hook></node></node><node CREATED="1568604549623" ID="df419354-ff2b-4c8c-8925-7f1bbd5574be" MODIFIED="1568604549623" TEXT="__repr__"><arrowlink DESTINATION="a4f23f1c-6e60-4ae7-b50a-cc7cee35fc34" ENDARROW="Default" ID="977807ae-1beb-400b-8698-5fc29f78c831" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>print列表的时候,返回这个对象要传输到pirnt内容的数据</text></hook></node><node CREATED="1568604549623" ID="101a91d9-cc36-4305-92d6-700ca6283caa" MODIFIED="1568604549623" TEXT="__eq__"><node CREATED="1568604549623" ID="6ea36c1d-d02c-4d75-9f22-d266522d3d9c" MODIFIED="1568604549623" TEXT="组合@total_ordering"><node CREATED="1568604549623" ID="8c8af1fd-fc77-43c4-bed9-b5b34bc050b8" MODIFIED="1568604549623" TEXT="例子Lv2"><hook NAME="accessories/plugins/NodeNote.properties"><text># 2019-9-10 18:11:51
from functools import total_ordering

@total_ordering
class 自定义类:
    def __init__(self, 字符串, 数字, is按数字排列=True):
        self.字符串 = 字符串
        self.数字 = 数字
        self.is按数字排列 = is按数字排列

    def __lt__(self, object):
        if self.is按数字排列:
            return self.数字 &lt; object.数字
        return self.字符串 &lt; object.字符串

    def __repr__(self):
        return f"{self.字符串}:{self.数字}"

    def __eq__(self, object):
        return all(
            (
                self.字符串 == object.字符串,
                self.数字 == object.数字,
                self.is按数字排列 == object.is按数字排列,
            )
        )


自定义对象列表 = ["hello", "HELP", "Helo"]
自定义对象列表.sort()
print(自定义对象列表)
print("#------------------------------------------------------------------------")
自定义对象列表.sort(key=str.lower)
print(自定义对象列表)
print("#------------------------------------------------------------------------")

</text></hook></node><node CREATED="1568604549623" ID="351afed8-bd27-4e82-81c1-8bcb1ee217b9" MODIFIED="1568604549623" TEXT="例子Lv3"><hook NAME="accessories/plugins/NodeNote.properties"><text># 2019-9-10 18:30:51&#13;
&#13;
from functools import total_ordering&#13;
from operator import itemgetter&#13;
&#13;
@total_ordering&#13;
class 自定义类:&#13;
    def __init__(self, 字符串, 数字, is按数字排列=True):&#13;
        self.字符串 = 字符串&#13;
        self.数字 = 数字&#13;
        self.is按数字排列 = is按数字排列&#13;
&#13;
    def __lt__(self, object):&#13;
        if self.is按数字排列:&#13;
            return self.数字 &lt; object.数字&#13;
        return self.字符串 &lt; object.字符串&#13;
&#13;
    def __repr__(self):&#13;
        return f"{self.字符串}:{self.数字}"&#13;
&#13;
    def __eq__(self, object):&#13;
        return all(&#13;
            (&#13;
                self.字符串 == object.字符串,&#13;
                self.数字 == object.数字,&#13;
                self.is按数字排列 == object.is按数字排列,&#13;
            )&#13;
        )&#13;
&#13;
&#13;
自定义对象 = [("h", 4), ("n", 6), ("o", 5), ("p", 1), ("t", 3), ("y", 2)]&#13;
自定义对象.sort(key=itemgetter(1))&#13;
print(自定义对象)&#13;
&#13;
</text></hook></node></node></node><node CREATED="1568604549623" ID="dc9ec7d9-4094-418e-8837-cf96865141c6" MODIFIED="1568604549623" TEXT="暂时未用到命令"><node CREATED="1568604549623" ID="de1be3e8-fbd9-49a5-85e0-3220d8338406" MODIFIED="1568604549623" TEXT="__gt__"/><node CREATED="1568604549623" ID="58882e3c-e851-429d-8e6d-9c16dadcdda5" MODIFIED="1568604549623" TEXT="__ne__"/><node CREATED="1568604549623" ID="50d1c13f-7b05-4fd9-9e87-c6a87870b020" MODIFIED="1568604549623" TEXT="__ge__"/><node CREATED="1568604549623" ID="ce9ecdd6-7825-4aa8-addf-561c3734d064" MODIFIED="1568604549623" TEXT="__le__"/></node></node></node></node><node CREATED="1568604549623" ID="acfdb9d3-4a64-4f99-8ad5-fd48df33ec3d" MODIFIED="1568604549623" TEXT="有参数"><node CREATED="1568604549624" ID="eaf933b7-5e40-4ef0-bf35-c0cdf202a3f9" MODIFIED="1568604549624" TEXT="sort(key = str.lower)"><node CREATED="1568604549624" ID="3d8e54d8-5b7d-45fc-8163-35480fe3f124" MODIFIED="1568604549624" TEXT="将列表里面元素按照转换后的小写顺序排序"><node CREATED="1568604549624" ID="e3bc20ca-1cb0-4b83-8849-63930209d6c9" MODIFIED="1568604549624" TEXT="注意"><arrowlink DESTINATION="8c8af1fd-fc77-43c4-bed9-b5b34bc050b8" ENDARROW="Default" ID="70245e90-2bab-4f6b-b62f-4011b6487c65" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>当我们将此函数作为键传递时，它将对小写值执行比较，而不是执行默认的区分大小写的比较.也就是有参数的话以参数为标准,不再以里面的方法为标准
</text></hook></node></node></node><node CREATED="1568604549624" ID="b9575005-5f45-4764-8e91-e06c8446ec5a" MODIFIED="1568604549624" TEXT="sort(key=itemgetter(1))"><arrowlink DESTINATION="351afed8-bd27-4e82-81c1-8bcb1ee217b9" ENDARROW="Default" ID="3818e8f8-a385-4335-a728-a3fa3496f930" STARTARROW="None"/></node></node></node></node></node><node CREATED="1568604549624" ID="48a33088-5c5c-4adc-8de7-a3cdc5735fc2" MODIFIED="1568604549624" TEXT="关于集合"><node CREATED="1568604549624" ID="78497626-d589-4705-990f-971b103ad3f3" MODIFIED="1568604549624" TEXT="集合特性"><node CREATED="1568604549624" ID="de80c66f-d9ba-4259-8603-833a28dbd15b" MODIFIED="1568604549624" TEXT="它的元素无序性"><node CREATED="1568604549624" ID="09b90b87-192a-412c-8824-f7f9e38f5f31" MODIFIED="1568604549624" TEXT="如果想要有序性的获取集合里面的元素,要先转换成列表"/></node><node CREATED="1568604549624" ID="2e6939b7-e3e2-4f09-b2a8-944f4bd0030e" MODIFIED="1568604549624" TEXT="它的元素唯一性"/></node><node CREATED="1568604549624" ID="8ba4b5b4-59f6-4118-93df-a3608261daa3" MODIFIED="1568604549624" TEXT="使用环境"><hook NAME="accessories/plugins/NodeNote.properties"><text>序列中的每个元素只能有一个,不能有重复的
</text></hook><node CREATED="1568604549624" ID="194ce6b3-1c93-4c99-8ce6-c5295fa3e4fe" MODIFIED="1568604549624" TEXT="简单例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>歌曲列表 = [&#13;
    ("Phantom Of The Opera",      "Sarah Brightman"),&#13;
    ("Knocking On Heaven's Door", "Guns N' Roses"),&#13;
    ("Captain Nemo",              "Sarah Brightman"),&#13;
    ("Patterns In The Ivy",       "Opeth"),&#13;
    ("November Rain",             "Guns N' Roses"),&#13;
    ("Beautiful",                 "Sarah Brightman"),&#13;
    ("Mal's Song",                "Vixy and Tony"),&#13;
]&#13;
&#13;
歌手们 = set()&#13;
for 歌曲, 歌手 in 歌曲列表:&#13;
    歌手们.add(歌手)&#13;
&#13;
print(歌手们)&#13;
</text></hook></node></node><node CREATED="1568604549624" ID="35e83d6c-ce93-4d24-816f-47ac03c56cb1" MODIFIED="1568604549624" TEXT="元素可以使用的数据类型"><node CREATED="1568604549624" ID="c9eeb42d-f458-4718-8664-d03c839e9c70" MODIFIED="1568604549624" TEXT="数字"/><node CREATED="1568604549624" ID="9bf514e0-89d8-4499-b73e-d70194841bef" MODIFIED="1568604549624" TEXT="任何hashabl的数据类型"/></node><node CREATED="1568604549624" ID="2904084b-61f4-49ca-8baa-874a050af8f8" MODIFIED="1568604549624" TEXT="集合使用的符号{}"><node CREATED="1568604549624" ID="d0e66b4b-1c27-40ae-ab79-a9efad951178" MODIFIED="1568604549624" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果{ } 里面
用,分割元素,那么就是集合
如果用 : 分割键值对,用&lt;,&gt;分割元素,那么就是字典</text></hook></node></node><node CREATED="1568604549624" ID="09bf5e8a-e5dd-402c-866d-07e28f62a419" MODIFIED="1568604549624" TEXT="集合的方法"><node CREATED="1568604549624" ID="9937f3f3-e9e7-4b20-97e4-d251c2ca2e79" MODIFIED="1568604549624" TEXT="集合.add(元素)"/><node CREATED="1568604549624" ID="43299d71-3d83-42f4-a520-bf01af4eea15" MODIFIED="1568604549624" TEXT="两个集合之间的方法"><node CREATED="1568604549624" ID="568be748-e392-4d22-a53f-ab264bd2da9b" MODIFIED="1568604549624" TEXT="交集:intersection"><node CREATED="1568604549624" ID="d73d2e59-13c6-4438-8800-8c5a0a47bd77" MODIFIED="1568604549624" TEXT="类似于逻辑:or"/><node CREATED="1568604549624" ID="9995ac20-9ad3-453b-8b9e-176b3bce2da2" MODIFIED="1568604549624" TEXT="格式与例子"/></node><node CREATED="1568604549624" ID="254a1be8-0240-45d7-943b-b9084a785515" MODIFIED="1568604549624" TEXT="合集:union"><node CREATED="1568604549624" ID="8796c7a3-ab3c-4c28-9b95-37feb5b24fcf" MODIFIED="1568604549624" TEXT="类似于逻辑:and"/><node CREATED="1568604549624" ID="8f9ab0f9-e41f-40fe-a07c-e12bd9300e93" MODIFIED="1568604549624" TEXT="格式与例子"/></node><node CREATED="1568604549624" ID="c5016316-b535-4a00-bd62-1c65f2e37827" MODIFIED="1568604549624" TEXT="去重重组:symmetric_difference"/><node CREATED="1568604549624" ID="9d5ee2b4-27ef-4347-9dc3-405c411c1499" MODIFIED="1568604549624" TEXT="差集:difference"/><node CREATED="1568604549624" ID="acbc106a-a1d3-4a6c-bedd-dd337590dff5" MODIFIED="1568604549624" TEXT="子集:判断issubset"/><node CREATED="1568604549624" ID="7636f5dc-5acc-4cf5-817d-40bae2b8a0b4" MODIFIED="1568604549624" TEXT="超集判断:issuperset"/><node CREATED="1568604549624" ID="d4bd004d-b7e6-4e7f-ba22-57fe8788072d" MODIFIED="1568604549624" TEXT="共同例子"><hook NAME="accessories/plugins/NodeNote.properties"><text>参照集合 = {1, 2, 3, 4, 5, 6}&#13;
集合2 = {5, 6, 7, 8, 9, 0}&#13;
子集 = {1, 2, 3}&#13;
超集 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}&#13;
&#13;
#合集&#13;
print("合集:",参照集合.union(集合2))&#13;
&#13;
#交集&#13;
print("交集:",参照集合.intersection(集合2))&#13;
&#13;
#获取 去除重复元素后重组的集合&#13;
print("去重重组:", 参照集合.symmetric_difference(集合2))&#13;
&#13;
#子集判断&#13;
print("is子集:", 子集.issubset(参照集合))#主宾位置类似于自然语言&#13;
&#13;
#超集判断&#13;
print("is超集", 超集.issuperset(参照集合))#同上&#13;
&#13;
#差集:返回集合,该集合的元素仅集合2,参照集合没有,如果主对象是宾对象的子集,返回set(),(宾对象:自创名词)&#13;
print("差集", 集合2.difference(参照集合))&#13;
print("差集:返回set()", 子集.difference(参照集合))&#13;
&#13;
#多个参数示例&#13;
print("多参数交集", 参照集合.intersection(集合2, 超集))&#13;
&#13;
</text></hook></node><node CREATED="1568604549624" ID="59cc6652-650f-4237-aa5f-22ea860b156d" MODIFIED="1568604549624" TEXT="合集,交集,差集可以接受多个集合作为参数,不限于两个"/></node></node></node></node><node CREATED="1568604549624" ID="bcf46ae2-c99a-4dd5-a1c5-8e19f6126e96" MODIFIED="1568604549624" TEXT="内置数据结构+面向对象的扩展"><node CREATED="1568604549624" ID="b91e998d-d7d8-4c99-bb72-9aadc44d4ee8" MODIFIED="1568604549624" TEXT="继承"/><node CREATED="1568604549624" ID="bbc9ec32-a073-4a18-a579-0d975b6f2caa" MODIFIED="1568604549624" TEXT="组合"/><node CREATED="1568604549624" ID="fb783761-6b80-4628-a2fb-e128811ee7ce" MODIFIED="1568604549624" TEXT="使用继承或组合的环境"><hook NAME="accessories/plugins/NodeNote.properties"><text>使用组合:如果只想使用容器的特性来存储对象。原因:比较容易将数据结构传递给其他方法，并且他们将知道如何与之交互。
使用继承:如果想要改变容器运行方式。例如，如果我们想要确保列表中的每一项都是一个只有5个字符的字符串，那么我们需要扩展list并覆盖append()方法来为无效输入引发异常。我们还必须覆盖_setitem__(self、index、value)，这是列表上的一个特殊方法，每当我们使用x[index]="value"语法和extend()方法时，都会调用它。</text></hook></node><node CREATED="1568604549624" ID="054f107e-d4b6-4e4e-be38-380b71d782b9" MODIFIED="1568604549624" TEXT="重点扩展内置数据结构思路"><node CREATED="1568604549624" ID="7bf4a395-b62d-4ca4-a2b3-f43083768979" MODIFIED="1568604549624" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>方法1:所有的数据结构都可以像面向对象编程过程的"继承"那样来重写数据结构的原本的方法,或者扩展方法.比如说add方法甚至都可以重写成del.
方法2:抽象基类,多态性来处理相同数据的不同值</text></hook></node></node><node CREATED="1568604549624" ID="42e3bad0-93a7-4b1e-8a27-61868e90ae71" MODIFIED="1568604549624" TEXT="书中作者说要重点关注collections模块,在官方文档了解它.以后抽时间看看."/><node CREATED="1568604549624" ID="e74145ad-fdda-4600-9779-d042fac034ea" MODIFIED="1568604549624" TEXT="如果想要了解某种数据结构的内置方法:dir(数据结构).eg:dir(list)"><node CREATED="1568604549624" ID="6dbfe100-3cd6-4c27-8d6d-92d3b6c8c8ff" MODIFIED="1568604549624" TEXT="更具体的说明:help(数据结构.内置方法)"/></node></node></node></node><node CREATED="1568604549624" ID="07p26g5kkp0g8f1urhn4gojtio" MODIFIED="1568604549624" TEXT="写代码工具"><node CREATED="1568604549624" ID="70mkd79ls0dp3u1i1n1qhrc38o" MODIFIED="1568604549624" TEXT="vscode"/></node><node CREATED="1568604549624" ID="0l5b0un17rblri7k88tjlmp6kv" MODIFIED="1568604549624" TEXT="关于代码字数问题"><hook NAME="accessories/plugins/NodeNote.properties"><text>面向对象的代码是相对自文档化的。我们只需查看方法及其参数的列表，就可以知道对象做什么以及如何使用它。当我们为功能版本编写所有文档时，它可能比面向对象的代码要长。
最后，代码长度并不是一个很好的代码复杂度指标。一些程序员被复杂的单行代码所困扰，这些代码在一行代码中完成了惊人的工作量。这可能是一个有趣的练习，但结果往往是不可读的，甚至对原作者的第二天。最小化代码量通常可以使程序更易于阅读，但不要盲目地假设是这样。</text></hook></node><node CREATED="1568604549624" ID="5r0c18h75b8u5aj051agr5k6lc" MODIFIED="1568604549624" TEXT="内置函数"><node CREATED="1568604549624" ID="6qviqdgu15us9quhn1odaeg7ao" MODIFIED="1568604549624" TEXT="int()"><node CREATED="1568604549625" ID="09vf6ocrif2jdclq75nup8d680" MODIFIED="1568604549625" TEXT="不含参数调用返回0"><hook NAME="accessories/plugins/NodeNote.properties"><text>print(int())
#结果print为0</text></hook></node></node><node CREATED="1568604549625" ID="87a40e97-08d7-434d-b0e0-e0ff753947a1" MODIFIED="1568604549625" TEXT="真假判断类函数"><node CREATED="1568604549625" ID="99b0d6ca-53ef-40d9-9110-7b5826965b00" MODIFIED="1568604549625" TEXT="all()"/><node CREATED="1568604549625" ID="0821eece-48d8-4df7-a525-0436fe654396" MODIFIED="1568604549625" TEXT="any()"/></node><node CREATED="1568604549625" ID="c3153ab4-3bdb-4b4d-b1b1-22e2627b9898" MODIFIED="1568604549625" TEXT="代码执行类 函数"><node CREATED="1568604549625" ID="434294a5-0c8b-40e5-91ef-98f195775db3" MODIFIED="1568604549625" TEXT="eval()"/><node CREATED="1568604549625" ID="1ea6e3ea-0521-4109-9226-43237c004034" MODIFIED="1568604549625" TEXT="exce()"/><node CREATED="1568604549625" ID="8d779c11-e411-4ac1-8c77-2585ed509212" MODIFIED="1568604549625" TEXT="compile()"/></node><node CREATED="1568604549625" ID="42e38b2b-95ea-44a1-bdbb-68076a397b4d" MODIFIED="1568604549625" TEXT="通过对象名称处理对象属性"><node CREATED="1568604549625" ID="54d93462-f061-4dd2-b96a-ec121fa15cf1" MODIFIED="1568604549625" TEXT="hasattr"/><node CREATED="1568604549625" ID="34afcf2d-6bde-4414-9aba-33d326043e45" MODIFIED="1568604549625" TEXT="getattr"/><node CREATED="1568604549625" ID="e1827dfc-20de-4448-a1b6-011c8a8621cf" MODIFIED="1568604549625" TEXT="setattr"/><node CREATED="1568604549625" ID="191729e8-55ac-4c7e-8aaf-14e1af0d0c05" MODIFIED="1568604549625" TEXT="delattr"/></node><node CREATED="1568604549625" ID="e411ce5e-195c-4d9e-9665-c0ec316b65e9" MODIFIED="1568604549625" TEXT="序列相关函数"><node CREATED="1568604549625" ID="8c026a49-9ec8-48de-9084-e1fb02116800" MODIFIED="1568604549625" TEXT="枚举:enumerate(序列)"><node CREATED="1568604549625" ID="6d7401f2-539a-4f4c-abca-9a313befb7d7" MODIFIED="1568604549625" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>enumerate()创建了一个元组序列，其中每个元组中的第一个对象是索引，第二个对象是原始序列的对应元素</text></hook></node><node CREATED="1568604549625" ID="ef84eba6-a55b-439f-9e73-6525967f2e5b" MODIFIED="1568604549625" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import sys

filename = sys.argv[0]
print(filename)

with open(filename) as file:
    for index, line in enumerate(file):
        print(f"{index+1}: {line}", end="")
</text></hook></node></node><node CREATED="1568604549625" ID="36dbe7b2-dcd2-47f6-913d-9e39f075b0f5" MODIFIED="1568604549625" TEXT="翻转序列:reversed(序列)"/><node CREATED="1568604549625" ID="d9d0041d-47a9-4b53-8481-f566e5a098af" MODIFIED="1568604549625" TEXT="取长度:len(序列)"/><node CREATED="1568604549625" ID="6ea317ba-95a3-46e4-b38e-967d948a3398" MODIFIED="1568604549625" TEXT="zip"><hook NAME="accessories/plugins/NodeNote.properties"><text> 函数用于将可迭代的对象作为参数，将对象中对应的元素打包成一个个元组，然后返回由这些元组组成的列表。

如果各个迭代器的元素个数不一致，则返回列表长度与最短的对象相同，利用 * 号操作符，可以将元组解压为列表。</text></hook></node></node><node CREATED="1568604549625" ID="b3a89850-5767-4a29-847b-924980fa5af0" MODIFIED="1568604549625" TEXT="文本文件处理相关函数"><node CREATED="1568604549625" ID="de7a2796-b2f3-45d9-849f-57dd7d70ee42" MODIFIED="1568604549625" TEXT="open"/><node CREATED="1568604549625" ID="d0ffe71d-2105-4741-929f-f7eae2e11d25" MODIFIED="1568604549625" TEXT="close"/><node CREATED="1568604549625" ID="78b7b82d-820d-4cf0-bcb3-03a174ccc9f7" MODIFIED="1568604549625" TEXT="read"/><node CREATED="1568604549625" ID="c8df9687-6242-43c0-969d-ecd4e693b691" MODIFIED="1568604549625" TEXT="readline"/><node CREATED="1568604549625" ID="e4faadc9-ede8-4946-9c8a-36b8ca8f54fa" MODIFIED="1568604549625" TEXT="readlines"/><node CREATED="1568604549625" ID="bdb57ddc-eff6-4521-a44b-5f66fbb6bad4" MODIFIED="1568604549625" TEXT="write"/><node CREATED="1568604549625" ID="00326c06-fba3-4293-a206-c663191a1893" MODIFIED="1568604549625" TEXT="writelines"/></node><node CREATED="1568604549625" ID="98d6c84b-57b1-48cf-b3f6-d96ae65ad35a" MODIFIED="1568604549625" TEXT="with"><node CREATED="1568604549625" ID="e8fba8ee-2368-46a3-847d-691e19102f4e" MODIFIED="1568604549625" TEXT="只要对象含有__enter__和__exit__,那么就可以作为with的处理对象"><node CREATED="1568604549625" ID="a2f97a80-bc64-42d3-8518-748e94790d39" MODIFIED="1568604549625" TEXT="执行调用顺序"><node CREATED="1568604549625" ID="a8be0efd-1aa5-484b-8e6b-1f802d8be126" MODIFIED="1568604549625" TEXT="执行代码之前:__enter__"/><node CREATED="1568604549625" ID="1b0937cb-1dde-4a58-a21d-4e9abc0b63ee" MODIFIED="1568604549625" TEXT="执行代码之后:__exit__"/></node></node><node CREATED="1568604549625" ID="4502e459-8523-4e06-9ed5-1ffa30421a60" MODIFIED="1568604549625" TEXT="+"><node CREATED="1568604549625" ID="4c4c63d6-a8aa-483e-ba95-98bca801d20f" MODIFIED="1568604549625" TEXT="+文件"><node CREATED="1568604549625" ID="ff5a6389-db9f-4794-806e-7ad2e27499db" MODIFIED="1568604549625" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import sys

filename = sys.argv[0]
print(filename)


with open(filename) as file:
    for index, line in enumerate(file):
        print(f"{index+1}: {line}", end="")
</text></hook></node></node><node CREATED="1568604549625" ID="9fdc7e3a-eb3c-46d2-acfa-7e70b68e12e8" MODIFIED="1568604549625" TEXT="+自定类的实例"><node CREATED="1568604549625" ID="cd0b489d-79d1-4318-aa8c-5d00ff79be74" MODIFIED="1568604549625" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import random, string

class Stringjoiner(list):
    def __enter__(self):
        return self
    
    def __exit__(self, type, value, tb):
        self.result = "".join(self)

with Stringjoiner() as joiner:
    for i in range(15):
        joiner.append(random.choice(string.ascii_letters))

print(joiner.result)</text></hook></node></node></node><node CREATED="1568604549625" ID="25738de1-0099-4c84-8a7c-bb59389a2893" MODIFIED="1568604549625" TEXT="注意"><hook NAME="accessories/plugins/NodeNote.properties"><text>好像with对象不支持对象含有英文数字以外的字符.所以使用的时候最好全英文
</text></hook></node></node><node CREATED="1568604549625" ID="32cefaa4-3793-4d32-b19a-9d917f9815c0" MODIFIED="1568604549625" TEXT="字符串处理"/><node CREATED="1568604549625" ID="5922035a-930a-4ef6-86ab-5f2b547ac76f" MODIFIED="1568604549625" TEXT="字符串"><node CREATED="1568604549625" ID="eb9be81d-73d7-4b93-b0fd-0b0bc7e90a6c" MODIFIED="1568604549625" TEXT="字符串处理"><node CREATED="1568604549625" ID="c409494d-3abc-42b5-8947-42530db54fb6" MODIFIED="1568604549625" TEXT="字符串的连接"><node CREATED="1568604549625" ID="549be540-923a-4282-a4f4-27fe69b2df3e" MODIFIED="1568604549625" TEXT="使用+"/><node CREATED="1568604549625" ID="dbe4cf0e-efed-4215-8c21-7f9c1bb55732" MODIFIED="1568604549625" TEXT="使用逗号"/><node CREATED="1568604549625" ID="144037b1-a389-465b-a328-d897d52d6c07" MODIFIED="1568604549625" TEXT="不使用任何分隔符"/><node CREATED="1568604549625" ID="3add7967-38b9-49ac-860f-10961e463ba4" MODIFIED="1568604549625" TEXT="共同eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>字符串1 = ("a" "b" "c")&#13;
字符串2 = ("a" + "b" + "c")&#13;
&#13;
print(字符串1 ==字符串2)&#13;
&#13;
</text></hook></node></node><node CREATED="1568604549625" ID="2f245c9c-e1ff-47ec-bac1-3c41fe10dc22" MODIFIED="1568604549625" TEXT="字符串处理函数"><node CREATED="1568604549626" ID="a6f710df-fb75-4693-a97a-67924e3c294d" MODIFIED="1568604549626" TEXT="返回真或假"><node CREATED="1568604549626" ID="aabc43cf-8b99-42ca-906f-c47c144bb094" MODIFIED="1568604549626" TEXT="字符串.isalpha()"><node CREATED="1568604549626" ID="1d31adb1-bf53-4a65-b391-44405a0e6ebb" MODIFIED="1568604549626" TEXT="是否字母"/></node><node CREATED="1568604549626" ID="46dcf53c-6b36-4bf1-b872-c9dec2fe07ca" MODIFIED="1568604549626" TEXT="字符串.issuper()"><node CREATED="1568604549626" ID="a4e5db1d-ea9f-438e-ab7f-92d56c0b326e" MODIFIED="1568604549626" TEXT="是否大写"/></node><node CREATED="1568604549626" ID="fd1fe51c-a440-4fbe-8b4a-19c4e3f6c720" MODIFIED="1568604549626" TEXT="字符串.islower()"><node CREATED="1568604549626" ID="65f61d81-f8a2-4117-8b71-a71847ea80a1" MODIFIED="1568604549626" TEXT="是否小写"/></node><node CREATED="1568604549626" ID="a20957f5-d115-4947-92b7-d8b56d71b672" MODIFIED="1568604549626" TEXT="字符串.startswith()"><hook NAME="accessories/plugins/NodeNote.properties"><text>https://www.runoob.com/python/att-string-startswith.html</text></hook><node CREATED="1568604549626" ID="209080a8-e07c-4f87-b045-af8b4625b373" MODIFIED="1568604549626" TEXT="是否以指定字符串开头"/></node><node CREATED="1568604549626" ID="5a42b3e4-4435-4f6c-be88-d4a7a2b04ed3" MODIFIED="1568604549626" TEXT="字符串.endswith()"><hook NAME="accessories/plugins/NodeNote.properties"><text>https://www.runoob.com/python/att-string-endswith.html</text></hook><node CREATED="1568604549626" ID="cc6acbc0-897e-4cc5-9007-89df789eabe6" MODIFIED="1568604549626" TEXT="是否以指定字符串结尾"/></node><node CREATED="1568604549626" ID="573acaa2-0aff-45a0-acca-922d4bac320b" MODIFIED="1568604549626" TEXT="字符串.isspace()"><node CREATED="1568604549626" ID="e97779c8-93b4-4105-91d8-e22ecf8793b3" MODIFIED="1568604549626" TEXT="空格符包括"><node CREATED="1568604549626" ID="7bc0d55d-212c-4d23-8fda-fb314e8f7415" MODIFIED="1568604549626" TEXT="制表符"/><node CREATED="1568604549626" ID="4b326bd8-cbf3-45ff-b4eb-be618174b104" MODIFIED="1568604549626" TEXT="换行符"/><node CREATED="1568604549626" ID="cc1359db-855c-4e10-baf8-a7f58c57c729" MODIFIED="1568604549626" TEXT="空格"/></node><node CREATED="1568604549626" ID="bae7514b-1fc1-46af-b24b-ea342ca17128" MODIFIED="1568604549626" TEXT="是否只包含空格"/></node><node CREATED="1568604549626" ID="464d7e60-b14f-47f3-b106-285648b8f683" MODIFIED="1568604549626" TEXT="字符串.istitle()"><node CREATED="1568604549626" ID="9dd175a6-3dfb-4de9-a0ba-ea33214de736" MODIFIED="1568604549626" TEXT="句子中的所有单词首字符是否大写"/></node><node CREATED="1568604549626" ID="21f96314-4cf9-4ea2-8e54-b45273eba5b3" MODIFIED="1568604549626" TEXT="字符串.isdigit()"><node CREATED="1568604549626" ID="e09cc3a3-eaa9-432b-b2f2-8748e4963e6d" MODIFIED="1568604549626" TEXT="是否只包含数字"/></node><node CREATED="1568604549626" ID="518941e1-4d7d-4fe9-985d-a91593ddb4da" MODIFIED="1568604549626" TEXT="字符串.isdecimal()"><node CREATED="1568604549626" ID="115094e5-dae3-4228-8677-a7ec681e7774" MODIFIED="1568604549626" TEXT="字符串是否只包含十进制字符"><hook NAME="accessories/plugins/NodeNote.properties"><text>https://www.runoob.com/python/att-string-isdecimal.html</text></hook></node><node CREATED="1568604549626" ID="359cc38c-1802-4d52-8ed3-d4e598e466e1" MODIFIED="1568604549626" TEXT="只针对unicode对象"/></node><node CREATED="1568604549626" ID="fd183e55-930f-4f08-8375-b56d35f15cfd" MODIFIED="1568604549626" TEXT="字符串.isnumeric()"><node CREATED="1568604549626" ID="c9fa259d-7814-4a0d-9986-4c6c3009af07" MODIFIED="1568604549626" TEXT="字符串是否只由数字组成"/><node CREATED="1568604549626" ID="aa6e15f3-6f9c-4c92-9800-8fe5e4cea37b" MODIFIED="1568604549626" TEXT="只针对unicode对象"/></node></node><node CREATED="1568604549626" ID="1787b349-c978-4a18-8037-dc021adeeeb5" MODIFIED="1568604549626" TEXT="返回字符串"><node CREATED="1568604549626" ID="4553775b-fd5f-4886-adc8-831c0260bb68" MODIFIED="1568604549626" TEXT="字符串.upper"/><node CREATED="1568604549626" ID="d2f2b769-fc48-4771-ae1a-9d713b2b8a23" MODIFIED="1568604549626" TEXT="字符串.lower"/><node CREATED="1568604549626" ID="a9847b67-3a22-4168-906c-c23da551e367" MODIFIED="1568604549626" TEXT="字符串.capitalize"/><node CREATED="1568604549626" ID="10ede6d9-5f9b-4b4d-bdf2-3d847869cb76" MODIFIED="1568604549626" TEXT="字符串.title"/><node CREATED="1568604549626" ID="8aa4aca0-4aaa-4c42-9573-37a138001854" MODIFIED="1568604549626" TEXT="字符串.translate"/><node CREATED="1568604549626" ID="d998a2bd-349d-4c5f-833e-28019aed69ae" MODIFIED="1568604549626" TEXT="字符串.strip()"><hook NAME="accessories/plugins/NodeNote.properties"><text>string = " hello world "&#13;
print(string)&#13;
print(string.strip())</text></hook><node CREATED="1568604549627" ID="0eddc8ba-227c-4c3c-8682-a1374d7fafce" MODIFIED="1568604549627" TEXT="返回删除头尾空格后的字符串"/></node></node><node CREATED="1568604549627" ID="f5a3c0cd-6f04-4da7-a997-2f1f76fcd612" MODIFIED="1568604549627" TEXT="返回数字"><node CREATED="1568604549627" ID="cce98780-1f42-470f-b548-1928114c5e02" MODIFIED="1568604549627" TEXT="字符串.count()"><node CREATED="1568604549627" ID="fab45d57-7c63-46e7-962d-712f3935714a" MODIFIED="1568604549627" TEXT="统计字符串里某个字符出现的次数"><hook NAME="accessories/plugins/NodeNote.properties"><text>https://www.runoob.com/python/att-string-count.html</text></hook></node></node><node CREATED="1568604549627" ID="d8c8ed5a-9c87-4fbd-a160-2d0bdd1e4fb3" MODIFIED="1568604549627" TEXT="字符串.find()"/><node CREATED="1568604549627" ID="afdff129-9111-4c3f-ad64-d136432d81db" MODIFIED="1568604549627" TEXT="字符串.index"/><node CREATED="1568604549627" ID="324a4e97-e523-4922-97d5-fd48dccd27c0" MODIFIED="1568604549627" TEXT="字符串.rfind"/><node CREATED="1568604549627" ID="99424d1d-72f7-4fe7-95ce-b186681e4f32" MODIFIED="1568604549627" TEXT="字符串.rindex"/></node><node CREATED="1568604549627" ID="1a656381-2ffe-47f0-bd9a-1ea94733fe32" MODIFIED="1568604549627" TEXT="返回序列"><node CREATED="1568604549627" ID="21bf5891-5a85-42b6-b9d4-53735592e6f1" MODIFIED="1568604549627" TEXT="字符串.split"/><node CREATED="1568604549627" ID="3a0ffd64-b59e-46c3-9ca5-c3ab13233f39" MODIFIED="1568604549627" TEXT="字符串.rsplit"/><node CREATED="1568604549627" ID="b3fcb075-0a85-4a14-8dd4-074c1879177e" MODIFIED="1568604549627" TEXT="字符串.partition"/><node CREATED="1568604549627" ID="fafff689-ba9a-49f6-aff6-20a7bb5c4fc9" MODIFIED="1568604549627" TEXT="字符串.rpartition"/></node></node><node CREATED="1568604549627" ID="40e76201-4b32-4c32-b35c-0ec0de151658" MODIFIED="1568604549627" TEXT="字符串格式化"><node CREATED="1568604549627" ID="44737238-a7e2-4da8-8a11-066734a6ebff" MODIFIED="1568604549627" TEXT="f&quot; &quot;"><hook NAME="accessories/plugins/NodeNote.properties"><text>名字 = "马云"&#13;
公司 = "阿里巴巴"&#13;
print(f"{名字}是的{公司}的老大")</text></hook><node CREATED="1568604549627" ID="625e085f-f560-4ad8-b31c-e51ff9bfe6f7" MODIFIED="1568604549627" TEXT="变量可以用{变量名称}来传递到string中去"/><node CREATED="1568604549627" ID="78bc3080-73eb-41b5-ad44-47cf53963c33" MODIFIED="1568604549627" TEXT="单行"/></node><node CREATED="1568604549627" ID="3a2dcaf8-92cf-45a3-879d-da60a17f9184" MODIFIED="1568604549627" TEXT="f&quot;&quot;&quot;    &quot;&quot;&quot;"><node CREATED="1568604549627" ID="c2f27b25-038e-4eec-aad4-e19c1cb857eb" MODIFIED="1568604549627" TEXT="多行"/></node><node CREATED="1568604549627" ID="c8827624-9b0c-4365-af7f-74bec66686cb" MODIFIED="1568604549627" TEXT="大括号转义"><node CREATED="1568604549627" ID="6231c280-b839-4918-b877-4310bbd6e2bc" MODIFIED="1568604549627" TEXT="双大括号"/><node CREATED="1568604549627" ID="6309d44a-6792-488f-a0ac-49d707dca1ee" MODIFIED="1568604549627" TEXT="f&quot;&quot; 和 f&quot;&quot;&quot;  &quot;&quot;&quot;都可以用"/></node><node CREATED="1568604549627" ID="acec3d33-b619-49f5-9056-790551382c63" MODIFIED="1568604549627" TEXT="大括号"><node CREATED="1568604549627" ID="908c92ae-2829-4131-862e-f9048d564234" MODIFIED="1568604549627" TEXT="里面可以装"><node CREATED="1568604549627" ID="1f6c80b2-09cc-441a-bb68-ca8d0ee9b94a" MODIFIED="1568604549627" TEXT="变量"/><node CREATED="1568604549627" ID="337a336f-290e-44ba-be48-b5f8d8d0eddd" MODIFIED="1568604549627" TEXT="运行过程"/></node><node CREATED="1568604549627" ID="e7f31a7e-09e3-4b52-8fed-dd0610c305da" MODIFIED="1568604549627" TEXT="关于大括号里面字符串的显示{参数1 参数2 参数3 参数4},参数都是可选的"><node CREATED="1568604549627" ID="03a650da-80af-4619-ba85-e6f0e946c99e" MODIFIED="1568604549627" TEXT="参数4 类型"><node CREATED="1568604549627" ID="2f0b039f-1f02-44a2-8b30-bb674fc7943e" MODIFIED="1568604549627" TEXT="d 整数"/><node CREATED="1568604549627" ID="d2c72ec9-e324-4455-b05f-8e454cb33ac5" MODIFIED="1568604549627" TEXT="s 字符串"/><node CREATED="1568604549627" ID="e6ea758d-cc7f-4469-8db6-5958b6f837a1" MODIFIED="1568604549627" TEXT="f 小数"><node CREATED="1568604549627" ID="797edcc5-37ad-459e-9d03-e24f47f75daa" MODIFIED="1568604549627" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>num = 3.143442342334241
str = f"test{num:0.2f}"
str1 = f"test2{num:0.3f}"
print(str)
print(str1)</text></hook></node></node><node CREATED="1568604549627" ID="a8ebfc9d-7447-4369-8846-543607461734" MODIFIED="1568604549627" TEXT="o 八进制"/><node CREATED="1568604549627" ID="316a296f-64a7-4f4c-b624-0cc37aa1a81e" MODIFIED="1568604549627" TEXT="X 16进制"/><node CREATED="1568604549627" ID="a4367854-c96a-46e1-84b1-4f2bd93964e6" MODIFIED="1568604549627" TEXT="% 百分比"/><node CREATED="1568604549627" ID="2e364cdc-e910-411b-98fd-99bda7e745d6" MODIFIED="1568604549627" TEXT="n 未知"/></node><node CREATED="1568604549627" ID="f025ec77-e34d-4668-ac77-a44e5bea6d1a" MODIFIED="1568604549627" TEXT="参数3 大小"><node CREATED="1568604549627" ID="3555094a-3086-424f-aa76-d814da6d3693" MODIFIED="1568604549627" TEXT="参数1是d或者s"><node CREATED="1568604549627" ID="9d8f1e30-2c3f-4d48-9eb1-ebc9dcfc5a0f" MODIFIED="1568604549627" TEXT="表示大括号内容的占用字符数"/></node><node CREATED="1568604549627" ID="3e7efbdc-f220-41e9-97a8-87f5898a91d3" MODIFIED="1568604549627" TEXT="参数1是f"><node CREATED="1568604549627" ID="a6337bf4-ae8e-4e01-a33a-ba6400550506" MODIFIED="1568604549627" TEXT=".x 表示对指定的数字取x位小数"/></node></node><node CREATED="1568604549627" ID="aba10974-778b-4a0f-949a-fec5dbcd99f2" MODIFIED="1568604549627" TEXT="参数2 对齐"><node CREATED="1568604549627" ID="54b3d748-1d86-4232-b843-2723cce92d85" MODIFIED="1568604549627" TEXT="表示显示内容向哪个方向对齐"/><node CREATED="1568604549627" ID="a938b6d5-947b-48ee-af2d-efa2463246a1" MODIFIED="1568604549627" TEXT="^ 中对齐"/><node CREATED="1568604549627" ID="22f31a76-40db-4963-a88f-8024e46f1688" MODIFIED="1568604549627" TEXT="&lt; 左对齐"/><node CREATED="1568604549627" ID="b2b0136b-8e45-45db-bffc-f20ff1efc2e9" MODIFIED="1568604549627" TEXT="&gt; 右对齐"/></node><node CREATED="1568604549627" ID="dd6f462a-4748-45ee-bfc2-b2db0b32f1d4" MODIFIED="1568604549627" TEXT="参数1 填充"><node CREATED="1568604549628" ID="a19d60d6-15b7-4885-9f88-c44750744d86" MODIFIED="1568604549628" TEXT="空格表示剩下没有使用的位置用空格占用"/></node></node></node></node></node></node></node><node CREATED="1568604549628" ID="86f293dd-c5a6-49fb-867a-31c2c5ead385" MODIFIED="1568604549628" TEXT="库"><node CREATED="1568604549628" ID="22up9l6b8au7d1hdgha3t7tcl7" MODIFIED="1568604549628" TEXT="内库"><node CREATED="1568604549628" ID="0u12949t07s1ffurp68fqfkibf" MODIFIED="1568604549628" TEXT="pprint"><hook NAME="accessories/plugins/NodeNote.properties"><text>print相关的模块</text></hook><node CREATED="1568604549628" ID="a4173e53-7844-45ff-9a89-069a3c980e04" MODIFIED="1568604549628" TEXT="pprint"/></node><node CREATED="1568604549628" ID="8d731dae-f6f1-42d1-9283-d0ed8b1a1e65" MODIFIED="1568604549628" TEXT="collections"><node CREATED="1568604549628" ID="c128bef1-5c48-4187-a906-b1829cd9643a" MODIFIED="1568604549628" TEXT="Counter"><node CREATED="1568604549628" ID="7f3d284c-d48c-4db1-be4c-7b84b6fdd006" MODIFIED="1568604549628" TEXT="most_common()"><hook NAME="accessories/plugins/NodeNote.properties"><text>暂时:
返回数据  = Counter.most_common(参数1)
参数1:需要返回多少个Counter对象中最多的数据,应该是从大到小排序的吧.
返回数据:返回一个list,list包含(参数1)个元素</text></hook><node CREATED="1568604549628" ID="4f7e0a67-6f8c-461f-bab9-5bc8ee58e6fa" MODIFIED="1568604549628" TEXT="和list组合使用"><node CREATED="1568604549628" ID="7d06327b-1c45-439c-a069-7143a514f704" MODIFIED="1568604549628" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>from collections import Counter

名人们 = [
    "袁隆平",
    "袁隆平",
    "袁隆平",
    "邓稼先",
    "马云",
    "Bill Gates",
    "Dusty Phillips"
]

最大频率人名 = Counter(名人们).most_common(1)[0][0]
print(最大频率人名)
</text></hook></node></node></node></node></node><node CREATED="1568604549628" ID="6a7369df-1ccf-4be8-a720-5e2ce5f52b04" MODIFIED="1568604549628" TEXT="string"><node CREATED="1568604549628" ID="35c85d1c-5902-4e45-906c-8525eee893f2" MODIFIED="1568604549628" TEXT="string.ascii_letters"><node CREATED="1568604549628" ID="1f96a039-9676-4020-99e4-e3e644d26fee" MODIFIED="1568604549628" TEXT="用途:生成全部大小写字母"><node CREATED="1568604549628" ID="0ef29962-eb5e-42df-99a6-a9d4e5192498" MODIFIED="1568604549628" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import string
print( string.ascii_letters)</text></hook></node></node><node CREATED="1568604549628" ID="aa85f0dc-8041-4237-8e4c-1030226a55f3" MODIFIED="1568604549628" TEXT="使用环境"><hook NAME="accessories/plugins/NodeNote.properties"><text>生成所有字母和数字干什么？在哪个场景中会用到呢，举个例子：比如生成激活码（优惠券），激活码一般都是字母和数字组成的，首先要有一个所有字母和数字的字符串，然后随机取出几个字母或数字。</text></hook></node></node><node CREATED="1568604549628" ID="60fc310b-3344-4e7a-97d0-2c57646ddfaf" MODIFIED="1568604549628" TEXT="string.digits           "><node CREATED="1568604549628" ID="53ae6100-5bac-43e5-88e2-945aa1404a98" MODIFIED="1568604549628" TEXT="用途:生成所有数字"><arrowlink DESTINATION="aa85f0dc-8041-4237-8e4c-1030226a55f3" ENDARROW="Default" ID="665abdc1-fca4-44a3-976e-8672af76767b" STARTARROW="None"/><node CREATED="1568604549628" ID="db015dc8-6267-4507-80c0-0ab56118fd95" MODIFIED="1568604549628" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import string
print(string.digits)</text></hook></node></node></node></node><node CREATED="1568604549628" ID="e05dfbff-a8c3-425e-b415-8d7ee7f7574a" MODIFIED="1568604549628" TEXT="functools"><node CREATED="1568604549628" ID="b8620e95-be9d-4e20-8158-a52aaa2c60c5" MODIFIED="1568604549628" TEXT="functools.total_ordering"/></node><node CREATED="1568604549628" ID="34f81a61-75a1-4671-b800-4b943fa24459" MODIFIED="1568604549628" TEXT="operator"><node CREATED="1568604549628" ID="39fd355a-ebe7-41c1-b4f7-8e7d863ebf44" MODIFIED="1568604549628" TEXT="operator.itemgetter"><arrowlink DESTINATION="b9575005-5f45-4764-8e91-e06c8446ec5a" ENDARROW="Default" ID="4b498023-327a-4f14-a912-bc7a6830a8b4" STARTARROW="None"/><arrowlink DESTINATION="6ea36c1d-d02c-4d75-9f22-d266522d3d9c" ENDARROW="Default" ID="84453028-54d6-4c15-8336-44bec561e0b1" STARTARROW="None"/></node></node><node CREATED="1568604549628" ID="d4299cd4-bf3f-49ed-aefe-54df9233f34f" MODIFIED="1568604549628" TEXT="sys"><node CREATED="1568604549628" ID="e5409a91-8e6f-4cd5-9ac4-8abdb7ee7a78" MODIFIED="1568604549628" TEXT="argv"><node CREATED="1568604549628" ID="0d003360-8487-499a-9efb-d741553ad7cb" MODIFIED="1568604549628" TEXT="使用环境:在cmd命令行运行.py文件"/><node CREATED="1568604549628" ID="4a622ff9-ad82-4c01-9d26-3c02247b8674" MODIFIED="1568604549628" TEXT="sys.argv[0]:表示文件本身(要在cmd命令行中输入,表示要运行的脚本:本身)"/><node CREATED="1568604549628" ID="fb304ea9-76e8-4923-b711-da6d320392e3" MODIFIED="1568604549628" TEXT="sys.argv[1]:表示cmd命令行中的第二个参数,以此类推"/></node></node><node CREATED="1568604549628" ID="708cbbc8-2325-4a29-962c-7acbc51abaa4" MODIFIED="1568604549628" TEXT="os"><node CREATED="1568604549628" ID="1a2a393f-ad12-41d2-8a22-9e1dcf9fcbdf" MODIFIED="1568604549628" TEXT="os.getcwd()"><node CREATED="1568604549628" ID="23042cf5-0c7b-44e7-be98-80a8e5c095cd" MODIFIED="1568604549628" TEXT="返回当前运行环境的路径"/></node></node><node CREATED="1568604549628" ID="b8484de6-03eb-486e-89b0-afbe60623d4d" MODIFIED="1568604549628" TEXT="socket"><node CREATED="1568604549628" ID="6ef017b7-106d-4022-b332-2e3be6e0853e" MODIFIED="1568604549628" TEXT="socket()"/></node></node><node CREATED="1568604549628" ID="4a293375-0c2c-47b4-9b59-803603a478c1" MODIFIED="1568604549628" TEXT="外库"><node CREATED="1568604549628" ID="4c38a79f-5230-4be4-9988-2992c318f2d2" MODIFIED="1568604549628" TEXT="pathlib"/><node CREATED="1568604549628" ID="477175fe-1a44-4ffd-8682-5afeeafa36e8" MODIFIED="1568604549628" TEXT="pickle"><node CREATED="1568604549628" ID="c0f5cbbf-3b3c-471e-9d07-fac875e119c3" MODIFIED="1568604549628" TEXT="dump"/><node CREATED="1568604549628" ID="bc6fbfa1-0655-4f82-b987-8fc1055fb1ca" MODIFIED="1568604549628" TEXT="load"/></node></node></node><node CREATED="1568604549628" ID="c8903ee9-af52-44c8-be66-76c5f96b52dd" MODIFIED="1568604549628" TEXT="运算符"><node CREATED="1568604549628" ID="8be7534a-2758-412a-8c73-2e66e981409d" MODIFIED="1568604549628" TEXT="身份运算符in"/></node><node CREATED="1568604549628" ID="8ae8fa53-2007-4a3b-96bc-7dae23de3062" MODIFIED="1568604549628" TEXT="方法重载的替代方法"><node CREATED="1568604549629" ID="50a6dbd9-aa15-4af8-a01c-bf5e884cee3a" MODIFIED="1568604549629" TEXT="方法重载的定义"><hook NAME="accessories/plugins/NodeNote.properties"><text>方法重载只是指具有多个具有相同名称的方法，这些方法接受不同的参数集。</text></hook></node></node><node CREATED="1568604549629" ID="26964e09-edd7-4de0-bbd3-62264eae6587" MODIFIED="1568604549629" TEXT="关于python的参数"><node CREATED="1568604549629" ID="631d6bce-04f6-4e8c-bc19-4df52bada079" MODIFIED="1568604549629" TEXT="py可以作为参数传递的对象"><node CREATED="1568604549629" ID="18f35a52-b108-4cca-9b64-091ab7f6bd55" MODIFIED="1568604549629" TEXT="其实也就是所有对象类型"/><node CREATED="1568604549629" ID="62be959e-03c9-418c-bfdc-698cb9148617" MODIFIED="1568604549629" TEXT="类"/><node CREATED="1568604549629" ID="402902e8-919a-431e-a983-ce3f06c45eb2" MODIFIED="1568604549629" TEXT="函数"/><node CREATED="1568604549629" ID="6a272a9e-ef54-47ef-8f03-1ebb86dc79cf" MODIFIED="1568604549629" TEXT="容器"/></node><node CREATED="1568604549629" ID="3d4690bc-7f01-4b94-8c5a-7284e61c6dbb" MODIFIED="1568604549629" TEXT="位置参数"/><node CREATED="1568604549629" ID="7de18ad8-1057-4a9b-980a-f786a3d456e4" MODIFIED="1568604549629" TEXT="关键字参数"><node CREATED="1568604549629" ID="498892f8-f86f-4b18-b0fd-b4a91a478bad" MODIFIED="1568604549629" TEXT="只能用位置参数传递并且必须的参数"><node CREATED="1568604549629" ID="64a21b48-9194-4ebc-af56-7f2eda3d0ffc" MODIFIED="1568604549629" TEXT="使用方法"><hook NAME="accessories/plugins/NodeNote.properties"><text>#在参数前面加上&lt; *, &gt;
#eg
def 只能关键字参数(x, y="默认参数y", *, a, b="默认参数b"):
    """这里a就是只能用关键字来传递参数,如果使用位置传递参数会引发异常"""
    print(x, y, a, b)



</text></hook></node><node CREATED="1568604549629" ID="e69bba90-927d-438e-97cc-3cd641a6e17b" MODIFIED="1568604549629" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 只能关键字参数(x, y="默认参数y", *, a, b="关键字参数后面只能使用关键字参数"):
    """这里a就是只能用关键字来传递参数,如果使用位置传递参数会引发异常"""
    print(x, y, a, b)



#只能关键字参数("x")#提示缺少必须的关键字参数"a"

#只能关键字参数("x","y","a") # a作为位置参数传递也会提示错误

#只能关键字参数("x",a="a", "b的测试") 
#开始使用了关键字参数以后,后面的全部参数必须使用关键字参数,比如这行关键字参数后面使用了位置参数,提示错误.以下是正确写法
#只能关键字参数("x",a="a只能关键字参数", b="覆盖")


</text></hook></node></node><node CREATED="1568604549629" ID="fd669a8b-b070-4ad5-b62f-633b809446bd" MODIFIED="1568604549629" TEXT="默认参数"><node CREATED="1568604549629" ID="3d05d77d-4bf4-4eaa-8d62-3a237471bd7c" MODIFIED="1568604549629" TEXT="如果设置了默认参数"><hook NAME="accessories/plugins/NodeNote.properties"><text>如果设置了默认参数,在传递参数的时候不给默认参数传递参数对象,那么默认参数将会采用默认值
</text></hook></node><node CREATED="1568604549629" ID="b8409e35-276b-41d9-8a8a-02093fe022db" MODIFIED="1568604549629" TEXT="强制参数"><node CREATED="1568604549629" ID="14c9df76-1baa-4e0f-bcc0-f6bd7cd1d6d6" MODIFIED="1568604549629" TEXT="也就是没有给出默认值的参数"/></node><node CREATED="1568604549629" ID="51714607-db3f-41a5-abfd-8c78057337e5" MODIFIED="1568604549629" TEXT="默认参数的注意事项"><node CREATED="1568604549629" ID="98f35983-3e05-4cf6-b629-e5170959b81a" MODIFIED="1568604549629" TEXT="默认参数的赋值"><node CREATED="1568604549629" ID="ea9d7d20-72b1-4ab8-bab3-71f1123aff34" MODIFIED="1568604549629" TEXT="默认参数是在定义参数的时候就确定了的"><hook NAME="accessories/plugins/NodeNote.properties"><text>关于关键字参数需要注意的一点是，我们提供的任何默认参数都是在第一次解释函数时计算的，而不是在调用函数时。这意味着我们不能动态生成默认值.

默认值是在定义函数时计算的，而不是在调用函数时计算的。</text></hook><node CREATED="1568604549629" ID="bb0527e2-b8a8-4c45-9d2b-4276266addcc" MODIFIED="1568604549629" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>数字 = 5
def 函数测试(数字=数字):
    print(数字)


数字 = 6
函数测试(8)#8
函数测试()#5
 ,这里演示了默认值只能在定义函数的时候赋值,程序运行的过程不能重新改变默认值
print(数字)#6</text></hook></node></node><node CREATED="1568604549629" ID="68a25760-98ef-4e13-8c44-9c9768b6fe06" MODIFIED="1568604549629" TEXT="当默认参数的需求是空序列的时候"><node CREATED="1568604549629" ID="1b22a402-5c33-435c-9aa3-009f0fcd12ff" MODIFIED="1568604549629" TEXT="错误使用的eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def hello(b=[]):
    b.append("a")
    print(b)

hello()
hello()
# 可能是因为列表是默认的全局变量对象才导致这样的输出结果,一般的变量对象没有在外部赋值都算是局部变量.</text></hook><node CREATED="1568604549629" ID="a662eddd-89da-4d0a-b60a-6ac5a285300a" MODIFIED="1568604549629" TEXT="不能使用空序列"/></node><node CREATED="1568604549629" ID="8be9f14b-4ee5-43a6-ad6e-9f9c2a745fe2" MODIFIED="1568604549629" TEXT="正确使用的eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def hello(b=None):
    b = b if None else []
    b.append("a")
    print(b)


hello()
hello()
# 可能是因为列表是默认的全局变量对象才导致这样的输出结果,一般的变量对象没有在外部赋值都算是局部变量.
</text></hook><node CREATED="1568604549629" ID="cc7d6a00-025d-484e-b015-57ef92308657" MODIFIED="1568604549629" TEXT="解释:"><hook NAME="accessories/plugins/NodeNote.properties"><text>先设置默认值为None,
然后
关键字参数=关键字参数 If 关键字 else []
等价于
if 关键字:
	关键字参数 = 关键字参数
else:
	关键字参数 = []</text></hook></node></node></node></node></node></node></node><node CREATED="1568604549629" ID="f5b21749-caa9-4329-8f80-4a365daabf7f" MODIFIED="1568604549629" TEXT="关于如何选择位置参数和关键字参数的说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>有这么多的选项，似乎很难选择一个，但是如果您将位置参数看作有序列表，并将关键字参数看作类似于字典，那么您将发现正确的布局趋于合适。如果您需要要求调用方指定参数，则强制指定;如果您有一个合理的默认值，那么将它设置为一个关键字参数。选择如何调用方法通常会自行处理，这取决于需要提供哪些值，以及可以保留哪些值的默认值。仅使用关键字的参数相对较少，但是当用例出现时，它们可以生成更优雅的API。</text></hook></node><node CREATED="1568604549629" ID="51a5a148-986b-416a-b0eb-abe47f289ae6" MODIFIED="1568604549629" TEXT="可变参数"><node CREATED="1568604549629" ID="6fd93902-d5d6-4dc1-b439-b32cc4a17922" MODIFIED="1568604549629" TEXT="可变参数_列表"><node CREATED="1568604549629" ID="d2a4f391-ed8e-4cb2-a2fb-364cb91addd7" MODIFIED="1568604549629" TEXT="使用符合: *"><node CREATED="1568604549629" ID="2f113e91-8cac-422f-b610-7310a09bd931" MODIFIED="1568604549629" TEXT="通常默认:*args"/></node><node CREATED="1568604549629" ID="94bfedb3-8aca-4c3e-af04-bb746d99c88e" MODIFIED="1568604549629" TEXT="关于该参数传入的元素个数"><node CREATED="1568604549629" ID="bfbd4158-d42d-457d-a8ad-033df0d7268a" MODIFIED="1568604549629" TEXT="如果传入0个元素,那么生成空的列表"/><node CREATED="1568604549629" ID="bb8df876-0325-4adf-b732-4f6a3a0d5e9d" MODIFIED="1568604549629" TEXT="如果传入n个元素,那么生成含n个元素的列表"/><node CREATED="1568604549629" ID="08651ba2-18f1-4044-887c-f42084eb1270" MODIFIED="1568604549629" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 获取网页(*链接们):
    for 连接 in 链接们:
        #用网址下载连接
        print(连接)


获取网页()
print("#------------------------------------------------------------------------")
获取网页("http://www.baidu.com")
print("#------------------------------------------------------------------------")
获取网页("http://www.baidu.com", "http://www.google.com")
</text></hook></node></node></node><node CREATED="1568604549629" ID="e922af84-e664-4b96-af1c-ceeb6e28ec81" MODIFIED="1568604549629" TEXT="可变参数_字典"><node CREATED="1568604549629" ID="86606d11-7572-4eac-99a2-f2bbf65a1b9b" MODIFIED="1568604549629" TEXT="使用符号: **"><node CREATED="1568604549629" ID="f558da61-b4ff-4ea8-9d04-d11cbcee4657" MODIFIED="1568604549629" TEXT="通常默认:**kwargs"/></node><node CREATED="1568604549629" ID="838bcb3b-ce93-4869-ac92-d0292586564b" MODIFIED="1568604549629" TEXT="这个通常用于配置设置"/><node CREATED="1568604549629" ID="a851d1f8-a1c5-41d6-8c61-3308dd35b859" MODIFIED="1568604549629" TEXT="eg(这个eg可以作为模板)"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 设置:
    默认设置 = {
        'port' : 21,
        #使用:,不是=
        'host' : 'localhost',
        'username' : None,
        'password' : None,
        'debug' : False,
    }
    def __init__(self,**kwargs):
        self.设置 = dict(设置.默认设置)
        #__init__方法所做的第一件事就是复制这个字典。我们这样做而不是直接修改字典，以防实例化两个单独的设置:类级别的"默认设置"和对象级别的"设置"
        self.设置.update(kwargs)
        #使用新字典上的update方法将任何非默认值更改为作为关键字参数提供的值

    def __getitem__(self, key):
        """_getitem__方法允许我们使用索引语法来使用新类。"""
        return self.设置[key]


测试对象 = 设置(username='张三', password='张三的密码', debug=True)
#注意,这里的关键字不再带引号.

print(测试对象['port'])
print(测试对象['username'])
print(测试对象['debug'])



</text></hook></node></node><node CREATED="1568604549629" ID="aacc9d42-de66-4392-99ae-818b9cd98045" MODIFIED="1568604549629" TEXT="组合使用"><node CREATED="1568604549629" ID="f662ca91-d9fd-4972-b398-7583108ad3a6" MODIFIED="1568604549629" TEXT="暂时未成功运行的eg:7.2.3"/></node></node><node CREATED="1568604549629" ID="3fc115d9-3a91-4ea2-9b1e-06c2084cc8d9" MODIFIED="1568604549629" TEXT="可拆包参数"><node CREATED="1568604549630" ID="958e31f6-ed6d-4bf5-b924-d0f8e4e08cd2" MODIFIED="1568604549630" TEXT="可拆包参数源"><node CREATED="1568604549630" ID="1609dcac-2029-4c06-b8a0-b5baf58fba15" MODIFIED="1568604549630" TEXT="传递的是*列表"><node CREATED="1568604549630" ID="8702cb4d-c89e-49d9-bafa-fef7f6c4e8b6" MODIFIED="1568604549630" TEXT="类似于位置参数"/></node><node CREATED="1568604549630" ID="dc2f7cca-f6ec-422a-a1c7-51590f076213" MODIFIED="1568604549630" TEXT="传递的参数是**字典"><node CREATED="1568604549630" ID="31bec782-e844-4011-94d3-000e1b65d84b" MODIFIED="1568604549630" TEXT="类似于关键字参数"/><node CREATED="1568604549630" ID="8748fbc9-0d31-4ff2-8e77-e8d93c561c82" MODIFIED="1568604549630" TEXT="函数中使用含有需要更新数据的字典覆盖原字典"><node CREATED="1568604549630" ID="18fdeeb2-655c-4277-8680-201363eb3978" MODIFIED="1568604549630" TEXT="按顺序解包字典eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>覆盖字典 = {'参数1':'一', '参数2':'二', '参数3':'三'}

def 字典顺序拆包覆盖或者添加数据(**kwargs):
    原字典= {'参数1': '1', '参数2': '2'}
    print()
    后字典 = {**原字典, **kwargs}
    print(后字典)


字典顺序拆包覆盖或者添加数据(**覆盖字典)

</text></hook></node></node></node><node CREATED="1568604549630" ID="9e92c361-c64f-4873-b617-73b972757d65" MODIFIED="1568604549630" TEXT="列表和字典拆包的eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 参数展示(参数1, 参数2, 参数3="三"):
    print(参数1, 参数2, 参数3)

列表参数 = range(3)
字典参数 = {
    '参数1':'一',
    '参数2':'二'
}

print("解包列表:", end=" ")
参数展示(*列表参数)

print("解包字典", end=" ")
参数展示(**字典参数)</text></hook></node></node><node CREATED="1568604549630" ID="0d770430-9743-4151-843e-f3e3092b9ac2" MODIFIED="1568604549630" TEXT="使用环境"><hook NAME="accessories/plugins/NodeNote.properties"><text>这在将从用户输入或外部源(例如internet页面或文本文件)收集的信息映射到函数或方法调用时非常有用。</text></hook><node CREATED="1568604549630" ID="a331afe5-cc1c-4118-8e97-6d26b842484a" MODIFIED="1568604549630" TEXT="用户输入"/><node CREATED="1568604549630" ID="c6420acc-af3b-4d6d-8582-87e9b9ad0128" MODIFIED="1568604549630" TEXT="外部源"><node CREATED="1568604549630" ID="581a321c-c338-40bb-a858-8ceab8fa3815" MODIFIED="1568604549630" TEXT="文本"/><node CREATED="1568604549630" ID="0f906e69-bbf7-4be3-b98e-8eca02975fe4" MODIFIED="1568604549630" TEXT="网络"/></node></node></node></node><node CREATED="1568604549630" ID="5d837754-3d2c-4a17-be5a-1fef40ec0179" MODIFIED="1568604549630" TEXT="关于py函数"><node CREATED="1568604549630" ID="004a35a2-d0c3-4775-b519-a7f26fa2fd61" MODIFIED="1568604549630" TEXT="函数本身也是对象"><node CREATED="1568604549630" ID="cdb2b34d-fc94-419e-a6ae-9428e2d8e4c7" MODIFIED="1568604549630" TEXT="函数本身具有的属性"><node CREATED="1568604549630" ID="2be2c71a-e315-4d0a-97c1-fda386fadcc1" MODIFIED="1568604549630" TEXT="__class__"/><node CREATED="1568604549630" ID="6d603339-2eb0-49d3-9187-24d81b36259f" MODIFIED="1568604549630" TEXT="__name__"/><node CREATED="1568604549630" ID="24b3029e-4496-4108-b64e-025468eb0ff4" MODIFIED="1568604549630" TEXT="其他"/></node></node><node CREATED="1568604549630" ID="8f2e8695-13d8-45b9-bc51-75af8617d6e6" MODIFIED="1568604549630" TEXT="像attribute那样使用函数"><node CREATED="1568604549630" ID="db710715-9d0e-4386-bdef-965676940d11" MODIFIED="1568604549630" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>class A:
    def print(self):
        print("My class is A")

def fake_print():
    print("My class isn't A")

a = A()
a.print()
a.print = fake_print
a.print()</text></hook></node><node CREATED="1568604549630" ID="cb1db09e-9cdc-44dd-9106-09e5ec4cc3ec" MODIFIED="1568604549630" TEXT="可以向实例化的对象添加或更改函数"><hook NAME="accessories/plugins/NodeNote.properties"><text>可以将它们设置为其他对象上的可调用属性。可以向实例化的对象添加或更改函数</text></hook></node><node CREATED="1568604549630" ID="ce651005-a22f-41fb-911a-9de1aa048c14" MODIFIED="1568604549630" TEXT="可以替换类上的方法而不是对象"><node CREATED="1568604549630" ID="55295c48-664d-4ad7-b4f5-376eb159d932" MODIFIED="1568604549630" TEXT="应用领域"><hook NAME="accessories/plugins/NodeNote.properties"><text>也可以替换类上的方法而不是对象，尽管在这种情况下，我们必须将self参数添加到参数列表中。这将更改该对象的所有实例的方法，即使是已经实例化的实例。显然，替换这样的方法可能既危险又难以维护。阅读代码的人将看到调用了一个方法，并在原始类中查找该方法。但是原始类上的方法不是被调用的方法。弄清楚到底发生了什么可能会成为一个棘手的、令人沮丧的调试过程。但它确实有它的用途。通常，在运行时替换或添加方法(称为monkey补丁)用于自动化测试。如果测试客户机-服务器应用程序，我们可能不希望在测试客户机时实际连接到服务器;这可能会导致意外的资金转移或尴尬的测试电子邮件被发送到真实的人。相反，我们可以设置测试代码来替换向服务器发送请求的对象上的一些关键方法，以便它只记录方法被调用的情况。
Monkey-patching还可以用于修复bug，或者在与我们交互的第三方代码中添加特性，而这些特性的行为并不完全符合我们的需要。然而，应该谨慎地加以应用;它几乎总是一个混乱的黑客。然而，有时，这是使现有库适应我们需要的唯一方法。</text></hook></node></node></node><node CREATED="1568604549630" ID="b7608cb4-dd66-4939-a1b1-f65f0de90f46" MODIFIED="1568604549630" TEXT="像函数那样使用对象"><node CREATED="1568604549630" ID="da649486-0d41-47e5-a9a0-4e26b19fa8be" MODIFIED="1568604549630" TEXT="向对象之中添加__call__方法"/></node></node><node CREATED="1568604549630" ID="c233fa2b-08a9-4f5a-8909-78db9baaf2bf" MODIFIED="1568604549630" TEXT="py设计模式"><node CREATED="1568604549630" ID="cb2cd67d-9bff-4b6a-bb10-fb9e34290961" MODIFIED="1568604549630" TEXT="创建型"><node CREATED="1568604549630" ID="547fa771-10f6-4b79-896e-4b7ca7cf8891" MODIFIED="1568604549630" TEXT="工厂方法模式"/><node CREATED="1568604549630" ID="1aed6e00-c4c4-44f2-b693-39c7e3e72297" MODIFIED="1568604549630" TEXT="抽象工厂模式"/><node CREATED="1568604549630" ID="3a010975-ec7b-4130-9377-90434b212b32" MODIFIED="1568604549630" TEXT="建造者模式"/><node CREATED="1568604549630" ID="fbcecf1d-0be0-4746-b1e1-61f7e08baadb" MODIFIED="1568604549630" TEXT="原型模式"/><node CREATED="1568604549630" ID="f08dd200-144d-4078-98dd-bcb56e67d44d" MODIFIED="1568604549630" TEXT="单例模式"/></node><node CREATED="1568604549630" ID="538f2739-74f7-400b-a9e6-c4d100983544" MODIFIED="1568604549630" TEXT="结构型"><node CREATED="1568604549630" ID="9513af5b-15a3-4fff-b26e-d47075d00c2c" MODIFIED="1568604549630" TEXT="适配器模式"/><node CREATED="1568604549630" ID="42daead8-882d-4d45-acdd-bdac9375fa59" MODIFIED="1568604549630" TEXT="桥接模式"/><node CREATED="1568604549630" ID="fa52ec94-12ca-43e3-b293-fc9b555d2f7f" MODIFIED="1568604549630" TEXT="组合模式"/><node CREATED="1568604549630" ID="75adc6a1-575b-4437-a730-2c20af0b9b80" MODIFIED="1568604549630" TEXT="外观模式"/><node CREATED="1568604549630" ID="6f6fc956-1a3c-4c92-9066-d1ae684a3220" MODIFIED="1568604549630" TEXT="享元模式"/><node CREATED="1568604549630" ID="c6f5570b-7453-4ec5-ac9a-2035b14a68bb" MODIFIED="1568604549630" TEXT="代理模式"/><node CREATED="1568604549630" FOLDER="true" ID="33993a96-af1f-4a03-b54a-db2a5a1d21af" MODIFIED="1568604549630" TEXT="装饰器模式"><node CREATED="1568604549631" ID="ca1648f9-d74c-4dce-98b8-208e77f4e980" MODIFIED="1568604549631" TEXT="网络eg"><node CREATED="1568604549631" ID="1ab8ff76-be7d-41f9-9a1d-feb31bd44d96" MODIFIED="1568604549631" TEXT="一个例子理解decorator者模式"><node CREATED="1568604549631" ID="49d40619-ab84-4730-8cc9-6081327eaae7" MODIFIED="1568604549631" TEXT="别人总结的代码学习理解快eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 饮料(object):&#13;
    def __init__(self):&#13;
        self.描述 = "未知饮料"&#13;
&#13;
    def 获取描述(self):&#13;
        return(self.描述)&#13;
&#13;
    def 价格(self):&#13;
        pass&#13;
&#13;
#以下两个类(实例化后的对象)是被装饰者&#13;
&#13;
class 绿茶(饮料):&#13;
    def __init__(self):&#13;
        super(绿茶, self).__init__()&#13;
        self.描述 = "绿茶基质"&#13;
&#13;
    def 价格(self):&#13;
        return 1&#13;
&#13;
&#13;
class 红茶(饮料):&#13;
    def __init__(self):&#13;
        super(红茶, self).__init__()&#13;
        self.描述 = "红茶基质"&#13;
&#13;
    def 价格(self):&#13;
        return 1&#13;
&#13;
&#13;
class 红绿茶(饮料):&#13;
    def __init__(self):&#13;
        super(红绿茶, self).__init__()&#13;
        self.描述 = "红绿茶基质"&#13;
&#13;
    def 价格(self):&#13;
        return 1&#13;
#装饰器类的基类&#13;
&#13;
&#13;
class 装饰器基类(饮料):&#13;
    def 获取描述(self):&#13;
        pass&#13;
&#13;
#以下调味料是"装饰器"使用的"装饰材料"&#13;
#调味料糖&#13;
class 糖(装饰器基类):&#13;
    #这里传入被装饰类,也可以是组件.&#13;
    def __init__(self, 饮料):&#13;
        super(糖, self).__init__()&#13;
        self.饮料 = 饮料&#13;
    &#13;
    def 获取描述(self):&#13;
        return self.饮料.获取描述() + ",糖"&#13;
&#13;
    def 价格(self):&#13;
        return self.饮料.价格() + 2&#13;
    &#13;
&#13;
#调味料绿茶茶叶&#13;
class 绿茶叶(装饰器基类):&#13;
    #这里传入被装饰类,也可以是组件.&#13;
    def __init__(self, 饮料):&#13;
        super(绿茶叶, self).__init__()&#13;
        self.饮料 = 饮料&#13;
&#13;
    def 获取描述(self):&#13;
        return self.饮料.获取描述() + ",绿茶叶"&#13;
&#13;
    def 价格(self):&#13;
        return self.饮料.价格() + 3&#13;
&#13;
#调味料红茶叶&#13;
class 红茶叶(装饰器基类):&#13;
    #这里传入被装饰类,也可以是组件.&#13;
    def __init__(self, 饮料):&#13;
        super(红茶叶, self).__init__()&#13;
        self.饮料 = 饮料&#13;
&#13;
    def 获取描述(self):&#13;
        return self.饮料.获取描述() + ",红茶叶"&#13;
&#13;
    def 价格(self):&#13;
        return self.饮料.价格() + 4&#13;
&#13;
print("下面调制绿茶")&#13;
#首先,拿一瓶绿茶(徒有其名,内部描述仅是"绿茶",相当于白开水,在饮料基类默认定价为1)&#13;
一杯绿茶 = 绿茶()&#13;
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")&#13;
&#13;
#先被"糖"装饰(白开水添加"糖",变成"糖水")&#13;
一杯绿茶 = 糖(一杯绿茶)&#13;
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")&#13;
#然后被"绿茶叶装饰",("糖水"添加"绿茶叶",编程"绿茶"))&#13;
一杯绿茶 = 绿茶叶(一杯绿茶)&#13;
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")&#13;
&#13;
print("下面调制红绿茶")&#13;
一杯混合茶 = 绿茶叶(红茶叶(糖(红绿茶())))&#13;
print(f"{一杯混合茶.获取描述()}:{一杯混合茶.价格()}")&#13;
&#13;
</text></hook></node><node CREATED="1568604549631" ID="5300b0f6-7e7d-4d95-8c93-1fd3cd2fdacc" MODIFIED="1568604549631" TEXT="源eg网址"><hook NAME="accessories/plugins/NodeNote.properties"><text>https://www.jianshu.com/p/aee06e07c5e9</text></hook></node></node></node><node CREATED="1568604549631" ID="560d4dcf-4282-45a0-8691-92091c210a82" MODIFIED="1568604549631" TEXT="decorator模式的主要用途"><node CREATED="1568604549631" ID="19139a2b-76a5-404e-ab70-8ce00ea22858" MODIFIED="1568604549631" TEXT="增强组件向另外一个组件发送数据时的响应"/><node CREATED="1568604549631" ID="5e2f8417-21a1-48fa-a3f5-cf2f35ea8b4c" MODIFIED="1568604549631" TEXT="支持多种可选的行为"/></node><node CREATED="1568604549631" ID="d1e04c4a-388d-4155-a2cb-ccf225ae7753" MODIFIED="1568604549631" TEXT="decorator模式的作用"><hook NAME="accessories/plugins/NodeNote.properties"><text>The decorator pattern allows us to wrap an object that provides core functionality with
other objects that alter this functionality. Any object that uses the decorated object will
interact with it in exactly the same way as if it were undecorated (that is, the interface of the
decorated object is identical to that of the core object).</text></hook><node CREATED="1568604549631" ID="e76240cc-9023-4d33-a43d-bbc5d967d031" MODIFIED="1568604549631" TEXT="精炼"><node CREATED="1568604549631" ID="50b855ac-f986-4cf1-b8cd-f8da4451ddcd" MODIFIED="1568604549631" TEXT="核心功能的对象"/><node CREATED="1568604549631" ID="1c25895f-2b5f-4b69-8f9c-a318b2613a97" MODIFIED="1568604549631" TEXT="更改核心功能的其他对象"/><node CREATED="1568604549631" ID="abab788f-7a11-4430-9732-249937af8c01" MODIFIED="1568604549631" TEXT="以上两个封装在一起,可以继续类似迭代的方式不断累封装原对象和新的属性(方法,数据)到新的对象中去"/><node CREATED="1568604549631" ID="f9993401-4397-4298-915f-28276b2287f7" MODIFIED="1568604549631" TEXT="比喻"><hook NAME="accessories/plugins/NodeNote.properties"><text>因为装饰器模式是在给对象增加责任。所以装饰器模式为对象结构型设计模式（对象是因为其是给对象而不是类增加责任，结构型模式就是描述如何将类或者对象结合在一起形成更大的结构，就像搭积木，可以通过简单积木的组合形成复杂的、功能更为强大的结构）。</text></hook></node></node></node><node CREATED="1568604549631" ID="44044c79-6124-4d9c-912a-e3a7d8d62c64" MODIFIED="1568604549631" TEXT="自己总结的decorator模式的本质"><hook NAME="accessories/plugins/NodeNote.properties"><text>其实decorator模式本质上并不是一种新的语法知识,而是对原有知识中的面向对象中的"继承"和"鸭子类型"(类似于)这两种知识的重组,是前人总结的一套方法.
条条道路通罗马,前人找出了一条最快到达的路.这条路就是decorator模式.</text></hook></node><node CREATED="1568604549631" ID="8d75cc91-14b4-4c55-a9ba-169516cf499c" MODIFIED="1568604549631" TEXT="使用环境"><node CREATED="1568604549631" ID="3ef94a29-2343-46f7-9111-b7cf0bc8d670" MODIFIED="1568604549631" TEXT="如果写的类需要扩展,需要有多重可选的行为或者属性,那么decorator模式最好,而不是继承."/></node><node CREATED="1568604549631" ID="78079428-4dad-41c9-8dae-d6cce4c23cc1" MODIFIED="1568604549631" TEXT="继承和decorator模式的比较"><node CREATED="1568604549631" ID="459d631e-e284-4a71-9d1b-4c9b9c6efb64" MODIFIED="1568604549631" TEXT="继承是静态的,代码编写阶段就已经确定,无法动态为已经实例化的对象添加行为和数据"/><node CREATED="1568604549631" ID="f5aaecbb-0e0c-4d58-a971-b00676b88df4" MODIFIED="1568604549631" TEXT="而decorator模式则可以动态为实例化的对象添加行为和数据"/></node><node CREATED="1568604549631" ID="d6c90de9-6926-442a-a952-814b6bf1d103" MODIFIED="1568604549631" TEXT="decorator组合函数"><node CREATED="1568604549631" ID="e6380d4c-4cd5-4574-a543-114550f74841" MODIFIED="1568604549631" TEXT="一般"><node CREATED="1568604549631" ID="acad9b42-91cc-4907-a4c4-274fb4f29dcf" MODIFIED="1568604549631" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import time &#13;
&#13;
&#13;
def 装饰材料(func):&#13;
    def wrapper(*args, **kwargs):&#13;
        now = time.time()&#13;
        print(f"唤醒ing {func.__name__} with {args} and {kwargs}")&#13;
        返回值 = func(*args, **kwargs)&#13;
        print(f"Executed {func.__name__} in {time.time()- now}ms")&#13;
        return 返回值&#13;
    &#13;
    return wrapper&#13;
&#13;
def test1(a,b,c):&#13;
    print("\ttest1 被唤醒")&#13;
&#13;
&#13;
def test2(a, b):&#13;
    print("\ttest2 被唤醒")&#13;
&#13;
&#13;
def test3(a, b):&#13;
    print("\ttest3 被唤醒")&#13;
    time.sleep(1)&#13;
&#13;
test1 = 装饰材料(test1)&#13;
test2 = 装饰材料(test2)&#13;
test3 = 装饰材料(test3)&#13;
&#13;
&#13;
test1(1, 2, 3)&#13;
test2(4, b=5)&#13;
test3(6, 7)&#13;
</text></hook><node CREATED="1568604549631" ID="462ec07f-ed03-4874-86e0-337e4e7bc75b" MODIFIED="1568604549631" TEXT="详细解释在oop10.2"/></node></node><node CREATED="1568604549631" ID="00ef7ba7-82b9-478e-8b7d-1c0e115ee449" MODIFIED="1568604549631" TEXT="使用@版本"><node CREATED="1568604549631" ID="17d50e40-ca55-472a-a5fa-f756df78ffa9" MODIFIED="1568604549631" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import time&#13;
&#13;
&#13;
def 装饰材料(func):&#13;
    def wrapper(*args, **kwargs):&#13;
        now = time.time()&#13;
        print(f"唤醒ing {func.__name__} with {args} and {kwargs}")&#13;
        返回值 = func(*args, **kwargs)&#13;
        print(f"Executed {func.__name__} in {time.time()- now}ms")&#13;
        return 返回值&#13;
&#13;
    return wrapper&#13;
&#13;
@装饰材料&#13;
def test1(a, b, c):&#13;
    print("\ttest1 被唤醒")&#13;
&#13;
&#13;
@装饰材料&#13;
def test2(a, b):&#13;
    print("\ttest2 被唤醒")&#13;
&#13;
&#13;
@装饰材料&#13;
def test3(a, b):&#13;
    print("\ttest3 被唤醒")&#13;
    time.sleep(1)&#13;
&#13;
&#13;
&#13;
test1(1, 2, 3)&#13;
print("#------------------------------------------------------------------------")&#13;
test2(4, b=5)&#13;
print("#------------------------------------------------------------------------")&#13;
test3(6, 7)&#13;
</text></hook></node></node></node></node></node><node CREATED="1568604549631" ID="bce2b377-be8d-4d0e-9ee1-a21cdb256d73" MODIFIED="1568604549631" TEXT="行为型"><node CREATED="1568604549631" ID="82cd5852-bd4e-4d25-88e0-fa15e5c18cb3" MODIFIED="1568604549631" TEXT="解释器模式"/><node CREATED="1568604549631" ID="d205288f-66bb-4d4b-a9fb-68971900fbcf" MODIFIED="1568604549631" TEXT="模板方法模式"/><node CREATED="1568604549631" ID="46657816-9906-49b2-a412-4bf1514375b1" MODIFIED="1568604549631" TEXT="责任链模式"/><node CREATED="1568604549631" ID="2ee0389f-7816-4627-9679-55e8f70c16e4" MODIFIED="1568604549631" TEXT="命令模式"/><node CREATED="1568604549631" ID="465f3d29-e5cc-41f4-a39f-634f844d4c21" MODIFIED="1568604549631" TEXT="中介者模式"/><node CREATED="1568604549631" ID="32a46889-034e-463f-a331-23d56962a1a6" MODIFIED="1568604549631" TEXT="备忘录模式"/><node CREATED="1568604549631" ID="5a1f66ea-accf-4a15-bc96-0ac93e360cca" MODIFIED="1568604549631" TEXT="访问者模式"/><node CREATED="1568604549631" FOLDER="true" ID="cbe13fe1-ec94-48e8-9d4f-888f9f64f00a" MODIFIED="1568604549631" TEXT="迭代器设计模式"><node CREATED="1568604549631" ID="73eec22a-3e3d-4e4c-8dbe-50aa761819d1" MODIFIED="1568604549631" TEXT="迭代器类必须具有的方法"><node CREATED="1568604549631" ID="71ecd472-7afc-42e1-8916-6e1b9ec796d0" MODIFIED="1568604549631" TEXT="__next__"><node CREATED="1568604549631" ID="83843c84-f788-4af7-8b4b-a21047ef496c" MODIFIED="1568604549631" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>供for循环(以及支持迭代的其他特性)调用的_next__方法，以便从序列中获取一个新元素。</text></hook></node><node CREATED="1568604549631" ID="0caa7671-1b73-422e-9c27-1e0475a625f4" MODIFIED="1568604549631" TEXT="nex(参数)"><hook NAME="accessories/plugins/NodeNote.properties"><text>Return the next item from the iterator. If default is given and the iterator is exhausted, it is returned instead of raising StopIteration.
,</text></hook></node></node><node CREATED="1568604549631" ID="39e3cc96-d96e-413e-8e9c-4512a1282f64" MODIFIED="1568604549631" TEXT="__iter__"><node CREATED="1568604549631" ID="b6130f42-602b-4691-a91d-30f5a833db7e" MODIFIED="1568604549631" TEXT="说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>That method must return 一个迭代器实例 that will cover all the elements in that class.</text></hook></node><node CREATED="1568604549631" ID="4ac68fd6-bdf0-47d0-ac39-df8351a64538" MODIFIED="1568604549631" TEXT="iter(参数)"><node CREATED="1568604549632" ID="6499c2d7-3cc3-46e2-b347-a2cfafdb2745" MODIFIED="1568604549632" TEXT="从对象(参数)获取迭代器__iter__"/><node CREATED="1568604549632" ID="c7402877-48b0-45b2-bb05-9fe2b18c58ec" MODIFIED="1568604549632" TEXT="(参数)对象必须提供自己的迭代器，否则就返回一个序列"/></node></node><node CREATED="1568604549632" ID="f0726379-0349-49fc-992d-5a9c8271e6a8" MODIFIED="1568604549632" TEXT="迭代:Iterable"><hook NAME="accessories/plugins/NodeNote.properties"><text>迭代一系列数据时，就会实现迭代器协议。例如，当您使用for循环时，后台发生以下情况：

首先调用对象上的iter（）方法将其转换为迭代器对象。

然后再调用迭代器对象上的next（）方法以获取序列的下一个元素。

如果没有要调用的元素，则会引发StopIteration异常。</text></hook></node><node CREATED="1568604549632" ID="723c357b-653c-4850-8318-730bae27e7a1" MODIFIED="1568604549632" TEXT="迭代器:iterator"/><node CREATED="1568604549632" ID="5c21f108-04be-4a09-b366-fa5436563825" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>#只有序列类的实例才含有__iter__属性.(__iter__是不是也就是迭代协议)
#难道要生成迭代对象才会有__next__?
print(hasattr(str, "__iter__"))
print(hasattr(dict, "__iter__"))
print(hasattr(set, "__iter__"))
print(hasattr(tuple, "__iter__"))
print(hasattr(list, "__iter__"))
print("#------------------------------------------------------------------------")
print(hasattr(list, "__next__"))
序列对象 = [1, 2, 3, 4]
迭代器对象 = iter(序列对象)
print(hasattr(迭代器对象, "__next__"))
print(next(迭代器对象))
print(next(迭代器对象))
print(next(迭代器对象))
print(next(迭代器对象))
#print(next(迭代器对象))#这一步将会出错

print("#------------------------------------------------------------------------")
#不含有迭代协议的的例子
print(hasattr(bool, "__iter__"))
</text></hook></node></node><node CREATED="1568604549632" ID="d0b5f4cd-6506-4cb1-b515-e8b3c417673e" MODIFIED="1568604549632" TEXT="推导式"><node CREATED="1568604549632" ID="6cf510d5-8449-4e09-b7ee-e4c373684139" MODIFIED="1568604549632" TEXT="推导式解释"><hook NAME="accessories/plugins/NodeNote.properties"><text>推导式是一种更简洁和优化的语法，用于从现有序列创建列表、集合或字典。</text></hook></node><node CREATED="1568604549632" ID="b97a1d6d-6651-4f37-9b51-f455f0b31fd5" MODIFIED="1568604549632" TEXT="列表推导式"><node CREATED="1568604549632" ID="084f3018-6e1a-46f0-9cdf-38cd49d52eee" MODIFIED="1568604549632" TEXT="列表推导式的特点:简单"><hook NAME="accessories/plugins/NodeNote.properties"><text>列表理解是Python中最强大的工具之一，虽然高级程序员确实经常使用推导式，但这并不是因为他们很高级。因为它们很简单，并且处理软件开发中一些最常见的操作。
</text></hook></node><node CREATED="1568604549632" ID="e5c07317-bab3-459f-b78a-97cfb809a4a6" MODIFIED="1568604549632" TEXT="和一般循环在代码间接性方面的比较"/><node CREATED="1568604549632" ID="2603d615-7ab1-48ec-8013-9a916b35db7c" MODIFIED="1568604549632" TEXT="组合if条件判断"/><node CREATED="1568604549632" ID="f5e6cdf6-8a79-4a4f-99ff-5c8940f60a61" MODIFIED="1568604549632" TEXT="列表推导式作用说明"><hook NAME="accessories/plugins/NodeNote.properties"><text>作用1:列表推导式用于将输入值映射到输出值
作用2:同时应用过滤器来包含或排除满足特定条件的任何值</text></hook></node><node CREATED="1568604549632" ID="e62a2ccf-384b-44af-ab1f-aa6d67be5161" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>&#13;
def 不使用推导式():&#13;
    输入的字符串 = ["1", "5", "28", "131", "3"]&#13;
    输出的整数 = []&#13;
    for num in 输入的字符串:&#13;
        输出的整数.append(int(num))&#13;
    print(输出的整数)&#13;
&#13;
def 使用推导式():&#13;
    输入的字符串 = ["1", "5", "28", "131", "3"]&#13;
    输出的整数 = [int(num) for num in 输入的字符串]&#13;
    print(输出的整数)&#13;
&#13;
def 列表推导式组合if():&#13;
    输入的字符串 = ["1", "5", "28", "131", "3"]&#13;
    输出的整数 = [int(num) for num in 输入的字符串 if len(num) &lt; 3]&#13;
    print(输出的整数)&#13;
    &#13;
print("不使用#------------------------------------------------------------------------")&#13;
不使用推导式()&#13;
print("使用#------------------------------------------------------------------------")&#13;
使用推导式()&#13;
print("组合if#------------------------------------------------------------------------")&#13;
列表推导式组合if()&#13;
</text></hook></node></node><node CREATED="1568604549632" ID="93578d46-134c-42df-9ac8-21fe0713b1cb" MODIFIED="1568604549632" TEXT="集合和字典推导式"><node CREATED="1568604549632" ID="8209da79-842a-4fd9-a256-79af5fa48586" MODIFIED="1568604549632" TEXT="字典推导式使用模板"><hook NAME="accessories/plugins/NodeNote.properties"><text>字典对象 = {key:value for xxxxxinxxxx............}</text></hook></node><node CREATED="1568604549632" ID="de70114c-b6ab-4cb7-8880-43bd22e74b76" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>from collections import namedtuple&#13;
Book = namedtuple("Book", "author title genre")&#13;
books = [&#13;
    Book("Pratchett", "Nightwatch", "fantasy"),&#13;
    Book("Pratchett", "Thief Of Time", "fantasy"),&#13;
    Book("Le Guin", "The Dispossessed", "scifi"),&#13;
    Book("Le Guin", "A Wizard Of Earthsea", "fantasy"),&#13;
    Book("Turner", "The Thief", "fantasy"),&#13;
    Book("Phillips", "Preston Diamond", "western"),&#13;
    Book("Phillips", "Twice Upon A Time", "scifi"),&#13;
]&#13;
#集合推导式&#13;
fantasy_authors = {b.author for b in books if b.genre == "fantasy"}&#13;
print(fantasy_authors)&#13;
print("#------------------------------------------------------------------------")&#13;
#字典推导式&#13;
fantasy_titles = {b.title: b for b in books if b.genre == "fantasy"}&#13;
print(fantasy_titles)&#13;
</text></hook></node><node CREATED="1568604549632" ID="c89a95c8-cd7b-4a55-85c7-514f072953b2" MODIFIED="1568604549632" TEXT="注意集合的特性:唯一性"><hook NAME="accessories/plugins/NodeNote.properties"><text>也就是说如果列表推导式里面第二次传入一样的key和value,那么该键值对会被覆盖掉.看情况使用</text></hook></node></node><node CREATED="1568604549632" ID="e5e92984-c79a-4ad5-a95e-91f878e2b42d" MODIFIED="1568604549632" TEXT="生成器表达式"><node CREATED="1568604549632" ID="e39a5e26-4515-4566-b611-22ed28e1a8c6" MODIFIED="1568604549632" TEXT="生成器"><node CREATED="1568604549632" ID="9211c1ca-1810-45a0-a6e6-48fe117f0627" MODIFIED="1568604549632" TEXT="概念"><hook NAME="accessories/plugins/NodeNote.properties"><text>Generator is an iterable created using a function with a yield statement.</text></hook></node><node CREATED="1568604549632" ID="273079e3-5330-42d3-bba8-89ba7ba7971e" MODIFIED="1568604549632" TEXT="更加具体地理解"><hook NAME="accessories/plugins/NodeNote.properties"><text>The main feature of generator is evaluating the elements on demand. When you call a normal function with a return statement the function is terminated whenever it encounters a return statement. In a function with a yield statement the state of the function is “saved” from the last call and can be picked up the next time you call a generator function.</text></hook></node><node CREATED="1568604549632" ID="ecfd8a71-2669-49b0-bd5d-690feb14f874" MODIFIED="1568604549632" TEXT="yield"><node CREATED="1568604549632" ID="fe44416e-478e-4c5b-b11b-05ed3e113b96" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import os&#13;
# generator expression&#13;
#导入文件, 导出文件 = sys.argv[1:3]&#13;
&#13;
path = os.getcwd()&#13;
导入文件 = os.path.join(&#13;
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")&#13;
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.3.0 I结果.txt")&#13;
&#13;
def 筛除warning(行们):&#13;
    for 行 in 行们:&#13;
        if "WARNING" in 行:&#13;
            yield 行.replace("    WARNING", "")&#13;
#这里每一次for循环都会"单次产出"后面的内容?同时将数据保存到生成器对象中?然后下一此yield再将yield的"单次产出"整合到上一次保存的数据?全部yield完之后返回整个生成器对象.(对象包含数据和行为)&#13;
&#13;
with open(导入文件) as 入文件:&#13;
    with open(导出文件, "w") as 出文件:&#13;
        滤后生成器对象 = 筛除warning(入文件)&#13;
        for 行 in 滤后生成器对象:&#13;
            出文件.write(行)&#13;
</text></hook></node><node CREATED="1568604549632" ID="0e7c071b-0af2-421a-ac82-1531e25a05bf" MODIFIED="1568604549632" TEXT="yield包含在列表推导式形式代码里面"/></node><node CREATED="1568604549632" ID="4d441fd8-2d2d-4832-b163-c07d56d16e1b" MODIFIED="1568604549632" TEXT="yield from"><node CREATED="1568604549632" ID="c7c29e87-aa6a-4da9-9b48-ac284c9c7f60" MODIFIED="1568604549632" TEXT="yeild_eg_升级版"><hook NAME="accessories/plugins/NodeNote.properties"><text>import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.4 结果.txt")

def 筛除warning(infilename):
    with open(infilename) as 入文件:
        yield from (行.replace("    WARNING", "") for 行 in 入文件 if "WARNING" in 行)

filter = 筛除warning(导入文件)
with open(导出文件, "w") as 出文件:
    for 行 in filter:
        出文件.write(行)
</text></hook></node><node CREATED="1568604549632" ID="5bbfe9fa-c6cc-40dd-981d-e3532cfc1aaf" MODIFIED="1568604549632" TEXT="yieldfrom应该就是yield组合列表推导式的产物"/><node CREATED="1568604549632" ID="d352dc23-ac27-46e9-af3a-40ff51868441" MODIFIED="1568604549632" TEXT="yieldfrom是在列表推导式形式的代码的外面"/></node><node CREATED="1568604549632" ID="8f8819fc-962f-440f-ac95-426c56cd687a" MODIFIED="1568604549632" TEXT="没有yield的生成器"><node CREATED="1568604549632" ID="d35cabad-54c7-46cf-b4cf-c87053a6d019" MODIFIED="1568604549632" TEXT="具体说明1"><hook NAME="accessories/plugins/NodeNote.properties"><text>Generator expression allows creating a generator on a fly without a yield keyword. However, it doesn’t share the whole power of generator created with a yield function. The syntax and concept is similar to list comprehensions:</text></hook></node><node CREATED="1568604549632" ID="b3739cb2-3113-4b6f-8e57-3c28d5733ffe" MODIFIED="1568604549632" TEXT="具体说明2"><hook NAME="accessories/plugins/NodeNote.properties"><text>In terms of syntax, the only difference is that you use parentheses instead of square brackets. However, the type of data returned by list comprehensions and generator expressions differs.</text></hook><node CREATED="1568604549632" ID="8a728a59-7fdb-490a-a644-fcb9406c281f" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>gen_exp = (x ** 2 for x in range(10) if x % 2 == 0)&#13;
list_exp = [x ** 2 for x in range(10) if x % 2 == 0]&#13;
print(gen_exp)&#13;
print(list_exp)&#13;
for x in gen_exp:&#13;
    print(x)</text></hook></node></node></node></node><node CREATED="1568604549632" ID="7fa8a9c2-b643-4c4b-8171-c29e5983c211" MODIFIED="1568604549632" TEXT="生成器表达式和推导式的区别"><node CREATED="1568604549632" ID="c096da84-67a5-49c3-9a15-b4d34dc99cb5" MODIFIED="1568604549632" TEXT="生成器表达式不消耗RAM"/></node><node CREATED="1568604549632" ID="f6aa87e1-2f30-4b52-8fef-35f22caabfe9" MODIFIED="1568604549632" TEXT="生成器表达式和推导式的相同"><node CREATED="1568604549632" ID="69db706b-9882-4865-a371-8f2ea415f848" MODIFIED="1568604549632" TEXT="创建生成器表达式，用()替代推导式中的[]或者{}"/></node><node CREATED="1568604549632" ID="212c602b-a667-428d-85cf-fcaf6f3f2e00" MODIFIED="1568604549632" TEXT="eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>import sys
"""
cmd 命令行运行本脚本的时候
sys.argv[0] ----------第一个参数:程序本身
sys.argv[1] ----------第二个参数:
sys.argv[2] ----------到三个参数:
设置默认打开py文件的程序为python
首先在程序文件下shift + 右键,点击"在此处打开命令窗口"

这个例子中cmd的完整代码:
python "9.3.3 logtest.py" "sample_log.txt" "result.txt"
"""
#
导入文件名 = sys.argv[1]
输出文件名 = sys.argv[2]

with open(导入文件名) as 导入文件名:
    with open(输出文件名, "w") as 输出文件:
        warnings = (l for l in 导入文件名 if "WARNING" in l)
        for l in warnings:
            输出文件.write(l)
</text></hook></node><node CREATED="1568604549632" ID="b39bc667-ef14-480b-8390-4cc79892d58a" MODIFIED="1568604549632" TEXT="理解"><hook NAME="accessories/plugins/NodeNote.properties"><text>在带有yield语句的函数中，函数的(变量?)状态从上次调用中“保存”，并且可以在下次调用生成函数时被拾取(yild的右边?)</text></hook></node></node></node><node CREATED="1568604549632" ID="f1ec8291-6d23-44c0-ba06-7a0d15946b97" MODIFIED="1568604549632" TEXT="协同程序"><node CREATED="1568604549632" ID="6ffd0aa6-4116-420a-8658-13aa6e8fa1c4" MODIFIED="1568604549632" TEXT="使用模板eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>def 协程示例():
    总计 = 0
    while True:
        send传入数据 = yield 总计
        """
        代码执行遇到yield,同时将导致生成器暂停,协程暂停
        ①这里yield(外部调用send)和生成器中的next一样,直到生成器的yield(外部调用send)被调用才会继续
        ②yield返回send()传入的值,同时赋值到左边,这个"总计"应该是记录上一次最后的"总计"来给后面的代码调用,开发人员定义的语法糖,不能将yield作为运算符来理解,也许原因是"总计"在这里没有作为全局变量
        """
        print("处理新数据前:", send传入数据, "之前总计:",总计)
        总计 += send传入数据
        print("处理新数据后:", send传入数据, "之后总计:",总计)


#和ducktype有点像
协程示例对象 = 协程示例()
#黑队 = tally()
print("零")
print(next(协程示例对象))
print("\n")

print("一")
print(协程示例对象.send(3))
print("\n")

print("二")
print(协程示例对象.send(2))
print("\n")

</text></hook></node><node CREATED="1568604549632" ID="220d2acf-8678-48e8-9207-042f8613f2bd" MODIFIED="1568604549632" TEXT="生成器和协同程序的区别"><node CREATED="1568604549632" ID="0080201b-aa46-46a1-bdf2-e3fecbeaf737" MODIFIED="1568604549632" TEXT="具体"><hook NAME="accessories/plugins/NodeNote.properties"><text>定义生成器和协程之间的区别:生成器只生成值，而协程更进一步:可以使用这些值</text></hook></node></node><node CREATED="1568604549632" ID="6bcce6e2-6878-446f-ad85-ae6eb641c5d5" MODIFIED="1568604549632" TEXT="协同程序的优势"><hook NAME="accessories/plugins/NodeNote.properties"><text>请注意——基于协程的解决方案所需的代码量非常小:</text></hook></node><node CREATED="1568604549633" ID="8ff803a5-47a5-4b54-9683-05d48b074b73" MODIFIED="1568604549633" TEXT="知道的应用领域"><node CREATED="1568604549633" ID="22a122c2-332b-461a-864a-5788490f2586" MODIFIED="1568604549633" TEXT="日志"/></node></node></node><node CREATED="1568604549633" FOLDER="true" ID="74c7fa91-1edb-4798-8e6b-6482c543e6ab" MODIFIED="1568604549633" TEXT="观察器模式"><node CREATED="1568604549633" ID="c8b0da8c-bced-407d-b3a4-629ffef81a53" MODIFIED="1568604549633" TEXT="作用"><node CREATED="1568604549633" ID="f0347dd7-b183-459c-b6ce-ef2283274120" MODIFIED="1568604549633" TEXT="使代码可读性更好"/><node CREATED="1568604549633" ID="a2d12fb5-3ae0-402e-ad1d-33aa80a21125" MODIFIED="1568604549633" TEXT="假如不使用这种模式"><hook NAME="accessories/plugins/NodeNote.properties"><text>观察者模式将被观察的代码与执行观察的代码分离开来。&#13;
如果我们不使用这种模式，我们将不得不在每个属性中放入代码来处理可能出现的不同情况;登录到控制台，更新数据库或文件，等等。每个任务的代码都将与观察到的对象混合在一起。维护它将是一场噩梦，在以后添加新的监视功能将是痛苦的</text></hook></node></node><node CREATED="1568604549633" ID="ec1c7fe3-baef-4034-baa4-a4637a80ba5b" MODIFIED="1568604549633" TEXT="Eg"><hook NAME="accessories/plugins/NodeNote.properties"><text>class 库存(object):
    def __init__(self):
        self.观察者们 = []
        self._产品 = None
        self._数量 = 0

    def 添加观察者对象(self, 观察者):
        self.观察者们.append(观察者)

    @property
    def 产品(self):
        return self._产品

    @产品.setter
    #每当"self._产品"发生变化,这段代码块就会被调用
    def 产品(self, value):
        self._产品 = value
        self._更新观察者()

    @property
    def 数量(self):
        return self._数量

    @数量.setter
    def 数量(self, value):
        self._数量 = value
        self._更新观察者()

    def _更新观察者(self):
        for 观察者 in self.观察者们:
            观察者()

class 控制台观察者(object):
    def __init__(self, 库存):
        self.库存 = 库存

    def __call__(self):
        print("产品发生变化后的值:",self.库存.产品)
        print("产品数量发生变化后的值:",self.库存.数量)


"""
#以下是interpirter console 调时差代码
核心对象 = 库存()
观察者对象1 = 控制台观察者(核心对象)
观察者对象2 = 控制台观察者(核心对象)
核心对象.添加观察者对象(观察者对象1)
核心对象.添加观察者对象(观察者对象2)
核心对象.产品 = "鞋子"
核心对象.数量 = 10
"""

</text></hook></node><node CREATED="1568604549633" ID="622a2e42-8a41-4337-9ad5-b6a1604f0a1f" MODIFIED="1568604549633" TEXT="具体内容在10.2"/></node><node CREATED="1568604549633" FOLDER="true" ID="69f05dc8-7a99-44ba-848e-a733b5b62a2b" MODIFIED="1568604549633" TEXT="状态模式"><node CREATED="1568604549633" ID="158eea3f-aa95-48ed-95ae-4769c8137813" MODIFIED="1568604549633" TEXT="与策略模式类似"><hook NAME="accessories/plugins/NodeNote.properties"><text>状态模式在结构上类似于策略模式，但是其意图和目的非常不同。状态模式的目标是表示状态转换系统:很明显，对象可以处于特定的状态，并且某些活动可能将其驱动到不同的状态。</text></hook></node></node><node CREATED="1568604549633" FOLDER="true" ID="ab0fec33-dedc-4e77-bb3d-0009458a28aa" MODIFIED="1568604549633" TEXT="策略模式"><node CREATED="1568604549633" ID="6beebb35-7b59-4a9d-9c2e-615d0124a607" MODIFIED="1568604549633" TEXT="作用"><hook NAME="accessories/plugins/NodeNote.properties"><text>策略模式是面向对象编程中常见的抽象演示。该模式实现对单个问题的不同解决方案，每个解决方案位于不同的对象中。然后客户端代码可以在运行时动态地选择最合适的实现</text></hook></node><node CREATED="1568604549633" ID="c768e806-8434-4e11-be6d-9fca877ecec2" MODIFIED="1568604549633" TEXT="暂时不深入"/></node></node></node></node><node CREATED="1568604549633" ID="7bat2uagfr05jdvj9t9kg29645" MODIFIED="1568604549633" POSITION="right" TEXT="学习方法总结"><node CREATED="1568604549633" ID="68339a2485teqb23a57fiov9hh" MODIFIED="1568604549633" TEXT="总结"/><node CREATED="1568604549633" ID="7keun2adabmnr2acnhlg3dscvl" MODIFIED="1568604549633" TEXT="理解+模仿代码"/><node CREATED="1568604549633" ID="5olg35rem9ikbplpnrf7f7mh0g" MODIFIED="1568604549633" TEXT="每天复习大纲的知识记忆各种定义的作用等等"/><node CREATED="1568604549633" ID="623653df-b4db-46bd-b5fa-f258ca2158f4" MODIFIED="1568604549633" TEXT="写代码原则"><node CREATED="1568604549633" ID="a4380edd-8a44-4a06-9c06-b2374f6fdcc9" MODIFIED="1568604549633" TEXT="可维护性"><hook NAME="accessories/plugins/NodeNote.properties"><text>Return a copy of the string with leading and trailing whitespace remove.&#13;
&#13;
If chars is given and not None, remove characters in chars instead.</text></hook></node></node></node><node CREATED="1568604549633" ID="03a84f82-7f12-45de-b788-a9818eb13ec3" MODIFIED="1568604549633" POSITION="left" TEXT="python设计模式" VSHIFT="-200"/></node></map>