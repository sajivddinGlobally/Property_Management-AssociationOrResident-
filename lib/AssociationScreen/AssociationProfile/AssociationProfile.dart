import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationAddResident/AddResidentScreen.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationAuditReport/AssociationReport.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationCalender/AssociationCalender.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationNotification/Notificaion.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationProfile/AssociationChangePassword.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationProfile/AssociationEditProfile.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationImportantAlertsScreen/ImportantAlertsScreen.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';
import 'package:svg_flutter/svg.dart';

class AssociationProfile extends StatefulWidget {
  const AssociationProfile({super.key});

  @override
  State<AssociationProfile> createState() => _AssociationProfileState();
}

class _AssociationProfileState extends State<AssociationProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldBg,
        titleSpacing: 20.w,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MY PROFILE",
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff292832),
                    letterSpacing: -0.64,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Manage your personal information",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(42, 41, 51, 0.6),
                    letterSpacing: -0.24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 22.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.4),
                  border: Border.all(color: Color(0xFF101C16), width: 1.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/profile (2).png",
                      width: 70.w,
                      height: 70.h,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "MD Sajiv",
                      style: GoogleFonts.outfit(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "sajiv@gmail.com",
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        border: Border.all(
                          color: Color(0xFF000000),
                          width: 1.w,
                        ),
                      ),
                      child: Text(
                        "ASSOCIATION HEAD",
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              Text(
                "Personal Information",
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.heading),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    _documentRow(title: "Full Name", value: "Md Sajiv"),
                    _documentRow(
                      title: "Email Address",
                      value: "sajiv@gmail.com",
                    ),
                    _documentRow(
                      title: "Phone Number",
                      value: "+91 98XXXXXX42",
                    ),
                    _documentRow(
                      title: "Account Type",
                      value: "ASSOCIATION HEAD",
                      showBottomBorder: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 15.h),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.heading),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/SvgImage/proAparment.svg",
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Association",
                              style: GoogleFonts.outfit(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                              ),
                            ),
                            Text(
                              "Greenview Residency",
                              style: GoogleFonts.outfit(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF101C16),
                                letterSpacing: -0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Divider(color: Color(0xFFC6C6C6)),
                    SizedBox(height: 6.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Role
                        Expanded(
                          child: _associationInfoItem(
                            title: "Role",
                            value: "Association Head",
                          ),
                        ),

                        // Total Units
                        Expanded(
                          child: _associationInfoItem(
                            title: "Total Units",
                            value: "128",
                          ),
                        ),

                        // Blocks
                        Expanded(
                          child: _associationInfoItem(
                            title: "Blocks",
                            value: "04",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Account Settings",
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101C16),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 11.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.heading),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h),
                    _accountSettingTab(
                      image: "assets/SvgImage/editicon.svg",
                      name: "Edit Profile",
                      title: "Update your personal information",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AssociationEditProfile(),
                          ),
                        );
                      },
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/icons8-lock.svg",
                      name: "Security & Password",
                      title: "Manage password and account security",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AssociationChangePassword(),
                          ),
                        );
                      },
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/audit.svg",
                      name: "Audit Reports",
                      title: "Audit Reports history",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AssociationReport(),
                          ),
                        );
                      },
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/add.svg",
                      name: "Add Resident ",
                      title: "All Resident add/List",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Addresidentscreen(),
                          ),
                        );
                      },
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/history.svg",
                      name: "Maintenance History",
                      title: "Audit Reports history",
                      callback: () {},
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/history.svg",
                      name: "Add Event/Meeting",
                      title: "Association Calendar · Green Valley",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Associationcalender(),
                          ),
                        );
                      },
                    ),
                    Divider(color: Color.fromRGBO(42, 41, 51, 0.6)),
                    _accountSettingTab(
                      image: "assets/SvgImage/notifi.svg",
                      name: "Notifications",
                      title: "Manage property notification preferences",
                      callback: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Notificaion(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _documentRow({
    required String title,
    required String value,
    bool showBottomBorder = true,
  }) {
    return SizedBox(
      height: 45.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                border: showBottomBorder
                    ? const Border(
                        bottom: BorderSide(color: Color(0xFFC8C8C1), width: 1),
                      )
                    : null,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(42, 41, 51, 0.6),
                  letterSpacing: -0.24,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              border: showBottomBorder
                  ? const Border(
                      bottom: BorderSide(color: Color(0xFFC8C8C1), width: 1),
                    )
                  : null,
            ),
            alignment: Alignment.centerRight,
            child: Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: GoogleFonts.outfit(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.heading,
                letterSpacing: -0.24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _accountSettingTab({
    required String image,
    required String name,
    required String title,
    required VoidCallback callback,
  }) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.only(
          left: 13.w,
          right: 13.w,
          top: 10.h,
          bottom: 8.h,
        ),
        child: Row(
          children: [
            Container(
              width: 37.w,
              height: 37.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.r),
                border: Border.all(color: Color(0xFF000000), width: 1.w),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            SizedBox(width: 11.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.outfit(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                    letterSpacing: -0.2,
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.outfit(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF2A2933),
              size: 18.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _associationInfoItem({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }
}
