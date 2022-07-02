import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/evalution_form/check_box_settings.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController healController = TextEditingController();
  TextEditingController conditionController = TextEditingController();
  TextEditingController changedController = TextEditingController();
  TextEditingController digestionController = TextEditingController();
  TextEditingController specialDietController = TextEditingController();
  TextEditingController foodAllergyController = TextEditingController();
  TextEditingController intoleranceController = TextEditingController();
  TextEditingController cravingsController = TextEditingController();
  TextEditingController dislikeFoodController = TextEditingController();
  TextEditingController goToBedController = TextEditingController();
  TextEditingController wakeUpController = TextEditingController();
  TextEditingController exerciseController = TextEditingController();
  TextEditingController stoolsController = TextEditingController();
  TextEditingController symptomsController = TextEditingController();

  String selectedValue = "";
  String selectedValue1 = "";
  String selectedValue2 = "";
  String selectedValue3 = "";
  String selectedValue4 = "";
  String selectedValue5 = "";
  String selectedValue6 = "";
  String selectedValue7 = "";
  String selectedValue8 = "";
  String selectedValue9 = "";
  String selectedValue10 = "";
  String selectedValue11 = "";
  String selectedValue12 = "";
  String selectedValue13 = "";
  String selectedValue14 = "";
  String selectedValue15 = "";
  String selectedValue16 = "";
  String selectedValue17 = "";
  String selectedValue18 = "";
  String selectedValue19 = "";
  String selectedValue20 = "";
  String selectedValue21 = "";
  String selectedValue22 = "";

  final healthCheckBox = <CheckBoxSettings>[
    CheckBoxSettings(title: "Renal Disease"),
    CheckBoxSettings(title: "Liver Disease"),
    CheckBoxSettings(title: "Diabetic"),
    CheckBoxSettings(title: "Hypertension(BP)"),
    CheckBoxSettings(title: "Hypothyroid"),
    CheckBoxSettings(title: "Migraine"),
    CheckBoxSettings(title: "Anxiety"),
    CheckBoxSettings(title: "Depression"),
    CheckBoxSettings(title: "Allergic Rhinitis"),
    CheckBoxSettings(title: "Allergic Sinusitis"),
    CheckBoxSettings(title: "Severe Constipation"),
    CheckBoxSettings(title: "Irritable bowel syndrome(IBS)"),
    CheckBoxSettings(title: "Hemorrhoids"),
    CheckBoxSettings(title: "Inflammatory bowel disease"),
    CheckBoxSettings(title: "Asthma"),
    CheckBoxSettings(title: "Dyslipidemia(High Cholesterol)"),
    CheckBoxSettings(title: "PCOD/PCOS(Women Only)"),
  ];

  final foodCheckBox = [
    CheckBoxSettings(title: "North Indian"),
    CheckBoxSettings(title: "South Indian"),
    CheckBoxSettings(title: "Continental"),
    CheckBoxSettings(title: "Mediterranean"),
  ];

  final sleepCheckBox = [
    CheckBoxSettings(title: "I Toss& Turn Alot In Bed"),
    CheckBoxSettings(title: "I Get The Feeling Refreshed"),
    CheckBoxSettings(title: "I Have Difficulty Falling Asleep"),
    CheckBoxSettings(title: "I Sleep Deep"),
    CheckBoxSettings(title: "I Wake Up Feeling Heavy"),
  ];

  final lifeStyleCheckBox = [
    CheckBoxSettings(title: "Drugs"),
    CheckBoxSettings(title: "Cigarettes"),
    CheckBoxSettings(title: "Alcohol"),
    CheckBoxSettings(title: "Others"),
    CheckBoxSettings(title: "None"),
  ];

  final gutTypeCheckBox = [
    CheckBoxSettings(title: "Dry Mouth"),
    CheckBoxSettings(title: "Astringent/Pungent/Sour Taste In The Mouth"),
    CheckBoxSettings(title: "Severe Thrist"),
    CheckBoxSettings(title: "Burning Sensation In Your Chest"),
    CheckBoxSettings(title: "Acid Reflux/Belching/Acidic Regurgitation"),
    CheckBoxSettings(title: "Severe Sweet Cravings In The Evening/Night"),
    CheckBoxSettings(title: "Bad Breathe"),
    CheckBoxSettings(title: "Chest Burning With Nausia"),
    CheckBoxSettings(title: "Heavy Stomach"),
    CheckBoxSettings(title: "Bloating"),
    CheckBoxSettings(title: "A Lot Of Salivation"),
    CheckBoxSettings(title: "Sweet/Salty/Sour Taste In Your Mouth"),
    CheckBoxSettings(title: "Severe Bitter craving During The Day"),
    CheckBoxSettings(title: "Dryness In The Mouth Inspite Of Salivation"),
    CheckBoxSettings(title: "Gassiness"),
    CheckBoxSettings(title: "Gurgling Noise In Your Tummy"),
    CheckBoxSettings(title: "Hypersalivation While Feeling Nauseous"),
    CheckBoxSettings(
        title: "Cannot Start My Day Without A Hot Beverage Once I'm Up"),
    CheckBoxSettings(title: "None Of The Above"),
    CheckBoxSettings(title: "None"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildAppBar(() {
                    Navigator.pop(context);
                  }),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Gut Wellness Club \nEvaluation Form",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        color: Colors.white,
                        fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2, color: Colors.grey.withOpacity(0.5))
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      buildPersonalDetails(),
                      buildHealthDetails(),
                      buildFoodHabitsDetails(),
                      buildSleepDetails(),
                      buildLifeStyleDetails(),
                      buildGutTypeDetails(),
                      Center(
                        child: CommonButton.sendButton(() {
                          Navigator.pop(context);
                        }, "Submit"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildPersonalDetails() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Personal Details",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        color: kPrimaryColor,
                        fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Text(
                "Let Us Know You Better",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "PoppinsRegular",
                    color: kTextColor,
                    fontSize: 9.sp),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            'Full Name:*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: nameController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Name';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Name';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", nameController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Marital Status:*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Radio(
                value: "Single",
                activeColor: kPrimaryColor,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              ),
              Text(
                'Single',
                style: buildTextStyle(),
              ),
              SizedBox(
                width: 3.w,
              ),
              Radio(
                value: "Married",
                activeColor: kPrimaryColor,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              ),
              Text(
                'Married',
                style: buildTextStyle(),
              ),
              SizedBox(
                width: 3.w,
              ),
              Radio(
                  value: "Separated",
                  groupValue: selectedValue,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  }),
              Text(
                "Saparated",
                style: buildTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Phone Number*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: mobileController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Phone Number';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Phone Number';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", mobileController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Email ID-*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: emailController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Email ID';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Email ID';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", emailController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Age*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: ageController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Age';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Age';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", ageController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Gender:*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Radio(
                value: "Male",
                activeColor: kPrimaryColor,
                groupValue: selectedValue1,
                onChanged: (value) {
                  setState(() {
                    selectedValue1 = value as String;
                  });
                },
              ),
              Text('Male', style: buildTextStyle()),
              SizedBox(
                width: 3.w,
              ),
              Radio(
                value: "Female",
                activeColor: kPrimaryColor,
                groupValue: selectedValue1,
                onChanged: (value) {
                  setState(() {
                    selectedValue1 = value as String;
                  });
                },
              ),
              Text(
                'Female',
                style: buildTextStyle(),
              ),
              SizedBox(
                width: 3.w,
              ),
              Radio(
                  value: "Other",
                  groupValue: selectedValue1,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      selectedValue1 = value as String;
                    });
                  }),
              Text(
                "Other",
                style: buildTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Full Postal Address To Deliver Your Ready To Cook Kit*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: addressController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Address';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Address';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", addressController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Pin Code*',
            style: TextStyle(
              fontSize: 9.sp,
              color: kTextColor,
              fontFamily: "PoppinsSemiBold",
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          TextFormField(
            controller: pinCodeController,
            cursorColor: kPrimaryColor,
            validator: (value) {
              if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your Pin Code';
              } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                return 'Please enter your valid Pin Code';
              } else {
                return null;
              }
            },
            decoration: CommonDecoration.buildTextInputDecoration(
                "Your answer", pinCodeController),
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }

  buildHealthDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Health",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        Text(
          "Important For Your Doctors To Know What You Have Been Through Or Are Going Through At The Moment",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontFamily: "PoppinsRegular", color: kTextColor, fontSize: 9.sp),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'Weight*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: weightController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Weight';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Weight';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", weightController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Is/Are The Main Problems You Are Here To Heal & Mention All Possible Details About When It Started, What Treatment You Have Been Through So Far & What The Conditions Is Now.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: healController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter Heal';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Heal';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", healController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Please Mention Any & All Other Medical Condition(s) & It\'s History With Treatment In Detail*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: conditionController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Condition';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Condition';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", conditionController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Please Check All That Apply To You*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...healthCheckBox.map(buildHealthCheckBox).toList(),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Has Your Weight Changed Recently? If Yes, Why?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: changedController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", changedController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildFoodHabitsDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Food Habits",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'Food Preferences*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                  value: "Veg",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue2,
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value as String;
                    });
                  },
                ),
                Text(
                  'Veg',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                  value: "Non-Veg",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue2,
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value as String;
                    });
                  },
                ),
                Text(
                  'Non-Veg',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                    value: "Mixed",
                    groupValue: selectedValue2,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    }),
                Text(
                  "Mixed",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Lacto Veg",
                    groupValue: selectedValue2,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    }),
                Text(
                  "Lacto Veg",
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                    value: "Ova Veg",
                    groupValue: selectedValue2,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    }),
                Text(
                  "Ova Veg",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Kind Of Food Do You Like?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...foodCheckBox.map(buildFoodCheckBox).toList(),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'The Taste You Enjoy*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                  value: "Sweet",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue3,
                  onChanged: (value) {
                    setState(() {
                      selectedValue3 = value as String;
                    });
                  },
                ),
                Text(
                  'Sweet',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                  value: "Sour",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue3,
                  onChanged: (value) {
                    setState(() {
                      selectedValue3 = value as String;
                    });
                  },
                ),
                Text(
                  'Sour',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                    value: "Bitter",
                    groupValue: selectedValue3,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
                      });
                    }),
                Text(
                  "Bitter",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Spicy",
                    groupValue: selectedValue3,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
                      });
                    }),
                Text(
                  "Spicy",
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                    value: "Salty",
                    groupValue: selectedValue3,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
                      });
                    }),
                Text(
                  "Salty",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Astringent",
                    groupValue: selectedValue3,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
                      });
                    }),
                const Text(
                  "Astringent ",
                  style: TextStyle(
                    color: kTextColor,
                    fontFamily: "PoppinsRegular",
                  ),
                ),
                const Text(
                  "( Taste of Dark Chocolate,Supari..)",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 12,
                    fontFamily: "PoppinsRegular",
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Number Of Meals You Have A Day*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                  value: "<2",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue4,
                  onChanged: (value) {
                    setState(() {
                      selectedValue4 = value as String;
                    });
                  },
                ),
                Text(
                  '<2',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                  value: "3-4",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue4,
                  onChanged: (value) {
                    setState(() {
                      selectedValue4 = value as String;
                    });
                  },
                ),
                Text(
                  '3-4',
                  style: buildTextStyle(),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Radio(
                    value: "5-6",
                    groupValue: selectedValue4,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue4 = value as String;
                      });
                    }),
                Text(
                  "5-6",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "More Than 6",
                  activeColor: kPrimaryColor,
                  groupValue: selectedValue4,
                  onChanged: (value) {
                    setState(() {
                      selectedValue4 = value as String;
                    });
                  },
                ),
                Text(
                  'More Than 6',
                  style: buildTextStyle(),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do Certain Food Affect Your Digestion? If So Please Provide Details.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: digestionController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", digestionController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Follow Any Special Diet(Keto,Etc)? If So Please Provide Details*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: specialDietController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", specialDietController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Any Known Food Allergy? If So Please Provide Details.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: foodAllergyController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", foodAllergyController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Any Known Intolerance? If So Please Provide Details.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: intoleranceController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", intoleranceController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Any Severe Food Cravings? If So Please Provide Details.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: cravingsController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", cravingsController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Dislike Any Food?Please Mention All Of Them*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: dislikeFoodController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", dislikeFoodController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'How Many Glasses Of Water Do You Have A Day?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "1-2",
              activeColor: kPrimaryColor,
              groupValue: selectedValue5,
              onChanged: (value) {
                setState(() {
                  selectedValue5 = value as String;
                });
              },
            ),
            Text(
              '1-2',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 3.w,
            ),
            Radio(
              value: "3-4",
              activeColor: kPrimaryColor,
              groupValue: selectedValue5,
              onChanged: (value) {
                setState(() {
                  selectedValue5 = value as String;
                });
              },
            ),
            Text(
              '3-4',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 3.w,
            ),
            Radio(
                value: "6-8",
                groupValue: selectedValue5,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue5 = value as String;
                  });
                }),
            Text(
              "6-8",
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 3.w,
            ),
            Radio(
                value: "9+",
                groupValue: selectedValue5,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue5 = value as String;
                  });
                }),
            Text(
              "9+",
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Your Water Habit*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value: "I Drink Water Before Meals",
                    groupValue: selectedValue6,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue6 = value as String;
                      });
                    }),
                Text(
                  "I Drink Water Before Meals",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "I Usually Drink Water During Meals",
                    groupValue: selectedValue6,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue6 = value as String;
                      });
                    }),
                Text(
                  "I Usually Drink Water During Meals",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "I Usually Drink Water After Meals",
                    groupValue: selectedValue6,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue6 = value as String;
                      });
                    }),
                Text(
                  "I Usually Drink Water After Meals",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Regularly Consume Meat/Poultry/Sea Food Cooked With Curd/Yoghurt/Milk (Ex.Butter Chicken)*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue7,
              onChanged: (value) {
                setState(() {
                  selectedValue7 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue7,
              onChanged: (value) {
                setState(() {
                  selectedValue7 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
                value: "Sometimes",
                groupValue: selectedValue7,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue7 = value as String;
                  });
                }),
            Text(
              "Sometimes",
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'You Tend To Have Cold Water Or Cold Beverages After Non-Veg Fat Meals/Heavy Snacks Like Samosa*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue8,
              onChanged: (value) {
                setState(() {
                  selectedValue8 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue8,
              onChanged: (value) {
                setState(() {
                  selectedValue8 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
                value: "Sometimes",
                groupValue: selectedValue8,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue8 = value as String;
                  });
                }),
            Text(
              "Sometimes",
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Eat Fruits With/Right After/Right Before Your main Course?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue9,
              onChanged: (value) {
                setState(() {
                  selectedValue9 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue9,
              onChanged: (value) {
                setState(() {
                  selectedValue9 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Fruits With Milk?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue10,
              onChanged: (value) {
                setState(() {
                  selectedValue10 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue10,
              onChanged: (value) {
                setState(() {
                  selectedValue10 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Which One Is More Apt*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value: "I Chew My Food Properly",
                    groupValue: selectedValue11,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue11 = value as String;
                      });
                    }),
                Text(
                  "I Chew My Food Properly",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "I Swallow My Food Quickly",
                    groupValue: selectedValue11,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue11 = value as String;
                      });
                    }),
                Text(
                  "I Swallow My Food Quickly",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Eat Food Even When You Are Not Hungry(Ex. Stress Eating)*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue12,
              onChanged: (value) {
                setState(() {
                  selectedValue12 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue12,
              onChanged: (value) {
                setState(() {
                  selectedValue12 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Processed Food More Than 3 Times A Week.(Ex. Chips,Biscuits,Cakes,etc)*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue13,
              onChanged: (value) {
                setState(() {
                  selectedValue13 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue13,
              onChanged: (value) {
                setState(() {
                  selectedValue13 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Have Take Out Or Eat Outside Food More Than 3 Times A Week?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue14,
              onChanged: (value) {
                setState(() {
                  selectedValue14 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue14,
              onChanged: (value) {
                setState(() {
                  selectedValue14 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildSleepDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sleep",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'What Time Do You Usually Go To Bed?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: goToBedController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Weight';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Weight';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Time - 00:00", goToBedController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Time Do You Usuallu Wake Up?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: wakeUpController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter Heal';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Heal';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Time - 00:00", wakeUpController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Does Your Sleep Look Like?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...sleepCheckBox.map(buildSleepCheckBox).toList(),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Your Sleep Cycle Is*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Regular",
              activeColor: kPrimaryColor,
              groupValue: selectedValue15,
              onChanged: (value) {
                setState(() {
                  selectedValue15 = value as String;
                });
              },
            ),
            Text(
              'Regular',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "Irregular",
              activeColor: kPrimaryColor,
              groupValue: selectedValue15,
              onChanged: (value) {
                setState(() {
                  selectedValue15 = value as String;
                });
              },
            ),
            Text(
              'Irregular',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'How Many Hours Of Sleep Do You Get In A Day (Average Over A Week)*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "5 Or Less",
              activeColor: kPrimaryColor,
              groupValue: selectedValue16,
              onChanged: (value) {
                setState(() {
                  selectedValue16 = value as String;
                });
              },
            ),
            Text(
              '5 Or Less',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "6-8",
              activeColor: kPrimaryColor,
              groupValue: selectedValue16,
              onChanged: (value) {
                setState(() {
                  selectedValue16 = value as String;
                });
              },
            ),
            Text(
              '6-8',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildLifeStyleDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Life Style",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'Your Thoughts*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value:
                        "My Past,Future & External Environment Affects Me At Time But I Bounce Back Quick & Don't Brood",
                    groupValue: selectedValue17,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue17 = value as String;
                      });
                    }),
                Text(
                  "My Past,Future & External Environment Affects Me \nAt Time But I Bounce Back Quick & Don't Brood",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value:
                        "Spend A Lot Of Time Thinking About My Past,Future & External Evnironment",
                    groupValue: selectedValue17,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue17 = value as String;
                      });
                    }),
                Text(
                  "Spend A Lot Of Time Thinking About My Past,\nFuture & External Evnironment",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value:
                        "I Take Life As It Comes, Don't Dwell Much On My Past,Future Or External Factors",
                    groupValue: selectedValue17,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue17 = value as String;
                      });
                    }),
                Text(
                  "I Take Life As It Comes, Don't Dwell Much On \nMy Past,Future Or External Factors",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Would You Say You Have Been More Unhappy Than Happy Over The Last Few Months?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue18,
              onChanged: (value) {
                setState(() {
                  selectedValue18 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue18,
              onChanged: (value) {
                setState(() {
                  selectedValue18 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Consume Any Of The Followimg? Pick All That Apply.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...lifeStyleCheckBox.map(buildLifeStyleCheckBox).toList(),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Like The Digital Life More Than Your Family/Friend Time?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Yes",
              activeColor: kPrimaryColor,
              groupValue: selectedValue19,
              onChanged: (value) {
                setState(() {
                  selectedValue19 = value as String;
                });
              },
            ),
            Text(
              'Yes',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "No",
              activeColor: kPrimaryColor,
              groupValue: selectedValue19,
              onChanged: (value) {
                setState(() {
                  selectedValue19 = value as String;
                });
              },
            ),
            Text(
              'No',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Do You Exercise? If So Please Mention Details.*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: exerciseController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", exerciseController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildGutTypeDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Gut Type",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'What Is Your Preference Past A Meal*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value: "Eat Something Sweet Within 2 Hours Of Your Meal",
                    groupValue: selectedValue20,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue20 = value as String;
                      });
                    }),
                Text(
                  "Eat Something Sweet Within 2 Hours Of Your Meal",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value:
                        "Have Something Bitter Or Astringent Within 1 Hour Of Your Meal",
                    groupValue: selectedValue20,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue20 = value as String;
                      });
                    }),
                Text(
                  "Have Something Bitter Or Astringent Within \n1 Hour Of Your Meal",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "To Have A Hot Drink Within An Hour Of A Meal",
                    groupValue: selectedValue20,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue20 = value as String;
                      });
                    }),
                Text(
                  "To Have A Hot Drink Within An Hour Of A Meal",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "None",
                    groupValue: selectedValue20,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue20 = value as String;
                      });
                    }),
                Text(
                  "None",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Does Hunger Look Like For You?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value: "Intense But Small Portions Frequently.",
                    groupValue: selectedValue21,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue21 = value as String;
                      });
                    }),
                Text(
                  "Intense But Small Portions Frequently.",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Intense But Large Portions A Few Times",
                    groupValue: selectedValue21,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue21 = value as String;
                      });
                    }),
                Text(
                  "Intense But Large Portions A Few Times",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "Not So Intense & Small Portions Multiple Times",
                    groupValue: selectedValue21,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue21 = value as String;
                      });
                    }),
                Text(
                  "Not So Intense & Small Portions Multiple Times",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "Not So Intense But Large Portions A Few Times",
                    groupValue: selectedValue21,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue21 = value as String;
                      });
                    }),
                Text(
                  "Not So Intense But Large Portions A Few Times",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Stools*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Radio(
                    value: "Watery Stool",
                    groupValue: selectedValue22,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue22 = value as String;
                      });
                    }),
                Text(
                  "Watery Stool",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Constipated With Dry/Hard Stool",
                    groupValue: selectedValue22,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue22 = value as String;
                      });
                    }),
                Text(
                  "Constipated With Dry/Hard Stool",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "Well Formed Stool",
                    groupValue: selectedValue22,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue22 = value as String;
                      });
                    }),
                Text(
                  "Well Formed Stool",
                  style: buildTextStyle(),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                    value: "Others",
                    groupValue: selectedValue22,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        selectedValue22 = value as String;
                      });
                    }),
                Text(
                  "Others",
                  style: buildTextStyle(),
                ),
              ],
            ),
          ],
        ),
        TextFormField(
          controller: stoolsController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Condition';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Condition';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", stoolsController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Any Other Gut Symptoms? Pick All That Apply*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...gutTypeCheckBox.map(buildGutTypeCheckBox).toList(),
          ],
        ),
        TextFormField(
          controller: symptomsController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Changed';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Changed';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Your answer", symptomsController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildHealthCheckBox(CheckBoxSettings healthCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: healthCheckBox.value,
        onChanged: (v) {
          setState(() {
            healthCheckBox.value = v;
          });
        },
      ),
      title: Text(
        healthCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }

  buildFoodCheckBox(CheckBoxSettings foodCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: foodCheckBox.value,
        onChanged: (v) {
          setState(() {
            foodCheckBox.value = v;
          });
        },
      ),
      title: Text(
        foodCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }

  buildSleepCheckBox(CheckBoxSettings sleepCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: sleepCheckBox.value,
        onChanged: (v) {
          setState(() {
            sleepCheckBox.value = v;
          });
        },
      ),
      title: Text(
        sleepCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }

  buildLifeStyleCheckBox(CheckBoxSettings lifeStyleCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: lifeStyleCheckBox.value,
        onChanged: (v) {
          setState(() {
            lifeStyleCheckBox.value = v;
          });
        },
      ),
      title: Text(
        lifeStyleCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }

  buildGutTypeCheckBox(CheckBoxSettings gutTypeCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: gutTypeCheckBox.value,
        onChanged: (v) {
          setState(() {
            gutTypeCheckBox.value = v;
          });
        },
      ),
      title: Text(
        gutTypeCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }
}
