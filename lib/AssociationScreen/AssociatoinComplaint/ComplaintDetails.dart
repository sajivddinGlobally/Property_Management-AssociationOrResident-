import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociatoinComplaint/ComplaintStatus.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class ComplaintDetails extends StatefulWidget {
  const ComplaintDetails({super.key});

  @override
  State<ComplaintDetails> createState() => _ComplaintDetailsState();
}

class _ComplaintDetailsState extends State<ComplaintDetails> {
  static const List<String> statuses = [
    'Submitted',
    'Review',
    'Assigned',
    'Resolved',
    'Closed',
  ];

  final activities = [
    {
      "title": "Complaint Submitted",
      "date": "21 Aug 2026 · 10:42 AM",
      "description": "Complaint was submitted by Arjun Sharma.",
    },
    {
      "title": "Complaint Reviewed",
      "date": "21 Aug 2026 · 11:05 AM",
      "description": "Complaint reviewed and accepted for further action.",
    },
    {
      "title": "Assigned to Maintenance",
      "date": "21 Aug 2026 · 11:15 AM",
      "description": "Complaint assigned to the maintenance team.",
    },
    {
      "title": "Work In Progress",
      "date": "21 Aug 2026 · 11:15 AM",
      "description": "Maintenance action is currently in progress.",
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
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 8.h,
                  right: 12.w,
                  bottom: 15.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: Color(0xFF101C16),
                              width: 1.w,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1584622650111-993a426fbf0a',
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) {
                                return Container(
                                  width: 40.w,
                                  height: 40.h,
                                  color: Colors.grey.shade300,
                                  child: Icon(
                                    Icons.image_outlined,
                                    size: 20.sp,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Water Leakage in Bathroom',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.outfit(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  letterSpacing: -0.2,
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Ticket ID: #CMP-2048',
                                style: GoogleFonts.outfit(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(42, 41, 51, 0.7),
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.w),

                        /// PRIORITY
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            border: Border.all(
                              color: const Color(0xFFE3240F),
                              width: 1.w,
                            ),
                          ),
                          child: Text(
                            'High',
                            style: GoogleFonts.outfit(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFE3240F),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.2.h,
                      color: Color.fromRGBO(16, 28, 22, 0.5),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Current Status',
                          style: GoogleFonts.outfit(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: -0.2,
                          ),
                        ),
                        Text(
                          'In Progress',
                          style: GoogleFonts.outfit(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF1E5993),
                            letterSpacing: -0.2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    ComplaintTimeline(currentStep: 2),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Complaint Information',
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    _informationRow(
                      icon: Icons.home_outlined,
                      label: "Property / Unit",
                      value: "Apartment A-204 · Block A",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.receipt_long_outlined,
                      label: "Category  ",
                      value: "Plumbing",
                      action: "View ›",
                    ),
                    _divider(),

                    _informationRow(
                      icon: Icons.home_outlined,
                      label: "Submitted By",
                      value: "Arjun Sharma · Property Owner",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.location_searching_sharp,
                      label: "Submitted Date",
                      value: "21 August 2026 · 09:24 AM",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.diamond_outlined,
                      label: "Prioritye",
                      value: "High",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                'Description',
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'Water leakage has been reported from the bathroom area of Apartment A-204. The issue requires inspection and maintenance attention. Complaint has been assigned to the maintenance team for further action.',
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 41, 51, 0.7),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Assigned Person",
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF000000),
                          width: 1.w,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/rajkumar.png',
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
                            "Maintenance Teami",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.outfit(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF101C16),
                              letterSpacing: -0.1,
                            ),
                          ),
                          Text(
                            'Assigned for complaint resolution',
                            style: GoogleFonts.outfit(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(42, 41, 52, 0.6),
                              height: 1,
                              letterSpacing: -0.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        border: Border.all(
                          color: Color(0xFF24B06A),
                          width: 1.w,
                        ),
                      ),
                      child: Text(
                        " Assigned",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF24B06A),
                          letterSpacing: -0.1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.w),
              Text(
                "Attachments",
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.w),
              Row(
                children: [
                  Expanded(
                    child: _attachmentCard(
                      icon: Icons.image_outlined,
                      title: "Complaint Photo",
                      subtitle: "Image attachment",
                      onTap: () {},
                    ),
                  ),

                  SizedBox(width: 20.w),

                  Expanded(
                    child: _attachmentCard(
                      icon: Icons.description_outlined,
                      title: "Supporting Document",
                      subtitle: "Document attachment",
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.w),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 8.h,
                  left: 16.w,
                  bottom: 8.h,
                  right: 16.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(color: Colors.black, width: 1.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 34.w,
                          height: 34.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: const Color(0xFF1E5993),
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "✓",
                              style: GoogleFonts.outfit(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1E5993),
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Current Resolution Update",
                            style: GoogleFonts.outfit(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              height: 1,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      "Maintenance team has been assigned. Inspection of the reported leakage is currently in progress. Final resolution will be recorded after the issue is completed.",
                      style: GoogleFonts.outfit(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.25,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Text(
                "Complaint Activity",
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 19.h),
              Column(
                children: [
                  ...List.generate(activities.length, (index) {
                    final activity = activities[index];
                    return _TimelineItem(
                      title: activity["title"]!,
                      date: activity["date"]!,
                      desc: activity["description"]!,
                      isLast: index == activities.length - 1,
                    );
                  }),
                ],
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _attachmentCard({
    required VoidCallback onTap,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(13.r),
      child: Container(
        height: 95.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Color(0xFF101C16), width: 1.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 26.sp, color: const Color(0xFF18221D)),
            SizedBox(height: 8.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1,
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF101C16),
                height: 1,
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _informationRow({
    required IconData icon,
    required String label,
    required String value,
    String? action,
    double bottomPadding = 8,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 36.h,
          width: 38.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF000000), width: 1.w),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Icon(icon, size: 13.sp, color: Colors.black),
        ),
        SizedBox(width: 7.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(42, 41, 51, 0.7),
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101C16),
                  letterSpacing: -0.2,
                ),
              ),
            ],
          ),
        ),
        if (action != null)
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => ComplaintStatus()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Text(
                action,
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2A2933),
                  letterSpacing: -0.2,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.only(top: 14.h, bottom: 10.h),
      child: Divider(height: 1.h, color: Color.fromRGBO(41, 42, 51, 0.6)),
    );
  }
}

class ComplaintTimeline extends StatelessWidget {
  final int currentStep;

  const ComplaintTimeline({super.key, required this.currentStep});

  static const List<String> steps = [
    "Submitted",
    "Review",
    "Assigned",
    "Resolved",
    "Closed",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(steps.length, (index) {
            return Expanded(
              child: Row(
                children: [
                  _buildDot(index),

                  if (index != steps.length - 1)
                    Expanded(child: _buildLine(index)),
                ],
              ),
            );
          }),
        ),
        SizedBox(height: 6.h),
        Row(
          children: List.generate(steps.length, (index) {
            return Expanded(
              child: Text(
                steps[index],
                textAlign: _getTextAlignment(index),
                style: GoogleFonts.outfit(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: _getLabelColor(index),
                  letterSpacing: -0.2,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildDot(int index) {
    final bool completed = index < currentStep;
    final bool active = index == currentStep;

    Color color;

    if (completed) {
      color = const Color(0xFFB8860B);
    } else if (active) {
      color = const Color(0xFF1E5993);
    } else {
      color = const Color(0xFFFFFDF0);
    }

    return Container(
      width: 19.w,
      height: 19.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: active || completed ? color : Colors.black,
          width: 1.3.w,
        ),
      ),
    );
  }

  Widget _buildLine(int index) {
    final bool completed = index < currentStep;

    return Container(
      height: 1.2.h,
      color: completed
          ? Color.fromRGBO(184, 134, 11, 0.5)
          : Color.fromRGBO(16, 28, 22, 0.5),
    );
  }

  Color _getLabelColor(int index) {
    if (index == currentStep) {
      return const Color(0xFF1E5993);
    }

    return Colors.black;
  }

  TextAlign _getTextAlignment(int index) {
    if (index == 0) {
      return TextAlign.left;
    }

    if (index == steps.length - 1) {
      return TextAlign.right;
    }

    return TextAlign.center;
  }
}

class _TimelineItem extends StatelessWidget {
  final String title;
  final String date;
  final String desc;
  final bool isLast;

  const _TimelineItem({
    required this.title,
    required this.date,
    required this.desc,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 25.w,
            child: Column(
              children: [
                Container(
                  width: 25.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFFFFEF4),
                    border: Border.all(
                      color: const Color(0xFF101C16),
                      width: 1.w,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 10.w,
                      height: 10.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF101C16),
                      ),
                    ),
                  ),
                ),
                // Vertical Line
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1..w,
                      color: const Color(0xFF000000),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 17.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF101C16),
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    date,
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(42, 41, 51, 0.5),
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    desc,
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(42, 41, 51, 0.5),
                      letterSpacing: -0.2,
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
}
