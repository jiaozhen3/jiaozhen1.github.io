< html >

<头>
    < meta  charset =“ utf-8 ” >
    <标题> </标题>
</头>

<身体>
</ body >
<脚本>
    函数 getQueryString （name ） {
        var  reg  =  new  RegExp （“（^ |＆）”  + 名称 +  “ =（[^＆] *）（＆| $）” ， “ i” ）;
        var  r  =  window 。位置。搜索。substr （1 ）。匹配（REG ）;
        if  （r！= null ） 返回 unescape （r [ 2 ] ）;
        返回 null ;
    }
    var  param  =  getQueryString （'url' ）;
    如果 （param！= null ） {
        窗口。位置。href  =  param ;
    } 其他 {
        f_close （' closeWindow ' ）;
    }

    函数 f_close （） {
        if  （typeof （WeixinJSBridge ）！= “未定义” ） {
            WeixinJSBridge 。呼叫（'closeWindow' ）;
        } 其他 {
            如果 （导航。的userAgent 。的indexOf （“MSIE” ） >  0 ） {
                如果 （导航。的userAgent 。的indexOf （“MSIE 6.0” ） >  0 ） {
                    窗口。开瓶器 =  null ;
                    窗口。关闭（）;
                } 其他 {
                    窗口。打开（`` ， ' _ top' ）;
                    窗口。顶部。关闭（）;
                }
            } 否则 如果 （导航。的userAgent 。的indexOf （“火狐” ） >  0 ） {
                窗口。位置。href  =  'about：blank' ;
            } 其他 {
                窗口。开瓶器 =  null ;
                窗口。打开（`` ， '_self' ， '' ）;
                窗口。关闭（）;
            }
        }
    }
</脚本>

</ html >
