import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationDocument/AssociationDocument.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationHome/AssociationComplexInfo.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationNotification/Notificaion.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationProfile/AssociationProfile.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationProperty/AssociationProperty.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationServiceRequest/ServiiceRequest.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociatoinComplaint/Complaint.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class AssociationBottomNavBar extends StatefulWidget {
  const AssociationBottomNavBar({super.key});

  @override
  State<AssociationBottomNavBar> createState() =>
      _AssociationBottomNavBarState();
}

class _AssociationBottomNavBarState extends State<AssociationBottomNavBar> {
  int selectedBottomIndex = 0;

  final List<Widget> pages = [
    AssociationHome(),
    AssociationProperty(),
    ServiiceRequest(),
    AssociationDocument(),
    AssociationProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: pages[selectedBottomIndex],
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          height: 70.h,
          decoration: BoxDecoration(
            color: Color(0xFFFFFCEB),
            border: Border(
              top: BorderSide(color: const Color(0xFF17221D), width: 1.w),
            ),
          ),
          child: Row(
            children: [
              _bottomItem(
                index: 0,
                image: "assets/bottam_img.png",
                title: "Home",
              ),

              _bottomItem(
                index: 1,
                image: "assets/bottom_img2.png",
                title: "Property",
              ),

              _bottomItem(
                index: 2,
                image: "assets/bottom_img3.png",
                title: "Services",
              ),

              _bottomItem(
                index: 3,
                image: "assets/bottom_img4.png",
                title: "Documents",
              ),

              _bottomItem(
                index: 4,
                image: "assets/bottom_img5.png",
                title: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomItem({
    required int index,
    required String image,
    required String title,
  }) {
    final bool isSelected = selectedBottomIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedBottomIndex = index;
          });
        },
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedScale(
                scale: isSelected ? 1.08 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Image.asset(
                  image,
                  color: isSelected
                      ? const Color(0xff101C16)
                      : const Color(0xffA0A5A2),
                  width: 30.w,
                  height: 30.h,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: isSelected
                      ? Color(0xFF17221D)
                      : const Color(0xffA0A5A2),
                  letterSpacing: -0.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AssociationHome extends StatefulWidget {
  const AssociationHome({super.key});

  @override
  State<AssociationHome> createState() => _AssociationHomeState();
}

class _AssociationHomeState extends State<AssociationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        automaticallyImplyLeading: false,
        titleSpacing: 20.w,
        title: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(16, 28, 22, 0.6),
                    ),
                  ),
                  Text(
                    "Hello, Rahul 👋",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.heading,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Association Head",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffD5A52C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => Notificaion()),
                      );
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Color(0xffE8E5DC)),
                      ),
                      child: Icon(
                        Icons.notifications_none_rounded,
                        size: 21.sp,
                        color: Color(0xff0D241B),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.w,
                    top: -2.h,
                    child: Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: const BoxDecoration(
                        color: Color(0xffD5A52C),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8.w),
              Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Color(0xffE8E5DC)),
                ),
                child: Icon(
                  Icons.person_outline_rounded,
                  size: 21.sp,
                  color: Color(0xff0D241B),
                ),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              _buildPropertyCard(),
              SizedBox(height: 15.h),
              Row(
                children: [
                  _quickAction(
                    icon: Icons.calendar_month_outlined,
                    title: "Association",
                    subtitle: "Calendar",
                    onTap: () {},
                  ),
                  _quickAction(
                    icon: Icons.chat_bubble_outline,
                    title: "Open",
                    subtitle: "Complaints",
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => Complaint()),
                      );
                    },
                  ),
                  _quickAction(
                    icon: Icons.build_outlined,
                    title: "Pending",
                    subtitle: "Maintenance",
                    onTap: () {},
                  ),
                  _quickAction(
                    icon: Icons.currency_rupee,
                    title: "Maintenance",
                    subtitle: "Charges",
                    onTap: () {},
                  ),
                  _quickAction(
                    icon: Icons.description_outlined,
                    title: "Documents",
                    subtitle: "",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF0E2118),
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.w,
                        right: 12.w,
                        top: 12.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Properties / Units",
                                  style: GoogleFonts.outfit(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  "128",
                                  style: GoogleFonts.outfit(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Occupancy",
                                  style: GoogleFonts.outfit(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  "91%",
                                  style: GoogleFonts.outfit(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4D9B51),
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: LinearProgressIndicator(
                                    value: 0.91,
                                    minHeight: 6.h,
                                    backgroundColor: const Color(0xFF19382D),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                          Color(0xffD5A52C),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "116 / 128 Units",
                                  style: GoogleFonts.outfit(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 6.w),

                          Image.asset(
                            "assets/associationImage/appartment.png",
                            height: 80.h,
                            width: 80.w,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.15),
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _bottomOverviewStat(
                            icon: Icons.report_problem_outlined,
                            title: "Open Complaints",
                            value: "08",
                            color: Colors.red,
                          ),
                          Container(
                            width: 1.w,
                            height: 30.h,
                            color: Colors.white.withOpacity(0.15),
                          ),

                          _bottomOverviewStat(
                            icon: Icons.build_outlined,
                            title: "Pending Maintenance",
                            value: "12",
                            color: Colors.yellow,
                          ),

                          Container(
                            width: 1.w,
                            height: 30.h,
                            color: Colors.white.withOpacity(0.15),
                          ),
                          _bottomOverviewStat(
                            icon: Icons.apartment_outlined,
                            title: "Active Services",
                            value: "06",
                            color: Colors.green,
                          ),
                          Container(
                            width: 1.w,
                            height: 30.h,
                            color: Colors.white.withOpacity(0.15),
                          ),

                          _bottomOverviewStat(
                            icon: Icons.shield_outlined,
                            title: "Outstanding Units",
                            value: "15",
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              _buildServicePerformance(),

              SizedBox(height: 12.h),

              _buildMaintenanceCharges(),

              SizedBox(height: 12.h),

              _buildImportantAlerts(),

              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFF0F171F),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => AssociationComplexInfo(),
                ),
              );
            },
            child: Stack(
              children: [
                Image.asset(
                  "assets/associationImage/pro.png",
                  height: 220.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.75),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 12.w,
                  top: 10.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0D241B).withOpacity(0.85),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 6.w,
                          height: 6.w,
                          decoration: const BoxDecoration(
                            color: Color(0xff4D9B51),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "ACTIVE",
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 12.w,
                  top: 50.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Green Valley",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),
                      Text(
                        "Residency",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 11.sp,
                            color: Color(0xffD5A52C),
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Jaipur, Rajasthan",
                            style: GoogleFonts.outfit(
                              fontSize: 11.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 12.w,
                  top: 70.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "View Complex",
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Icon(
                          Icons.arrow_forward,
                          size: 11.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.h,
                  left: 10.w,
                  right: 10.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xFF0F171F),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _propertyStat(
                          icon: Icons.apartment_outlined,
                          title: "Total Units",
                          value: "128",
                        ),

                        _verticalDivider(),

                        _propertyStat(
                          icon: Icons.people_outline,
                          title: "Occupied",
                          value: "116",
                          subValue: "(91%)",
                        ),

                        _verticalDivider(),

                        _propertyStat(
                          icon: Icons.shield_outlined,
                          title: "Status",
                          value: "Active",
                          valueColor: Color(0xff4D9B51),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _propertyStat({
    required IconData icon,
    required String title,
    required String value,
    String? subValue,
    Color? valueColor,
  }) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
            ),
            child: Center(
              child: Icon(icon, size: 18.sp, color: const Color(0xffD5A52C)),
            ),
          ),

          SizedBox(width: 6.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.3,
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value,
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: valueColor ?? Colors.white,
                    ),
                  ),

                  if (subValue != null)
                    Text(
                      " $subValue",
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _verticalDivider() {
    return Container(
      height: 28.h,
      width: 1,
      color: Colors.white24,
      margin: EdgeInsets.symmetric(horizontal: 25.w),
    );
  }

  Widget _quickAction({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(right: 5.w),
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 2.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.r),
            border: Border.all(color: Color(0xffE8E5DC)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 19.sp, color: Color(0xffD5A52C)),
              SizedBox(height: 3.h),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0D241B),
                  letterSpacing: -0.3,
                ),
              ),
              // if (subtitle.isNotEmpty)
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  color: Color(0xff0D241B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomOverviewStat({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 14.sp, color: color),
            SizedBox(width: 4.w),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: GoogleFonts.outfit(
                      fontSize: 9.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.2,
                      height: 1.1.h,
                    ),
                  ),
                  Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServicePerformance() {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: const Color(0xffE8E5DC), width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "Service Performance",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            color: AppColors.heading,
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "View Details",
                        maxLines: 1,
                        style: GoogleFonts.outfit(
                          fontSize: 11.sp,
                          color: const Color(0xFF9B7627),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8.h),

                  // Performance
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70.w,
                        height: 70.w,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 60.w,
                              height: 60.w,
                              child: CircularProgressIndicator(
                                value: 0.86,
                                strokeWidth: 5.w,
                                backgroundColor: const Color(0xffE8E4D8),
                                color: Color(0xffD5A52C),
                              ),
                            ),
                            Text(
                              "86%",
                              style: GoogleFonts.outfit(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff0D241B),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 6.w),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Overall Service\nPerformance",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.outfit(
                                fontSize: 11.sp,
                                color: const Color(0xff0D241B),
                                letterSpacing: -0.3,
                              ),
                            ),
                            Text(
                              "Good",
                              style: GoogleFonts.outfit(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                                letterSpacing: -0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        width: 20.w,
                        height: 20.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 15.sp,
                          ),
                        ),
                      ),

                      SizedBox(width: 5.w),

                      Flexible(
                        child: Text(
                          "Overall Service Performance",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            color: const Color(0xff0D241B),
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: const Color(0xffE8E5DC), width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "Latest Inspection",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            color: AppColors.heading,
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "View Details",
                        maxLines: 1,
                        style: GoogleFonts.outfit(
                          fontSize: 11.sp,
                          color: const Color(0xFF9B7627),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: 4.w,
                      right: 4.w,
                      top: 3.h,
                      bottom: 3.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: const Color(0xFFF9F2E4),
                      border: Border.all(
                        color: const Color(0xffE8E5DC),
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 14.sp,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Completed",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.outfit(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              Text(
                                "Most recent property inspection",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.outfit(
                                  fontSize: 10.sp,
                                  color: const Color(0xff777777),
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _inspectionItem(
                          icon: Icons.calendar_today_outlined,
                          title: "Date",
                          value: "18 May 2025",
                        ),
                        Container(
                          width: 1.w,
                          margin: EdgeInsets.symmetric(
                            vertical: 2.h,
                            horizontal: 2.w,
                          ),
                          color: const Color(0xffE8E5DC),
                        ),
                        _inspectionItem(
                          icon: Icons.format_list_bulleted,
                          title: "Issues",
                          value: "02",
                        ),
                        Container(
                          width: 1.w,
                          margin: EdgeInsets.symmetric(
                            vertical: 2.h,
                            horizontal: 2.w,
                          ),
                          color: const Color(0xffE8E5DC),
                        ),
                        _inspectionItem(
                          icon: Icons.person_outline,
                          title: "Inspector",
                          value: "Team A",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inspectionItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24.w,
              height: 24.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF9F2E4),
              ),
              child: Center(
                child: Icon(icon, size: 14.sp, color: const Color(0xFF9B7627)),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.outfit(
                fontSize: 10.sp,
                color: const Color(0xff777777),
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.outfit(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff0D241B),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMaintenanceCharges() {
    return _sectionContainer(
      title: "Maintenance Charges (Monthly)",
      action: "View Details",
      child: Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: Row(
          children: [
            Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD5A52C)),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Icon(
                Icons.currency_rupee,
                size: 16.sp,
                color: Color(0xffD5A52C),
              ),
            ),
            SizedBox(width: 10.w),
            _chargeStat(title: "Status", value: "Tracking"),

            _chargeStat(
              title: "Paid Units",
              value: "113",
              valueColor: Color(0xff4D9B51),
            ),

            _chargeStat(
              title: "Unpaid Units",
              value: "15",
              valueColor: Color(0xffD94A42),
            ),

            _chargeStat(
              title: "Defaulters",
              value: "08",
              valueColor: Color(0xffD94A42),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chargeStat({
    required String title,
    required String value,
    Color? valueColor,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 11.sp,
              color: Color(0xff777777),
              fontWeight: FontWeight.w400,
              letterSpacing: -0.2,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: valueColor ?? Color(0xff0D241B),
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // IMPORTANT ALERTS
  // ============================================================

  Widget _buildImportantAlerts() {
    return _sectionContainer(
      title: "Important Alerts",
      action: "View All",
      child: Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 200.w,
                child: _alertItem(
                  icon: Icons.report_problem_outlined,
                  count: "8",
                  title: "complaints require attention",
                  description: "Review and take necessary action",
                  color: Color(0xffD94A42),
                ),
              ),
              SizedBox(width: 8.w),
              SizedBox(
                width: 200.w,
                child: _alertItem(
                  icon: Icons.build_outlined,
                  count: "12",
                  title: "maintenance items pending",
                  description: "Pending maintenance requires approval",
                  color: Color(0xffD5A52C),
                ),
              ),
              SizedBox(width: 8.w),
              SizedBox(
                width: 200.w,
                child: _alertItem(
                  icon: Icons.currency_rupee,
                  count: "15",
                  title: "units have outstanding charges",
                  description: "Follow up for payment collection",
                  color: Color(0xffD5A52C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _alertItem({
    required IconData icon,
    required String count,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: const Color(0xffE8E5DC), width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(7.r),
                ),
                child: Center(
                  child: Icon(icon, size: 17.sp, color: color),
                ),
              ),
              SizedBox(width: 7.w),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "$count ",
                        style: GoogleFonts.outfit(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0D241B),
                        ),
                      ),
                      TextSpan(
                        text: title,
                        style: GoogleFonts.outfit(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0D241B),
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 4.w),
              Icon(
                Icons.arrow_forward_ios,
                size: 13.sp,
                color: const Color(0xff0D241B),
              ),
            ],
          ),

          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.outfit(
                fontSize: 12.sp,
                color: const Color(0xff777777),
                letterSpacing: -0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // COMMON SECTION CONTAINER
  // ============================================================

  Widget _sectionContainer({
    required String title,
    required String action,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(9.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: const Color(0xffE8E5DC), width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0D241B),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              Text(
                action,
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  color: const Color(0xFF9B7627),
                  letterSpacing: -0.2,
                ),
              ),
              if (action.isNotEmpty)
                Icon(
                  Icons.chevron_right,
                  size: 13.sp,
                  color: Color(0xFF9B7627),
                ),
            ],
          ),
          SizedBox(height: 7.h),
          child,
        ],
      ),
    );
  }
}
