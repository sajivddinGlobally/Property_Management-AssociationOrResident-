import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class MantenanceChargeStatus extends StatefulWidget {
  const MantenanceChargeStatus({super.key});

  @override
  State<MantenanceChargeStatus> createState() => _MantenanceChargeStatusState();
}

class _MantenanceChargeStatusState extends State<MantenanceChargeStatus> {
  int _selectedFilterIndex = 0;
  final List<String> _filters = ['All Units', 'Paid', 'Pending', 'Overdue'];

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
                        "Maintenance Charge Status",
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2A2933),
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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.black, width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MONTHLY COLLECTION",
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        "AUGUST 2026",
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF24B06A),
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Collected",
                              style: GoogleFonts.outfit(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.05,
                                letterSpacing: -0.3,
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              "₹ 8,42,500",
                              style: GoogleFonts.outfit(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.05,
                                letterSpacing: -0.3,
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              "Recorded maintenance charges for the current month",
                              style: GoogleFonts.outfit(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF4A4A4A),
                                height: 1.05,
                                letterSpacing: -0.15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _divider(),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSummaryItem(
                        "Total Units",
                        "120",
                        "registered",
                        const Color(0xFFC18A00),
                      ),
                      _buildSummaryItem(
                        "Paid",
                        "94",
                        "units",
                        const Color(0xFFC18A00),
                      ),
                      _buildSummaryItem(
                        "Pending",
                        "26",
                        "units",
                        const Color(0xFFC18A00),
                      ),
                      SizedBox(width: 100.w),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),
            Text(
              "Charge Overview",
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Expanded(
                  child: _buildGridCard(
                    Icons.check,
                    "Paid Amount",
                    "₹8.42L",
                    "94 units recorded",
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: _buildGridCard(
                    Icons.access_time_outlined,
                    "Pending Amount",
                    "₹2.18L",
                    "26 units pending",
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Expanded(
                  child: _buildGridCard(
                    Icons.warning_amber_rounded,
                    "Defaulters",
                    "11",
                    "Past due date",
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: _buildGridCard(
                    Icons.attach_money_outlined,
                    "Overdue",
                    "₹86K",
                    "11 units overdue",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Collection Progress",
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 10.h),
            // Progress Card
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              decoration: BoxDecoration(
                color: const Color(0xff101C16),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "August Collection",
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "79%",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 4.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 0.79,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF24B06A), // Green progress
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Collected - ₹8.42L",
                        style: GoogleFonts.outfit(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Total Due - ₹10.60L",
                        style: GoogleFonts.outfit(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Payment Status",
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.black, width: 1.w),
              ),
              child: Column(
                children: [
                  _buildListItem(
                    icon: Icons.check,
                    title: "Paid",
                    subtitle: "Maintenance charge recorded",
                    value: "94",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildListItem(
                    icon: Icons.warning_amber_rounded,
                    title: "Pending",
                    subtitle: "Payment not yet recorded",
                    value: "15",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildListItem(
                    icon: Icons.error_outline_rounded,
                    title: "Overdue",
                    subtitle: "Due date has passed",
                    value: "11",
                    onTap: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),
            Text(
              "Unit-wise Status",
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 16.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  _filters.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: _buildFilterPill(index, _filters[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.black, width: 1.w),
              ),
              child: Column(
                children: [
                  _buildUnitItem(
                    imagePath: "assets/unit.png",
                    title: "Flat A-101",
                    subtitle: "Maintenance · August 2026",
                    amount: "₹7,500",
                    statusText: "PAID",
                    statusColor: const Color(0xFF666666),
                  ),
                  _divider(),
                  _buildUnitItem(
                    imagePath: "assets/unit.png",
                    title: "Flat A-204",
                    subtitle: "Maintenance · August 2026",
                    amount: "₹7,500",
                    statusText: "PENDING",
                    statusColor: const Color(0xFFD66060),
                  ),
                  _divider(),
                  _buildUnitItem(
                    imagePath: "assets/unit.png",
                    title: "Flat B-302",
                    subtitle: "Maintenance · August 2026",
                    amount: "₹7,500",
                    statusText: "OVERDUE",
                    statusColor: const Color(0xFF5AB381),
                  ),
                  _divider(),
                  _buildUnitItem(
                    imagePath: "assets/unit.png",
                    title: "Flat C-108",
                    subtitle: "Maintenance · August 2026",
                    amount: "₹7,500",
                    statusText: "PAID",
                    statusColor: const Color(0xFF666666),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1.h,
      thickness: 0.8.w,
      color: const Color.fromRGBO(42, 41, 51, 0.4),
    );
  }

  Widget _buildSummaryItem(
    String label,
    String value,
    String subValue,
    Color subValueColor,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.outfit(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF4A4A4A),
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: -0.2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          subValue,
          style: GoogleFonts.outfit(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: subValueColor,
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }

  Widget _buildGridCard(
    IconData icon,
    String title,
    String value,
    String subtitle,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.black, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 242, 165, 0.4),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(icon, size: 16.sp, color: const Color(0xFFC18A00)),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(42, 41, 51, 0.7),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            subtitle,
            style: GoogleFonts.outfit(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF4A4A4A),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String value,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(icon, size: 18.sp, color: Colors.black),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4A4A4A),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  value,
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Units",
                  style: GoogleFonts.outfit(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4A4A4A),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterPill(int index, String label) {
    bool isSelected = _selectedFilterIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFilterIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff101C16) : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? const Color(0xff101C16) : Colors.black,
            width: 1.w,
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.outfit(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
            letterSpacing: -0.2,
          ),
        ),
      ),
    );
  }

  Widget _buildUnitItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String amount,
    required String statusText,
    required Color statusColor,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 17.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.asset(
                imagePath,
                width: 30.w,
                height: 30.w,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 30.w,
                    height: 30.w,
                    color: Colors.grey[200],
                    child: Icon(
                      Icons.home_work_outlined,
                      size: 20.sp,
                      color: Colors.black54,
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
                  title,
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: -0.2,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.outfit(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4A4A4A),
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: GoogleFonts.outfit(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                statusText,
                style: GoogleFonts.outfit(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: statusColor,
                  letterSpacing: -0.1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
