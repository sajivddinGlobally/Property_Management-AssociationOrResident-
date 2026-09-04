import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociatoinComplaint/ComplaintDetails.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class Complaint extends StatefulWidget {
  const Complaint({super.key});

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  int selectedFilter = 0;

  final List<String> filters = [
    "All",
    "High Priority",
    "Under Review",
    "In Progress",
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
                    "Open Complaints",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff292832),
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Review and monitor complaints across the complex",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: const Color(0xff101C16), width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: Color(0xFF000000),
                            width: 1.w,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "!",
                            style: GoogleFonts.outfit(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Complaint Overview",
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
                              "Currently open issues",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.outfit(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                letterSpacing: -0.3,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "08",
                            style: GoogleFonts.outfit(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                              letterSpacing: -0.2,
                            ),
                          ),
                          Text(
                            "Open Complaints",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    width: double.infinity,
                    height: 1.h,
                    color: const Color(0xFFC6C6C6),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _documentStat(
                          value: "08",
                          title: "Open Complaints",
                        ),
                      ),
                      Expanded(
                        child: _documentStat(
                          value: "03",
                          title: "Under Review",
                        ),
                      ),
                      Expanded(
                        child: _documentStat(value: "03", title: "In Progress"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              height: 45.h,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
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
              padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                          borderRadius: BorderRadius.circular(6.r),
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
                            fontWeight: FontWeight.w600,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open Complaints",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  Text(
                    "08 ACTIVE",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ServiceCard(
                  icon: Icons.warning_amber_rounded,
                  title: 'Water Leakage in Bathroom',
                  subtitle: '#CMP-2048 · Apartment A-204',
                  providerLabel: 'CATEGORY',
                  providerName: 'Plumbing',
                  scheduleLabel: 'SUBMITTED BY',
                  schedule: 'Arjun Sharma',
                  issueLabel: 'ASSIGNED TO',
                  issues: 'Maintenance Teamn',
                  lastServiceLabel: 'DATE',
                  lastService: '28 Aug 2026',
                  performance: '21 Aug 2026',
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ComplaintDetails(),
                      ),
                    );
                  },
                );
              },
            ),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget _documentStat({required String value, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF000000),
            letterSpacing: -0.3,
            height: 1.0,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(42, 41, 51, 0.6),
            letterSpacing: -0.3,
            height: 1.0,
          ),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String providerLabel;
  final String providerName;
  final String scheduleLabel;
  final String schedule;
  final String issueLabel;
  final String issues;
  final String lastServiceLabel;
  final String lastService;
  final String performance;
  final VoidCallback onTap;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.providerLabel,
    required this.providerName,
    required this.scheduleLabel,
    required this.schedule,
    required this.issueLabel,
    required this.issues,
    required this.lastServiceLabel,
    required this.lastService,
    required this.performance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Color(0xFF000000), width: 1.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(color: Color(0xFF000000), width: 1.w),
                  ),
                  child: Icon(
                    icon,
                    size: 18.sp,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(width: 16.w),
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
                          color: Color(0xFF000000),
                          height: 1.h,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                          height: 1.1,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    border: Border.all(
                      color: const Color(0xFF000000),
                      width: 1.w,
                    ),
                  ),
                  child: Text(
                    'HIGH',
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Divider(height: 1, thickness: 1, color: Color(0xFF000000)),
            SizedBox(height: 14.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _infoItem(label: providerLabel, value: providerName),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: _infoItem(label: scheduleLabel, value: schedule),
                ),
              ],
            ),
            SizedBox(height: 17.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _infoItem(label: issueLabel, value: issues),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: _infoItem(label: lastServiceLabel, value: lastService),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Icon(Icons.circle, size: 8.sp, color: Color(0xFF1E5993)),
                SizedBox(width: 4.w),
                Text(
                  "In Progress",
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1E5993),
                    height: 1.1,
                    letterSpacing: -0.2,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: onTap,
                  child: Row(
                    children: [
                      Text(
                        "View Details",
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(184, 134, 11, 0.9),
                          height: 1.1,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.arrow_forward,
                        size: 15.sp,
                        color: Color.fromRGBO(184, 134, 11, 0.9),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoItem({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(42, 41, 51, 0.6),
            height: 1.1,
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
            height: 1.1,
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }
}
