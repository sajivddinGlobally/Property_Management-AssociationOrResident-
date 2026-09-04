import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/AssociationScreen/AssociationProperty/AssociationOccupancePropertyStatus.dart';
import 'package:property_association_or_resident/AssociationScreen/Mantenance&Service/MantenanceService.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class AssociationPropertyUnitDetails extends StatefulWidget {
  const AssociationPropertyUnitDetails({super.key});

  @override
  State<AssociationPropertyUnitDetails> createState() =>
      _AssociationPropertyUnitDetailsState();
}

class _AssociationPropertyUnitDetailsState
    extends State<AssociationPropertyUnitDetails> {
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
                    "Property / Unit Details",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff292832),
                      letterSpacing: -0.64,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Complete information for this unit",
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
              _propertyImageCard(),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: _statCard(
                      icon: Icons.grid_view_rounded,
                      value: "A-204",
                      title: "Unit Number",
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Expanded(
                    child: _statCard(
                      icon: Icons.home_outlined,
                      value: "3 BHK",
                      title: "Property Type",
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Expanded(
                    child: _statCard(
                      icon: Icons.diamond_outlined,
                      value: "86",
                      title: "Property Score",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                "Property Information",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
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
                      icon: Icons.grid_view_rounded,
                      label: "Unit Number",
                      value: "Apartment A-204",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.receipt_long_outlined,
                      label: "Block / Building",
                      value: "Block A",
                      action: "View ›",
                    ),
                    _divider(),

                    _informationRow(
                      icon: Icons.home_outlined,
                      label: "Complex",
                      value: "Green Valley Residency",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.location_on_outlined,
                      label: "Location",
                      value: "Jaipur, Rajasthan",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.diamond_outlined,
                      label: "Property Type",
                      value: "Residential Apartment · 3 BHK",
                    ),
                    _divider(),
                    _informationRow(
                      icon: Icons.radio_button_checked,
                      label: "Property Status",
                      value: "Active / Good Condition",
                      bottomPadding: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.h),
              Text(
                "Assigned Owner",
                style: GoogleFonts.outfit(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arjun Sharma",
                                style: GoogleFonts.outfit(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              Text(
                                "Registered Property Owner",
                                style: GoogleFonts.outfit(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 5.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF24B06A),
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Text(
                            "Verified",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF24B06A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Divider(height: 1, color: const Color(0xFF101C16)),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Expanded(
                          child: _ownerInfo(
                            title: "CONTACT",
                            value: "+91 98•••••420",
                          ),
                        ),
                        Expanded(
                          child: _ownerInfo(
                            title: "OWNERSHIP",
                            value: "Registered Owner",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Occupancy Status",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: -0.2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>
                              AssociationOccupancePropertyStatus(),
                        ),
                      );
                    },
                    child: Text(
                      "View Status ›",
                      style: GoogleFonts.outfit(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 12.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 33.h,
                          width: 33.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/associationImage/currently.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Currently Occupied",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              Text(
                                "Unit occupancy information",
                                style: GoogleFonts.outfit(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                  letterSpacing: -0.2,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF1E5993),
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Text(
                            "Occupied",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1E5993),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 3.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF101C16),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Occupancy",
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: -0.2,
                          ),
                        ),
                        Text(
                          "Active",
                          style: GoogleFonts.outfit(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    "Property Performance",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: -0.2,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View Details",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Icon(Icons.chevron_right, size: 17.sp, color: Colors.black),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      height: 50.w,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 45.w,
                            height: 45.w,
                            child: CircularProgressIndicator(
                              value: 0.86,
                              strokeWidth: 5.w,
                              backgroundColor: const Color(0xFF101C16),
                              color: Color(0xFF4A8266),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "86%",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF101C16),
                                  letterSpacing: -0.2,
                                  height: 1.h,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "/100%",
                                style: GoogleFonts.outfit(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF101C16),
                                  letterSpacing: -0.2,
                                  height: 1.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Property Score",
                            style: GoogleFonts.outfit(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF101C16),
                              letterSpacing: -0.2,
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "Overall property performance based on maintenance, cleanliness, security and inspections",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.1,
                              color: Color.fromRGBO(42, 41, 51, 0.7),
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Row(
                            children: [
                              Container(
                                height: 7.h,
                                width: 7.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF24B06A),
                                ),
                              ),
                              SizedBox(width: 3.w),
                              Text(
                                "Good Performance",
                                style: GoogleFonts.outfit(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF24B06A),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    "Recent Property Activity",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: -0.2,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Icon(Icons.chevron_right, size: 17.sp, color: Colors.black),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _activityItem(
                      icon: "!",
                      title: "Inspection Completed",
                      subtitle: "Latest property inspection recorded",
                      date: "15 Aug",
                    ),
                    _divider(),
                    _activityItem(
                      icon: "▣",
                      title: "Maintenance Updated",
                      subtitle: "Property maintenance record updated",
                      date: "12 Aug",
                    ),
                    _divider(),
                    _activityItem(
                      icon: "₹",
                      title: "Document Added",
                      subtitle: "New property document available",
                      date: "09 Aug",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Property Records",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -0.2,
                ),
              ),
              SizedBox(height: 16.h),
              GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                crossAxisSpacing: 20.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 1.3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _recordCard(
                    icon: "✓",
                    title: "Inspection",
                    description: "View inspection records and findings.",
                    buttonText: "View Records →",
                    onTap: () {},
                  ),
                  _recordCard(
                    icon: "⚒",
                    title: "Maintenance",
                    description: "View maintenance activity and history.",
                    buttonText: "View Records →",
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MantenanceService(),
                        ),
                      );
                    },
                  ),
                  _recordCard(
                    icon: "◌",
                    title: "Complaints",
                    description: "View property-related complaints and issues.",
                    buttonText: "View Records →",
                    onTap: () {},
                  ),
                  _recordCard(
                    icon: "▤",
                    title: "Documents",
                    description: "Access documents linked to this property.",
                    buttonText: "View Documents →",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _propertyImageCard() {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Color(0xFF17221D), width: 1.w),
        image: const DecorationImage(
          image: AssetImage("assets/property_img (2).png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Dark gradient at bottom
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.10),
                    Colors.black.withOpacity(0.85),
                  ],
                  // stops: const [0.35, 0.58, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 17.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PROPERTY UNIT",
                        style: GoogleFonts.outfit(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "Apartment A-204",
                        style: GoogleFonts.outfit(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "Block A · Green Valley Residency · Jaipur",
                        style: GoogleFonts.outfit(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    border: Border.all(color: Color(0xFF24B06A), width: 1.w),
                  ),
                  child: Text(
                    "Active",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF24B06A),
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

  Widget _statCard({
    required IconData icon,
    required String value,
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 8.w, top: 7.h, right: 8.w, bottom: 7.h),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000), width: 1.w),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1.w),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Icon(icon, size: 13.sp, color: Colors.black),
          ),
          SizedBox(height: 3.h),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: -0.2,
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: -0.2,
              height: 1.h,
            ),
          ),
        ],
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
                  fontSize: 13.sp,
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
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101C16),
                  letterSpacing: -0.2,
                ),
              ),
            ],
          ),
        ),
        if (action != null)
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: Text(
              action,
              style: GoogleFonts.outfit(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A2933),
                letterSpacing: -0.2,
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

  Widget _ownerInfo({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.outfit(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(42, 41, 51, 0.7),
            letterSpacing: -0.2,
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
            color: Color(0xFF101C16),
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }

  Widget _activityItem({
    required String icon,
    required String title,
    required String subtitle,
    required String date,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 36.h,
            width: 36.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF171717), width: 1.w),
              borderRadius: BorderRadius.circular(5.r),
            ),
            alignment: Alignment.center,
            child: Text(
              icon,
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
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
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101C16),
                    letterSpacing: -0.2,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.1,
                    color: Color.fromRGBO(42, 41, 51, 0.7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Text(
            date,
            style: GoogleFonts.outfit(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF2A2933),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recordCard({
    required String icon,
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF171717), width: 1.w),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000), width: 1.w),
                borderRadius: BorderRadius.circular(4.r),
              ),
              alignment: Alignment.center,
              child: Text(
                icon,
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              title,
              style: GoogleFonts.outfit(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                letterSpacing: -0.2,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              description,
              style: GoogleFonts.outfit(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(42, 41, 51, 0.7),
                letterSpacing: -0.2,
              ),
            ),
            Spacer(),
            Text(
              buttonText,
              style: GoogleFonts.outfit(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF101C16),
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
