import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class AssociationReport extends StatefulWidget {
  const AssociationReport({super.key});

  @override
  State<AssociationReport> createState() => _AssociationReportState();
}

class _AssociationReportState extends State<AssociationReport> {
  int selectedFilter = 0;
  final List<String> filters = [
    "All",
    "Association",
    "Financial",
    "Reports",
    "Policies",
  ];

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
                    "Reports",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff292832),
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Association Management",
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
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: const Color(0xff101C16), width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ASSOCIATION INSIGHTS",
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 36.w,
                          height: 36.w,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(184, 134, 11, 0.3),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.bar_chart_rounded,
                              size: 20.sp,
                              color: const Color(0xFFB8860B),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reports Centre",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF000000),
                                  letterSpacing: -0.3,
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                "Monitor property, maintenance & association activity",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.outfit(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  letterSpacing: -0.3,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      width: double.infinity,
                      height: 1.h,
                      color: const Color(0xFFC6C6C6),
                    ),
                    SizedBox(height: 13.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _reportStat(
                            title: "18",
                            value: "Total Reports",
                          ),
                        ),
                        Expanded(
                          child: _reportStat(title: "06", value: "This Month"),
                        ),
                        Expanded(
                          child: _reportStat(title: "04", value: "Categories"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 45.h,
                width: double.infinity,
                padding: EdgeInsets.only(left: 16.w, right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xff101C16), width: 1),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 25.sp,
                      color: const Color(0xff8B8D8B),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Search service or provider...",
                          hintStyle: GoogleFonts.outfit(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff8B8D8B),
                            letterSpacing: -0.3,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(filters.length, (index) {
                    final bool isSelected = selectedFilter == index;
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedFilter = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 13.w,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xff101C16)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(40.r),
                            border: Border.all(
                              color: const Color(0xff101C16),
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            filters[index],
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff101C16),
                              letterSpacing: -0.3,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Quick Reports",
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff101C16),
                  fontSize: 16.sp,
                  letterSpacing: -0.54,
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: _topReportCard(
                      icon: Icons.build_outlined,
                      title: "Maintenance Report",
                      subtitle: "Service & maintenance summary",
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: _topReportCard(
                      icon: Icons.credit_card_outlined,
                      title: "Maintenance Charges",
                      subtitle: "Collection & outstanding summary",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                "Quick Reports",
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff101C16),
                  fontSize: 16.sp,
                  letterSpacing: -0.54,
                ),
              ),
              SizedBox(height: 16.h),
              _reportCard(
                icon: Icons.bar_chart_rounded,
                iconColor: const Color(0xFFE3C000),
                iconBgColor: const Color(0xFFFFF5CE),
                title: "Maintenance Performance Report",
                subtitle: "Maintenance · Aug 2026",
                count: "12 Services",
              ),

              SizedBox(height: 14.h),

              _reportCard(
                icon: Icons.chat_bubble_outline,
                iconColor: const Color(0xFFF04432),
                iconBgColor: const Color(0xFFFFBDB5),
                title: "Complaints & Resolution Report",
                subtitle: "Complaints · Aug 2026",
                count: "28 Complaints",
              ),

              SizedBox(height: 14.h),

              _reportCard(
                icon: Icons.bar_chart_rounded,
                iconColor: const Color(0xFFB58A16),
                iconBgColor: const Color(0xFFF0DDA8),
                title: "Maintenance Charge Collection Report",
                subtitle: "Finance · Aug 2026",
                count: "42 Units",
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _reportStat({required String value, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
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
            color: Color.fromRGBO(42, 41, 51, 0.6),
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }

  Widget _topReportCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000), width: 1.w),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 36.h,
            width: 36.w,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 242, 165, 0.3),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Icon(icon, size: 20.sp, color: const Color(0xFFB8860B)),
          ),
          SizedBox(height: 7.h),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1,
              color: Color(0xFF000000),
              letterSpacing: -0.2,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              height: 1,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _reportCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required String count,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 20.h),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF111111), width: 1.w),
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 36.h,
                width: 36.w,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Icon(icon, size: 19.sp, color: iconColor),
              ),
              SizedBox(width: 5.w),
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
                        height: 1,
                        color: Color(0xFF111111),
                        letterSpacing: -0.2,
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 6.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 242, 165, 0.3),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  "READY",
                  style: GoogleFonts.outfit(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB8860B),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Divider(height: 1.w, color: Color(0xFFC6C6C6)),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                count,
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(width: 28.w),
              Text(
                "PDF",
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              const Spacer(),
              Text(
                "VIEW →",
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E5993),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
