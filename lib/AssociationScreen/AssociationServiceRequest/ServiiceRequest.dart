import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationServiceRequest/ServiceRequestDetails.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class ServiiceRequest extends StatefulWidget {
  const ServiiceRequest({super.key});

  @override
  State<ServiiceRequest> createState() => _ServiiceRequestState();
}

class _ServiiceRequestState extends State<ServiiceRequest> {
  int selectedFilter = 0;

  final List<String> filters = ["All", "Pending", "In Progress", "Resolved"];

  final List<Map<String, dynamic>> complaints = const [
    {
      "title": "Water Leakage",
      "flat": "Flat B-302",
      "issue": "Bathroom pipe",
      "requestId": "SR-1024",
      "name": "Ahmed Khan",
      "status": "Pending",
      "date": "24 Aug",
      "icon": Icons.add_circle_outline,
    },
    {
      "title": "Water Leakage",
      "flat": "Flat B-302",
      "issue": "Bathroom pipe",
      "requestId": "SR-1024",
      "name": "Ahmed Khan",
      "status": "In Progress",
      "date": "24 Aug",
      "icon": Icons.waterfall_chart_outlined,
    },
    {
      "title": "Water Leakage",
      "flat": "Flat B-302",
      "issue": "Bathroom pipe",
      "requestId": "SR-1024",
      "name": "Ahmed Khan",
      "status": "High",
      "date": "24 Aug",
      "icon": Icons.home_work_outlined,
    },
    {
      "title": "Water Leakage",
      "flat": "Flat B-302",
      "issue": "Bathroom pipe",
      "requestId": "SR-1024",
      "name": "Ahmed Khan",
      "status": "Resolved",
      "date": "24 Aug",
      "icon": Icons.check,
    },
    {
      "title": "Water Leakage",
      "flat": "Flat B-302",
      "issue": "Bathroom pipe",
      "requestId": "SR-1024",
      "name": "Ahmed Khan",
      "status": "Pending",
      "date": "24 Aug",
      "icon": Icons.trending_up,
    },
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
                  "Service Requests",
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff292832),
                    letterSpacing: -0.64,
                  ),
                ),
                Text(
                  "Association / Services",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2A2933),
                    letterSpacing: -0.24,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: _summaryCard(
                      title: "ACTIVE REQUESTS",
                      value: "18",
                      subtitle: "Requests requiring attention",
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: _summaryCard(
                      title: "RESOLVED",
                      value: "42",
                      subtitle: "This month",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "All Requests",
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                  Text(
                    "60 TOTAL",
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
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
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: List.generate(filters.length, (index) {
                  final isSelected = selectedFilter == index;
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF0C1B15)
                              : const Color(0xFFFFFCEB),
                          border: Border.all(color: Colors.black, width: 1.w),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          filters[index],
                          style: GoogleFonts.outfit(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : Colors.black,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.black, width: 1.w),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: complaints.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1,
                    thickness: 1,
                    color: const Color(0xFFC6C6C6),
                  );
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      bottom: 14.h,
                      left: 11.w,
                      right: 11.w,
                    ),
                    child: ComplaintItem(
                      data: complaints[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ServiceRequestDetails(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Request Summary",
                style: GoogleFonts.outfit(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: _summaryCard(
                      title: "PENDING",
                      value: "09",
                      subtitle: "Awaiting action",
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: _summaryCard(
                      title: "IN PROGRESS",
                      value: "09",
                      subtitle: "Currently assigned",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  Widget _summaryCard({
    required String title,
    required String value,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: -0.2,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: -0.2,
              height: 1,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(41, 41, 51, 0.7),
              height: 1,
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }
}

class ComplaintItem extends StatelessWidget {
  final Map<String, dynamic> data;
  final VoidCallback onTap;

  const ComplaintItem({super.key, required this.data, required this.onTap});

  Color _getStatusColor(String status) {
    switch (status) {
      case "Pending":
        return const Color(0xFFFFF6D5);

      case "In Progress":
        return const Color(0xFFB8D0DC);

      case "High":
        return const Color(0xFFF7B5A5);

      case "Resolved":
        return const Color(0xFFC5C3BD);

      default:
        return const Color(0xFFEDEDED);
    }
  }

  Color _getStatusTextColor(String status) {
    switch (status) {
      case "Pending":
        return const Color(0xFFC08A00);

      case "In Progress":
        return const Color(0xFF17618A);

      case "High":
        return const Color(0xFFD82F19);

      case "Resolved":
        return const Color(0xFF282B3A);

      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String status = data["status"] ?? "";

    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 36.w,
            height: 36.w,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 242, 165, 0.6),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Icon(
              data["icon"],
              size: 18.sp,
              color: const Color(0xFFB8860B),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["title"] ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    color: Color(0xFF000000),
                    letterSpacing: -0.2,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "${data["flat"]} · ${data["issue"]}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "${data["requestId"]} · ${data["name"]}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 81.w,
                height: 20.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _getStatusColor(status),
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Text(
                  status,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: _getStatusTextColor(status),
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                data["date"] ?? "",
                style: GoogleFonts.outfit(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -0.2,
                ),
              ),
            ],
          ),
          SizedBox(width: 7.w),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 25.w,
              height: 25.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE3E3E3),
              ),
              child: Icon(
                Icons.chevron_right,
                size: 20.sp,
                color: const Color(0xFF2A2933),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
