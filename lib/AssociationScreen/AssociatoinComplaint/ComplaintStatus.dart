import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class ComplaintStatus extends StatefulWidget {
  const ComplaintStatus({super.key});

  @override
  State<ComplaintStatus> createState() => _ComplaintStatusState();
}

class _ComplaintStatusState extends State<ComplaintStatus> {
  final List<Map<String, dynamic>> statusList = [
    {
      "title": "Complaint Submitted",
      "description": "Complaint was successfully submitted for review.",
      "date": "18 Aug",
      "status": "completed",
    },
    {
      "title": "Reviewed",
      "description": "Complaint reviewed by the association team.",
      "date": "18 Aug",
      "status": "completed",
    },
    {
      "title": "In Progress",
      "description": "Assigned team is currently working on the complaint.",
      "date": "19 Aug",
      "status": "current",
    },
    {
      "title": "Complaint Submitted",
      "description": "Complaint was successfully submitted for review.",
      "date": "",
      "status": "pending",
    },
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
                    "Complaint Details",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff292832),
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "View complete complaint information",
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
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: const Color(0xff101C16), width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "COMPLAINT #CMP-0028",
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
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            border: Border.all(
                              color: Color(0xFFB8860B),
                              width: 1.w,
                            ),
                          ),
                          child: Text(
                            "In Progress",
                            style: GoogleFonts.outfit(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFB8860B),
                              letterSpacing: -0.3,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Water Leakage Issue",
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
                    SizedBox(height: 10.h),
                    Text(
                      "Water leakage reported in the common corridor area of the property.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF000000),
                        letterSpacing: -0.3,
                        height: 1.0,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Container(
                      width: double.infinity,
                      height: 1.h,
                      color: Color.fromRGBO(42, 41, 51, 0.6),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _documentStat(
                            title: "PROPERTY / UNIT",
                            value: "Apartment A-204",
                          ),
                        ),
                        Expanded(
                          child: _documentStat(
                            title: "REPORTED ON",
                            value: "18 Aug 2026",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color.fromRGBO(184, 134, 11, 0.9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CURRENT STATUS",
                      style: GoogleFonts.outfit(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "In Progress",
                      style: GoogleFonts.outfit(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "Complaint has been assigned and is currently being worked on by the concerned service team.",
                      style: GoogleFonts.outfit(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status Timeline",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  Text(
                    "4 STAGES",
                    style: GoogleFonts.outfit(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  children: List.generate(statusList.length, (index) {
                    final item = statusList[index];
                    return _TimelineItem(
                      title: item["title"],
                      description: item["description"],
                      date: item["date"],
                      status: item["status"],
                      isLast: index == statusList.length - 1,
                    );
                  }),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Complex Details",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.w),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                ),
                child: Column(
                  children: [
                    _buildDetailRow(
                      icon: Icons.description_outlined,
                      label: "COMPLAINT TYPE",
                      value: "Maintenance Issue",
                    ),
                    _buildDivider(),
                    _buildDetailRow(
                      icon: Icons.person_2_outlined,
                      label: "COMPLAINT TYPE",
                      value: "Maintenance Issue",
                    ),
                    _buildDivider(),
                    _buildDetailRow(
                      icon: Icons.timer_sharp,
                      label: "COMPLAINT TYPE",
                      value: "Maintenance Issues",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Text(
                "Latest Update",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _documentStat({required String value, required String title}) {
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
            color: Color.fromRGBO(42, 41, 51, 0.6),
            letterSpacing: -0.3,
            height: 1.0,
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
            color: const Color(0xFF000000),
            letterSpacing: -0.3,
            height: 1.0,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return SizedBox(
      height: 60.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Container(
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000), width: 1.w),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Icon(icon, size: 15.sp, color: Color(0xFF000000)),
            ),
            SizedBox(width: 7.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      letterSpacing: -0.2,
                      height: 1.h,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
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

  Widget _buildDivider() {
    return Divider(
      height: 0.8.h,
      thickness: 0.7.w,
      color: Color.fromRGBO(41, 41, 51, 0.7),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String status;
  final bool isLast;

  const _TimelineItem({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final bool isCompleted = status == "completed";
    final bool isCurrent = status == "current";

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            // width: 42.w,
            child: Column(
              children: [
                _buildCircle(isCompleted: isCompleted, isCurrent: isCurrent),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1.w,
                      color: Color.fromRGBO(16, 28, 22, 0.5),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 0.h, bottom: isLast ? 0.h : 28.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
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
                          description,
                          style: GoogleFonts.outfit(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            height: 1.2,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (date.isNotEmpty) ...[
                    SizedBox(width: 8.w),
                    Padding(
                      padding: EdgeInsets.only(top: 13.h),
                      child: Text(
                        date,
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF7C7C7C),
                          letterSpacing: -0.2,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircle({required bool isCompleted, required bool isCurrent}) {
    if (isCompleted) {
      return Container(
        width: 25.w,
        height: 25.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF00A955),
        ),
        child: Center(
          child: Icon(Icons.check, color: Colors.white, size: 20.sp),
        ),
      );
    }
    if (isCurrent) {
      return Container(
        width: 25.w,
        height: 25.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(184, 134, 11, 0.9),
        ),
        child: Center(
          child: Container(
            width: 10.w,
            height: 10.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFFCEF),
            ),
          ),
        ),
      );
    }
    return Container(
      width: 25.w,
      height: 25.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 1.w),
      ),
    );
  }
}
