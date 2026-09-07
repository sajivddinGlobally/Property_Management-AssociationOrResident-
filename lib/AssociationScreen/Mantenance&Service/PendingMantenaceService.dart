import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/Mantenance&Service/MantenanceServiceDetails.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class PendingMantenaceService extends StatefulWidget {
  const PendingMantenaceService({super.key});

  @override
  State<PendingMantenaceService> createState() =>
      _PendingMantenaceServiceState();
}

class _PendingMantenaceServiceState extends State<PendingMantenaceService> {
  int selectedFilter = 0;
  final List<String> filters = [
    "All · 12",
    "High · 03",
    "Medium · 06",
    "Low · 03",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldBg,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pending Maintenance",
                        style: GoogleFonts.outfit(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff292832),
                          letterSpacing: -0.64,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "Maintenance Management",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2A2933),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Maintenance Overview",
                style: GoogleFonts.outfit(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -0.2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Review and track maintenance requests across the complex.",
                style: GoogleFonts.outfit(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
            ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PENDING MAINTENANCE",
                        style: GoogleFonts.outfit(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        "Needs Attention",
                        style: GoogleFonts.outfit(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(184, 134, 11, 0.9),
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    children: [
                      Text(
                        "12",
                        style: GoogleFonts.outfit(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                          letterSpacing: -0.2,
                          height: 1.h,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "open maintenance items",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(42, 41, 51, 0.7),
                          height: 1.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Divider(
                    height: 1,
                    thickness: 0.8,
                    color: Color.fromRGBO(16, 28, 22, 0.5),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(
                        child: _serviceStat(
                          label: "High Prioritys",
                          value: "06",
                        ),
                      ),
                      Expanded(
                        child: _serviceStat(label: "Providers", value: "04"),
                      ),
                      Expanded(
                        child: _serviceStat(label: "Performance", value: "92%"),
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
                          fontSize: 17.sp,
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
                            fontSize: 14.sp,
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
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  child: ServiceCard(
                    icon: Icons.edit_outlined,
                    title: 'Water Leakage Repair',
                    subtitle: 'Maintenance Request · Plumbing',
                    priority: 'HIGH',
                    propertyUnit: 'A-204',
                    raisedDate: 'Raised 20 Aug 2026',
                    category: 'Plumbing',
                    status: 'In Progress',
                    expectedCompletion: '24 Aug 2026',
                    costReference: '₹ 8,500',
                    assignedLabel: 'Assigned Person / Vendor',
                    assignedPerson: 'Raj Kumar · Plumbing',
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MantenanceServiceDetails(),
                        ),
                      );
                    },
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
                "Maintenance records can include category, priority, assigned person/vendor, expected and actual completion, status, cost/reference information, supporting documents and before/after images.",
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
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

  Widget _serviceStat({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.outfit(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.7),
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: GoogleFonts.outfit(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
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

  final String priority;

  final String propertyUnit;
  final String raisedDate;

  final String category;
  final String status;

  final String expectedCompletion;
  final String costReference;

  final String assignedLabel;
  final String assignedPerson;

  final VoidCallback? onTap;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.priority,
    required this.propertyUnit,
    required this.raisedDate,
    required this.category,
    required this.status,
    required this.expectedCompletion,
    required this.costReference,
    required this.assignedLabel,
    required this.assignedPerson,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(21.w, 20.h, 21.w, 18.h),
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
                width: 35.w,
                height: 35.w,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 242, 165, 0.55),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Icon(icon, size: 19.sp, color: const Color(0xFF9D8422)),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.05,
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF4A4A4A),
                        height: 1.05,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              _PriorityBadge(priority: priority),
            ],
          ),
          SizedBox(height: 14.h),
          _divider(),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(
                Icons.home_outlined,
                size: 14.sp,
                color: const Color(0xFFB8860B),
              ),
              SizedBox(width: 6.w),
              Text(
                'Property / Unit',
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF222222),
                ),
              ),
              SizedBox(width: 18.w),
              Expanded(
                child: Text(
                  propertyUnit,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                raisedDate,
                style: GoogleFonts.outfit(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          _divider(),
          SizedBox(height: 14.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _InfoItem(label: 'Category', value: category),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: _InfoItem(
                  label: 'Status',
                  value: status,
                  valueColor: const Color(0xFFC18A00),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _InfoItem(
                  label: 'Expected Completion',
                  value: expectedCompletion,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: _InfoItem(
                  label: 'Cost / Reference',
                  value: costReference,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          _divider(),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                width: 31.w,
                height: 31.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 1.w),
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
              SizedBox(width: 9.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      assignedLabel,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF333333),
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      assignedPerson,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  height: 24.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 242, 165, 0.25),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.black, width: 1.w),
                  ),
                  child: Center(
                    child: Text(
                      'View Details →',
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1.h,
      thickness: 0.8.w,
      color: const Color.fromRGBO(16, 28, 22, 0.45),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoItem({required this.label, required this.value, this.valueColor});

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
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(42, 41, 51, 0.60),
            height: 1,
            letterSpacing: -0.15,
          ),
        ),

        SizedBox(height: 5.h),

        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: valueColor ?? Colors.black,
            height: 1,
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}

class _PriorityBadge extends StatelessWidget {
  final String priority;

  const _PriorityBadge({required this.priority});

  @override
  Widget build(BuildContext context) {
    Color borderColor;

    switch (priority.toUpperCase()) {
      case 'HIGH':
        borderColor = Colors.red;
        break;

      case 'MEDIUM':
        borderColor = const Color(0xFFC18A00);
        break;

      case 'LOW':
        borderColor = const Color(0xFF24B06A);
        break;

      default:
        borderColor = Colors.black;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: borderColor, width: 1.w),
      ),
      child: Text(
        priority.toUpperCase(),
        style: GoogleFonts.outfit(
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          color: borderColor,
          height: 1,
        ),
      ),
    );
  }
}
