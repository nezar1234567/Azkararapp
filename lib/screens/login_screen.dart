import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  bool _obscureText = true;
  String?  _emailError;
  String?  _passwordError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            Text('Enter email & password',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black38,
              ),
            ),
            SizedBox(height: 22),
            TextField(
              controller: _emailTextController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black45,
              ),
              //****************************

              //****************************
              onChanged: (value) => print(value),
              onSubmitted: (value) => print(value),
              onTap: () => print('ddddddddddd'),
              autofocus: true,

              //****************************
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.words,
              //********************
              showCursor: true,
              cursorHeight: 30,
              cursorWidth: 5,
              cursorColor: Colors.pink,
              cursorRadius: Radius.circular(10),
              //********************
              enabled: true,
              readOnly: false,
              //********************************
              minLines: null,
              maxLines: null,
              expands: true,
              //********************************
              // maxLength: 30,
              buildCounter: (
              context, {
                required int currentLength,
                required bool isFocused,
                maxLength,
              }) {
                return null;
                // int remain = maxLength! - currentLength;
                // return Text(remain.toString());
              },
              //********************
              decoration: InputDecoration(
                errorText: _emailError,
                contentPadding:EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight:_emailError == null ? 50 : 70),
                // counter:  Text('dsdsada'),
                // counterText: 'ddddddddd',
                hintText: 'Email address',
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                hintTextDirection: TextDirection.ltr,
                helperMaxLines: 1,
                // alignLabelWithHint: true,
                // prefixIcon: Icon(Icons.email)
                //***************************
                // labelText: 'Email',
                // labelStyle: TextStyle(
                //   fontWeight: FontWeight.w300),
                // floatingLabelAlignment: FloatingLabelAlignment.start,
                // floatingLabelBehavior: FloatingLabelBehavior.never,
                // floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                //********************************
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Colors.pink,
                // prefixText: 'std-',
                // prefix: Text('std-')
                //********************************
                // suffix: Icon(Icons.check),
                // suffixText: '@ucas.ede.ps',
                // suffix: Text('@ucas.ede.ps'),
                //********************************
                // icon: Icon(Icons.email),
                //********************************
                // helperText: 'Enter your Email',
                // hintMaxLines: 1,
                // helperStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.pink),

                //********************************
                // fillColor: Colors.blue.shade100,
                // filled: true,
                //********************************
                // border: InputBorder.none,
                // border: UnderlineInputBorder(),
                // border: OutlineInputBorde  r(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                //********************
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade400,
                  width: 2,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,

                  ),
                ),
                //********************************
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  )
                ),
                //********************************
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  )
                ),


              ),
            ),
            SizedBox(height: 11),

            TextField(
              controller: _passwordTextController,
              keyboardType: TextInputType.phone,
              obscureText: _obscureText,
              obscuringCharacter: '*',
              // minLines: null,
              // maxLines: null,
              decoration: InputDecoration(
                errorText: _passwordError,
                constraints: BoxConstraints(maxHeight: _passwordError == null ?  50 : 70),
                contentPadding:EdgeInsets.zero,
                hintText: 'Password',
                errorMaxLines: 1,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(onPressed: () {
                  setState(() => _obscureText = !_obscureText);
                },
                icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green.shade400,
                  ),
                  //********************************
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink.shade400,
                    ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,

                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _performlogin(),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10,
                disabledBackgroundColor: Colors.black38,
                minimumSize: Size(double.infinity,50),
                backgroundColor: Colors.teal.shade400,
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
  void _performlogin() {
    if(_checkData()){
      _login();
    }
  }

  bool _checkData() {
    setState(() {
      _emailError = _emailTextController.text.isEmpty ? "enter email" : null;
      _passwordError = _passwordTextController.text.isEmpty ? "enter password" : null;
    });
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }


    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Enter Data'),
                backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          duration: Duration(seconds: 3),
          onVisible: () => print('object'),
          showCloseIcon: true,
          closeIconColor: Colors.yellow,
          dismissDirection: DismissDirection.horizontal,
          action: SnackBarAction(
            onPressed: () {},
          label: 'UUUUUU',
           textColor: Colors.yellow,
          ),
        ),
    );
    return false;
  }
  void _login() {
    Navigator.pushReplacementNamed(context,'/bn_screen');
  }

}
