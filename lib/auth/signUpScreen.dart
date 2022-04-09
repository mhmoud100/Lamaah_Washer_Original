import 'package:animator/animator.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:my_cab_driver/constance/constance.dart';
import 'package:my_cab_driver/auth/phoneAuthScreen.dart';
import 'package:my_cab_driver/Language/appLocalizations.dart';

import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var appBarheight = 0.0;
  String countryCode = "+971";
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordconfirmController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  // Country _selectedDialogCountry = CountryPickerUtils.getCountryByIsoCode('IN');

  @override
  Widget build(BuildContext context) {
    appBarheight = AppBar().preferredSize.height + MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 14, left: 14),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height:20,
                    ),
                    Card(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: <Widget>[
                                Animator<Offset>(
                                  tween: Tween<Offset>(
                                    begin: Offset(0, 0.4),
                                    end: Offset(0, 0),
                                  ),
                                  duration: Duration(milliseconds: 700),
                                  cycles: 1,
                                  builder: (context, animate, _) => SlideTransition(
                                    position: animate.animation,
                                    child: Image.asset(
                                      ConstanceData.splashBackground,
                                      fit: BoxFit.cover,
                                      color: Colors.white.withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of('Sign Up'),
                                            style: Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: ConstanceData.secoundryFontColor,
                                                ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              AppLocalizations.of(' With'),
                                              style: Theme.of(context).textTheme.headline5!.copyWith(
                                                    color: ConstanceData.secoundryFontColor,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of('email and phone'),
                                            style: Theme.of(context).textTheme.headline5!.copyWith(
                                                  color: ConstanceData.secoundryFontColor,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of('number'),
                                            style: Theme.of(context).textTheme.headline5!.copyWith(
                                                  color: ConstanceData.secoundryFontColor,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Theme.of(context).dividerColor),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextFormField(
                                    autofocus: false,
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                          color: Theme.of(context).textTheme.headline6!.color,
                                        ),
                                    keyboardType: TextInputType.text,
                                    controller: _nameController,
                                    decoration: InputDecoration(
                                      hintText: 'User Name',
                                      prefixIcon: Icon(
                                        Icons.account_circle_rounded,
                                        size: 20,
                                        color: Theme.of(context).textTheme.headline6!.color,
                                      ),
                                      hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                            color: Theme.of(context).dividerColor,
                                          ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Theme.of(context).dividerColor),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextFormField(
                                    autofocus: false,
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context).textTheme.headline6!.color,
                                    ),
                                    keyboardType: TextInputType.text,
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      hintText: 'name@example.com',
                                      prefixIcon: Icon(
                                        Icons.email,
                                        size: 20,
                                        color: Theme.of(context).textTheme.headline6!.color,
                                      ),
                                      hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                        color: Theme.of(context).dividerColor,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Theme.of(context).dividerColor),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextFormField(
                                    autofocus: false,
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context).textTheme.headline6!.color,
                                    ),
                                    keyboardType: TextInputType.text,
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      hintText: 'Password must be at least 6 chars',
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 20,
                                        color: Theme.of(context).textTheme.headline6!.color,
                                      ),
                                      hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                        color: Theme.of(context).dividerColor,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Theme.of(context).dividerColor),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextFormField(
                                    autofocus: false,
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context).textTheme.headline6!.color,
                                    ),
                                    keyboardType: TextInputType.text,
                                    controller: _passwordconfirmController,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm Password',
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 20,
                                        color: Theme.of(context).textTheme.headline6!.color,
                                      ),
                                      hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                        color: Theme.of(context).dividerColor,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Theme.of(context).dividerColor),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 86,
                                        child: SizedBox(
                                            width: 80,
                                            height: 60,
                                            child: Center(
                                              child: CountryPickerDropdown(
                                                onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                                                onValuePicked: (Country country) {
                                                  print("${country.name}");
                                                  countryCode = "${country.phoneCode}";
                                                },
                                                itemBuilder: (Country country) {
                                                  return Row(
                                                    children: <Widget>[
                                                      CountryPickerUtils.getDefaultFlagImage(country),
                                                      Expanded(
                                                        child: Text(
                                                          '  +${country.phoneCode}',
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                                itemHeight: null,
                                                isExpanded: true,
                                                icon: SizedBox(),
                                              ),
                                            )),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                color: Theme.of(context).textTheme.headline6!.color,
                                              ),
                                          keyboardType: TextInputType.number,
                                          controller: _phoneController,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(bottom: 8),
                                            hintText: AppLocalizations.of('Mobile Number'),
                                            hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                  color: Theme.of(context).dividerColor,
                                                ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PhoneVerification(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme.of(context).textTheme.headline6!.color,
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppLocalizations.of('SIGN UP'),
                                        style: Theme.of(context).textTheme.button!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).scaffoldBackgroundColor,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of('Already have an account?'),
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                        ),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(' Sign In'),
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Theme.of(context).textTheme.headline6!.color,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget _selectedCountry(Country country) => Center(
  //       child: Padding(
  //         padding: const EdgeInsets.only(bottom: 16),
  //         child: Row(
  //           children: <Widget>[
  //             SizedBox(
  //               child: CountryPickerUtils.getDefaultFlagImage(country),
  //               height: 20,
  //               width: 24,
  //             ),
  //             SizedBox(
  //               width: 6,
  //             ),
  //             Icon(
  //               Icons.keyboard_arrow_down,
  //               color: Colors.black,
  //             )
  //           ],
  //         ),
  //       ),
  //     );

  // _openCountryPickerDialog() => showDialog(
  //       context: context,
  //       builder: (context) => CountryPickerDialog(
  //           searchCursorColor: Theme.of(context).primaryColor,
  //           searchInputDecoration: InputDecoration(hintText: 'Search...'),
  //           isSearchable: true,
  //           title: Text(
  //             'Select your phone code',
  //             style: Theme.of(context).textTheme.bodyText2.copyWith(
  //                   color: Theme.of(context).textTheme.headline6.color,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //           ),
  //           onValuePicked: (Country country) => setState(
  //                 () => _selectedDialogCountry = country,
  //               ),
  //           itemBuilder: _buildDialogItem),
  //     );

  // Widget _buildDialogItem(Country country) => Row(
  //       children: <Widget>[
  //         CountryPickerUtils.getDefaultFlagImage(country),
  //         SizedBox(width: 8.0),
  //         Expanded(
  //           child: Text(
  //             getCountryString(country.name),
  //           ),
  //         ),
  //         Container(
  //           child: Text(
  //             "+${country.phoneCode}",
  //             textAlign: TextAlign.end,
  //           ),
  //         ),
  //       ],
  //     );

  String getCountryString(String str) {
    var newString = '';
    var isFirstdot = false;
    for (var i = 0; i < str.length; i++) {
      if (isFirstdot == false) {
        if (str[i] != ',') {
          newString = newString + str[i];
        } else {
          isFirstdot = true;
        }
      }
    }
    return newString;
  }
}
