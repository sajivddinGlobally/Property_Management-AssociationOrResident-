import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ServiceManagePerformance extends StatefulWidget {
  const ServiceManagePerformance({super.key});

  @override
  State<ServiceManagePerformance> createState() =>
      _ServiceManagePerformanceState();
}

class _ServiceManagePerformanceState extends State<ServiceManagePerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        automaticallyImplyLeading: false,
        titleSpacing: 20.w,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 41.w,
                  height: 41.h,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Service Details",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff292832),
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Service Management",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "PERFORMANCE OVERVIEW",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFB8860B),
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Text(
                            "THIS MONTH",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFB8860B),
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Container(
                          width: 30.w,
                          height: 30.w,
                          decoration: const BoxDecoration(
                            color: Color(0xFFB8860B),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.trending_up,
                            color: Colors.black,
                            size: 15.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Service Performance",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000),
                                  height: 1.05,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                "CleanCare Services · Overall monitoring",
                                style: GoogleFonts.outfit(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000),
                                  height: 1.1,
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      height: 1.h,
                      width: double.infinity,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Overall Performance",
                                style: GoogleFonts.outfit(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000),
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                "94%",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFB8860B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.w,
                              decoration: const BoxDecoration(
                                color: Color(0xFF403F3F),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              "Excellent",
                              style: GoogleFonts.outfit(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF403F3F),
                                letterSpacing: -0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Performance Metrics",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  height: 1.05,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  children: [
                    _performanceMetric(
                      title: "Service Quality",
                      percentage: 96,
                      description: "Quality of delivered service",
                      status: "Excellent",
                      progressColor: const Color(0xFFC58B00),
                    ),
                    SizedBox(height: 16.h),
                    _performanceMetric(
                      title: "Completion Rate",
                      percentage: 94,
                      description: "Scheduled services completed",
                      status: "Good",
                      progressColor: const Color(0xFF25B36B),
                    ),
                    SizedBox(height: 16.h),
                    _performanceMetric(
                      title: "Response Performance",
                      percentage: 91,
                      description: "Response to reported issues",
                      status: "Good",
                      progressColor: const Color(0xFF087B9F),
                    ),
                    SizedBox(height: 16.h),
                    _performanceMetric(
                      title: "Issue Resolution",
                      percentage: 95,
                      description: "Issues resolved on time",
                      status: "Excellent",
                      progressColor: const Color(0xFF087B9F),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Service Snapshot",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  height: 1.05,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 20.w,
                mainAxisSpacing: 11.h,
                childAspectRatio: 1.8,
                children: [
                  _statCard(
                    icon: Icons.check,
                    title: "Completed",
                    value: "128",
                    subtitle: "Services this month",
                  ),
                  _statCard(
                    icon: Icons.access_time,
                    title: "Avg Response",
                    value: "32m",
                    subtitle: "Average response time",
                  ),

                  _statCard(
                    icon: Icons.shield_outlined,
                    title: "Resolved",
                    value: "95%",
                    subtitle: "Issues resolved on time",
                  ),

                  _statCard(
                    icon: Icons.star_border,
                    title: "Rating",
                    value: "Rating",
                    subtitle: "Average service rating",
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                "Performance Trend",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  height: 1.05,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              SvgPicture.asset("assets/SvgImage/chart.svg"),
              SizedBox(height: 20.h),
              Text(
                "Recent Service Issues",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  height: 1.05,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFCEB),
                  borderRadius: BorderRadius.circular(11.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  children: [
                    _issueItem(
                      icon: Icons.warning_amber_rounded,
                      title: "Cleaning delay — Block A",
                      date: "Reported 28 Aug 2026",
                      status: "OPEN",
                      statusColor: const Color(0xFFB8860B),
                    ),
                    _divider(),
                    _issueItem(
                      icon: Icons.check,
                      title: "Waste collection issue",
                      date: "Resolved 25 Aug 2026",
                      status: "RESOLVED",
                      statusColor: const Color(0xFF616161),
                    ),
                    _divider(),
                    _issueItem(
                      icon: Icons.warning_amber_rounded,
                      title: "Staircase cleaning delay",
                      date: "Resolved 21 Aug 2026",
                      status: "RESOLVED",
                      statusColor: const Color(0xFF616161),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 21.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                decoration: BoxDecoration(
                  color: const Color(0xFF101C16),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Performance Summary",
                            style: GoogleFonts.outfit(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                        Text(
                          "AUGUST 2026",
                          style: GoogleFonts.outfit(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      "Service performance remains strong this month, with high completion and issue-resolution rates. Current performance is within the expected service level.",
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 255, 2555, 0.6),
                      ),
                    ),
                    SizedBox(height: 11.h),
                    Container(
                      width: double.infinity,
                      height: 1.h,
                      color: const Color(0xFF6D746F),
                    ),
                    SizedBox(height: 9.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _summaryItem(
                            title: "Overall Status",
                            value: "Excellent",
                          ),
                        ),
                        Expanded(
                          child: _summaryItem(
                            title: "Trend",
                            value: "↑ Improving",
                          ),
                        ),
                        Expanded(
                          child: _summaryItem(
                            title: "Review",
                            value: "01 Sep 2026",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _performanceMetric({
    required String title,
    required int percentage,
    required String description,
    required String status,
    required Color progressColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF3F3F3F),
                  height: 1,
                  letterSpacing: -0.2,
                ),
              ),
            ),
            Text(
              "$percentage%",
              style: GoogleFonts.outfit(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                height: 1,
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: LinearProgressIndicator(
            value: percentage / 100,
            minHeight: 5.h,
            backgroundColor: const Color(0xff8B8B8B),
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            Expanded(
              child: Text(
                description,
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF3F3F3F),
                  height: 1,
                  letterSpacing: -0.2,
                ),
              ),
            ),
            Text(
              status,
              style: GoogleFonts.outfit(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF3F3F3F),
                height: 1,
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _statCard({
    required IconData icon,
    required String title,
    required String value,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 12.w, top: 5.h, bottom: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.black, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36.w,
            height: 36.w,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 242, 165, 0.3),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Icon(icon, size: 15.sp, color: const Color(0xFFC58B00)),
            ),
          ),
          const Spacer(),
          // Title
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              height: 1,
              letterSpacing: -0.1,
            ),
          ),
          SizedBox(height: 5.h),
          // Value
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1,
              letterSpacing: -0.2,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              height: 1,
              letterSpacing: -0.1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _issueItem({
    required IconData icon,
    required String title,
    required String date,
    required String status,
    required Color statusColor,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.circular(3.r),
            ),
            child: Center(
              child: Icon(icon, size: 18.sp, color: Colors.black),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1,
                    letterSpacing: -0.2,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  date,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    height: 1,
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
            decoration: BoxDecoration(
              border: Border.all(color: statusColor, width: 1.w),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Text(
              status,
              style: GoogleFonts.outfit(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: statusColor,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _summaryItem({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF939393),
            height: 1,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 1,
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      width: double.infinity,
      height: 1.h,
      color: const Color(0xFFB5B5B5),
    );
  }
}
