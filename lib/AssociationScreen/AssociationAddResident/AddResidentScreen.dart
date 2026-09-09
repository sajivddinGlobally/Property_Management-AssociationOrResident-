import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationResidentListScreen/ResidentListScreen.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class Addresidentscreen extends StatefulWidget {
  const Addresidentscreen({super.key});

  @override
  State<Addresidentscreen> createState() => _AddresidentscreenState();
}

class _AddresidentscreenState extends State<Addresidentscreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  bool associationAgreeTerms = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController associationController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController apartmentController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    associationController.dispose();
    locationController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.h),
        child: AppBar(
          backgroundColor: AppColors.scaffoldBg,
          automaticallyImplyLeading: false,
          elevation: 0,
          surfaceTintColor: Colors.transparent,

          titleSpacing: 0,

          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 41.w,
                    height: 41.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(16, 28, 22, 0.3),
                      ),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: const Color(0xff101C16),
                      size: 16.sp,
                    ),
                  ),
                ),

                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Resident",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff292832),
                          letterSpacing: -0.64,
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Text(
                        "All Resident Information",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(42, 41, 51, 0.6),
                          letterSpacing: -0.24,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => Residentlistscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Resident List",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffB8860B),
                      fontSize: 14.sp,
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(14.w, 14.h, 14.w, 16.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF101C16),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ACCOUNT INFORMATION",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF101C16),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    fieldLabel("FULL NAME"),
                    customTextField(
                      controller: nameController,
                      hintText: "Enter Your Full Name",
                    ),

                    SizedBox(height: 10.h),

                    fieldLabel("EMAIL ADDRESS"),
                    customTextField(
                      controller: emailController,
                      hintText: "Enter Your Email Address",
                      keyboardType: TextInputType.emailAddress,
                    ),

                    SizedBox(height: 10.h),

                    fieldLabel("MOBILE NUMBER"),
                    customTextField(
                      controller: mobileController,
                      hintText: "Enter Your Mobile Number",
                      keyboardType: TextInputType.phone,
                    ),

                    SizedBox(height: 10.h),

                    fieldLabel("PASSWORD"),
                    customTextField(
                      controller: passwordController,
                      hintText: "Current Password",
                      obscureText: !isPasswordVisible,
                      showVisibilityIcon: true,
                      onVisibilityTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),

                    SizedBox(height: 10.h),

                    fieldLabel("CONFIRM PASSWORD"),
                    customTextField(
                      controller: confirmPasswordController,
                      hintText: "Confirm Your Password",
                      obscureText: !isConfirmPasswordVisible,
                      showVisibilityIcon: true,
                      onVisibilityTap: () {
                        setState(() {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
                        });
                      },
                    ),

                    SizedBox(height: 16.h),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 27.w,
                          height: 27.w,
                          child: Checkbox(
                            value: associationAgreeTerms,
                            onChanged: (value) {
                              setState(() {
                                associationAgreeTerms = value ?? false;
                              });
                            },
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(
                              color: Color(0xFF101C16),
                              width: 1,
                            ),
                          ),
                        ),

                        SizedBox(width: 8.w),

                        Expanded(
                          child: Text(
                            "I agree to the Terms & Conditions and Privacy Policy.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF101C16),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15.h),

                    SizedBox(
                      width: double.infinity,
                      height: 40.h,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => Residentloginscreen(),
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF101C16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                        child: Text(
                          "Create Account",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField({
    required TextEditingController controller,
    required String hintText,
    TextInputType? keyboardType,
    bool obscureText = false,
    VoidCallback? onVisibilityTap,
    bool showVisibilityIcon = false,
  }) {
    return SizedBox(
      height: 44.h,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: GoogleFonts.outfit(
          fontSize: 17.sp,
          color: const Color(0xff101C16),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.outfit(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.6),
            letterSpacing: -0.3,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
          suffixIcon: showVisibilityIcon
              ? InkWell(
                  onTap: onVisibilityTap,
                  child: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 18.sp,
                    color: const Color(0xFF000000),
                  ),
                )
              : null,
          // ⭐ IMPORTANT
          suffixIconConstraints: BoxConstraints(
            minHeight: 44.h,
            maxHeight: 44.h,
            minWidth: 44.w,
            maxWidth: 44.w,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.w),
          ),
        ),
      ),
    );
  }

  Widget fieldLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFF000000),
          letterSpacing: -0.3,
        ),
      ),
    );
  }
}
