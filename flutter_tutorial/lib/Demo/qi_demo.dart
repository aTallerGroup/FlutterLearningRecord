import 'package:flutter/material.dart';
// import 'package:bot_toast/bot_toast.dart';

class QiDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QiDemoState();
  }
}

class QiDemoState extends State<QiDemo> {
  String _userName;
  String _phoneNumber;
  String _smsCode;
  String _assurePassword;
  bool _registerBtnHighLightFlag = false;
  bool _loginBtnHighLightFlag = false;

  @override
  void initState() {
    super.initState();
  }

  SizedBox verticalSizedBox(double heightValue) {
    return SizedBox(
      height: heightValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    double _verticalGapH = 20.0;
    double _topVerticalH = 40.0;
    double _phoneNumberW = 280.0;
    double _btnWidth = 150.0;
    double _btnH = 44.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            verticalSizedBox(_topVerticalH),
            TextField(
              onChanged: (String userName) {
                _userName = userName;
              },
              decoration: InputDecoration(
                hintText: '请输入用户名',
              ),
            ),
            verticalSizedBox(_verticalGapH),
            Row(
              children: <Widget>[
                SizedBox(
                  width: _phoneNumberW,
                  child: TextField(
                    onChanged: (String phoneNum) {
                      _phoneNumber = phoneNum;
                    },
                    decoration: InputDecoration(
                      hintText: '请输入手机号',
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      '获取验证码',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            verticalSizedBox(_verticalGapH),
            TextField(
              onEditingComplete: () {},
              onChanged: (String smscode) {
                _smsCode = smscode;
              },
              decoration: InputDecoration(
                hintText: '请输入短信验证码',
              ),
            ),
            verticalSizedBox(_verticalGapH),
            TextField(
              onEditingComplete: () {},
              onChanged: (String assurePwd) {
                _assurePassword = assurePwd;
              },
              decoration: InputDecoration(
                hintText: '请确认密码',
              ),
            ),
            verticalSizedBox(_verticalGapH),
            Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(),
                ),
                SizedBox(
                  width: _btnWidth,
                  height: _btnH,
                  child: GestureDetector(
                    onTapDown: (TapDownDetails downDetails) {
                      // 可以处理按钮高亮状态
                      setState(() {
                        _registerBtnHighLightFlag = !_registerBtnHighLightFlag;
                      });
                    },
                    onTapUp: (TapUpDetails upDetails) {
                      // 可以处理按钮恢复到Normal状态
                      setState(() {
                        _registerBtnHighLightFlag = !_registerBtnHighLightFlag;
                      });
                    },
                    onTap: () {
                      // String _userRegisterInfoString = '''
                      // userName：$_userName
                      // phoneNumber: $_phoneNumber
                      // password: $_password
                      // assurePassword: $_assurePassword
                      // ''';
                      // BotToast.showText(text: 'text');
                      print('userName：$_userName');
                      print('phoneNumber：$_phoneNumber');
                      print('smsCode：$_smsCode');
                      print('assurePassword：$_assurePassword');
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: _registerBtnHighLightFlag
                            ? Colors.blue[600]
                            : Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          '注册',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                SizedBox(
                  width: _btnWidth,
                  height: _btnH,
                  child: GestureDetector(
                    onTapDown: (TapDownDetails downDetails) {
                      // 可以处理按钮高亮状态
                      setState(() {
                        _loginBtnHighLightFlag = !_loginBtnHighLightFlag;
                      });
                    },
                    onTapUp: (TapUpDetails upDetails) {
                      // 可以处理按钮恢复到Normal状态
                      setState(() {
                        _loginBtnHighLightFlag = !_loginBtnHighLightFlag;
                      });
                    },
                    onTap: () {
                      print('userName：$_userName');
                      print('phoneNumber：$_phoneNumber');
                      print('smsCode：$_smsCode');
                      print('assurePassword：$_assurePassword');
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: _loginBtnHighLightFlag
                            ? Colors.blue[600]
                            : Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          '已有账号，去登录',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
