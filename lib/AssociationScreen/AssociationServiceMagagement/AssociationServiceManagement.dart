import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationServiceMagagement/AssociationServiceManageDetails.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class AssociationServiceManagement extends StatefulWidget {
  const AssociationServiceManagement({super.key});

  @override
  State<AssociationServiceManagement> createState() =>
      _AssociationServiceManagementState();
}

class _AssociationServiceManagementState
    extends State<AssociationServiceManagement> {
  int selectedFilter = 0;
  final List<String> filters = [
    "All Services · 06",
    "Housekeeping · 02",
    "Security · 02",
    "Equipment · 02",
  ];

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
                  "Service Management",
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff292832),
                    letterSpacing: -0.64,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Association Operations",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2A2933),
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000), width: 1.w),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "COMPLEX SERVICE OVERVIEW",
                          style: GoogleFonts.outfit(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                            letterSpacing: -0.2,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF12A65A),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            "LIVE STATUS",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF24B06A),
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Text(
                    "Service Operations",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                      height: 1.h,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Text(
                    "Monitor active services, providers, schedules and performance.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      height: 1.h,
                    ),
                  ),
                  SizedBox(height: 13.h),
                  Divider(
                    height: 1,
                    thickness: 0.8,
                    color: Color.fromRGBO(16, 28, 22, 0.5),
                  ),
                  SizedBox(height: 13.h),
                  Row(
                    children: [
                      Expanded(
                        child: _serviceStat(
                          label: "Active Services",
                          value: "06",
                          status: "running",
                        ),
                      ),

                      Expanded(
                        child: _serviceStat(
                          label: "Providers",
                          value: "04",
                          status: "assigned",
                        ),
                      ),

                      Expanded(
                        child: _serviceStat(
                          label: "Performance",
                          value: "92%",
                          status: "good",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 19.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                          fontSize: 16.sp,
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
                              ? const Color(0xFFB8860B)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(40.r),
                          border: Border.all(
                            color: isSelected
                                ? Colors.transparent
                                : const Color(0xff101C16),
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  child: ServiceCard(
                    icon: Icons.cleaning_services_outlined,
                    title: 'Housekeeping',
                    subtitle: 'Common area cleaning & upkeep',
                    providerLabel: 'Assigned Provider',
                    providerName: 'CleanCare Services',
                    scheduleLabel: 'Service Schedule',
                    schedule: 'Daily · 7:00 AM',
                    issueLabel: 'Reported Issues',
                    issues: '02 Open',
                    lastServiceLabel: 'Last Service',
                    lastService: '28 Aug 2026',
                    performance: '94%',
                    isSecurity: false,
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: Color.fromRGBO(184, 134, 11, 0.9)),
              ),
              child: Text(
                "Services are monitored by category with their current status, assigned provider, service schedule, reported issues and performance. OEM / equipment services can also include service history and equipment-level information.",
                style: GoogleFonts.outfit(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(184, 134, 11, 0.9),
                  letterSpacing: -0.1,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _serviceStat({
    required String label,
    required String value,
    required String status,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.outfit(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(42, 41, 51, 0.6),
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          status,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFFB8860B),
            height: 1,
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
  final bool isSecurity;

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
    required this.isSecurity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Color(0xFF000000), width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30.w,
                height: 30.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 242, 165, 0.6),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Icon(icon, size: 18.sp, color: const Color(0xFFB8860B)),
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
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        height: 1.1,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              // ACTIVE
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.r),
                  border: Border.all(
                    color: const Color(0xFF24B06A),
                    width: 1.w,
                  ),
                ),
                child: Text(
                  'ACTIVE',
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF24B06A),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(16, 28, 22, 0.5),
          ),
          SizedBox(height: 14.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _InfoItem(label: providerLabel, value: providerName),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: _InfoItem(label: scheduleLabel, value: schedule),
              ),
            ],
          ),
          SizedBox(height: 17.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _InfoItem(label: issueLabel, value: issues),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: _InfoItem(label: lastServiceLabel, value: lastService),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(16, 28, 22, 0.5),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/provider.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        size: 18.sp,
                        color: Colors.black87,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Service Provider',
                      style: GoogleFonts.outfit(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                        height: 1,
                        letterSpacing: -0.1,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      providerName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => AssociationServiceManageDetails(),
                    ),
                  );
                },
                child: Container(
                  height: 27.h,
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 242, 165, 0.3),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.black, width: 1.w),
                  ),
                  child: Center(
                    child: Text(
                      'View Details →',
                      style: GoogleFonts.outfit(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Service Performance',
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101C16),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              Text(
                performance,
                style: GoogleFonts.outfit(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101C16),
                  letterSpacing: -0.2,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Stack(
              children: [
                Container(
                  height: 3.h,
                  width: double.infinity,
                  color: const Color(0xFF919191),
                ),
                FractionallySizedBox(
                  widthFactor: 0.94,
                  child: Container(height: 3.h, color: const Color(0xFF195B3A)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;

  const _InfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
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
