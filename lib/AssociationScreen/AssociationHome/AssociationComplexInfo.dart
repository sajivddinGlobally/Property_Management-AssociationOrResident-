import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_association_or_resident/Core/Constant/appColor.dart';

class AssociationComplexInfo extends StatefulWidget {
  const AssociationComplexInfo({super.key});

  @override
  State<AssociationComplexInfo> createState() => _AssociationComplexInfoState();
}

class _AssociationComplexInfoState extends State<AssociationComplexInfo> {
  final buildings = [
    {"block": "A", "name": "Block A", "units": "32 Units"},
    {"block": "B", "name": "Block B", "units": "32 Units"},
    {"block": "C", "name": "Block C", "units": "32 Units"},
    {"block": "D", "name": "Block D", "units": "32 Units"},
  ];

  final documents = [
    {
      'icon': Icons.description_outlined,
      'title': 'Association Documents',
      'subtitle': 'Complex records',
    },
    {
      'icon': Icons.check,
      'title': 'Safety Certificates',
      'subtitle': 'Important certificates',
    },
    {
      'icon': Icons.settings_outlined,
      'title': 'Service Documents',
      'subtitle': 'Service related records',
    },
    {
      'icon': Icons.stop,
      'title': 'Other Records',
      'subtitle': 'Relevant documents',
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
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Complex Information",
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff292832),
                    letterSpacing: -0.64,
                  ),
                ),
                Text(
                  "Complete information about your complex",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 13.sp,
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              _buildPropertyHeader(),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.home_outlined,
                      value: "128",
                      title: "Total Units",
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.grid_view_outlined,
                      value: "4",
                      title: "Buildings / Blocks",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.w),
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
                      icon: Icons.home_outlined,
                      label: "Complex Name",
                      value: "Green Valley Residency",
                    ),
                    _buildDivider(),
                    _buildDetailRow(
                      icon: Icons.my_location_sharp,
                      label: "Address",
                      value: "Jaipur, Rajasthan",
                    ),
                    _buildDivider(),
                    _buildDetailRow(
                      icon: Icons.apartment_outlined,
                      label: "Building / Block Information",
                      value: "4 Residential Blocks",
                    ),
                    _buildDivider(),
                    _buildDetailRow(
                      icon: Icons.grid_view_outlined,
                      label: "Total Units",
                      value: "128 Residential Units",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Buildings / Blocks",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buildings.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 190.w / 94.h,
                ),
                itemBuilder: (context, index) {
                  final building = buildings[index];
                  return _buildBuildingCard(
                    block: building["block"]!,
                    name: building["name"]!,
                    units: building["units"]!,
                  );
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Common Facilities",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _serviceItem(
                      icon: Icons.home_outlined,
                      title: 'Housekeeping Services',
                      subtitle: 'Assigned service provider',
                    ),
                    _buildDivider(),
                    _serviceItem(
                      icon: Icons.person_outline,
                      title: 'Security Services',
                      subtitle: 'Security service provider',
                    ),
                    _buildDivider(),
                    _serviceItem(
                      icon: Icons.electrical_services_outlined,
                      title: 'Electrical Services',
                      subtitle: 'Maintenance service provider',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Important Documents",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 1.7,
                ),
                itemBuilder: (context, index) {
                  return _documentCard(
                    icon: documents[index]['icon'] as IconData,
                    title: documents[index]['title'] as String,
                    subtitle: documents[index]['subtitle'] as String,
                  );
                },
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 15.h),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFBEA),
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 36.w,
                      height: 38.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF000000),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Center(
                        child: Text(
                          'i',
                          style: GoogleFonts.outfit(
                            fontSize: 18.sp,
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
                            'Complex Information',
                            style: GoogleFonts.outfit(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                              letterSpacing: -0.2,
                            ),
                          ),
                          Text(
                            'This information is maintained by the administration and\n'
                            'reflects the current registered complex details.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(41, 41, 51, 0.7),
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: SizedBox(
        width: double.infinity,
        height: 260.h,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/document_img.png", fit: BoxFit.cover),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(16, 28, 22, 0), Color(0xFF101C16)],
                ),
              ),
            ),
            Positioned(
              left: 10.w,
              right: 10.w,
              bottom: 16.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RESIDENTIAL COMPLEX",
                    style: GoogleFonts.outfit(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "Green Valley Residency",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 12.sp,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: Text(
                          "Sector 45, Noida, Uttar Pradesh",
                          style: GoogleFonts.outfit(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            letterSpacing: -0.2,
                          ),
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
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String value,
    required String title,
  }) {
    return Container(
      height: 94.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xFF000000), width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1.w),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(icon, size: 13.sp, color: Color(0xFF111111)),
          ),
          const Spacer(),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              letterSpacing: -0.2,
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
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

  Widget _buildBuildingCard({
    required String block,
    required String name,
    required String units,
  }) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xFF000000), width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 30.w,
                height: 30.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1.w),
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Center(
                  child: Text(
                    block,
                    style: GoogleFonts.outfit(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Icon(Icons.chevron_right, size: 20.sp, color: Color(0xFF2A2933)),
            ],
          ),
          const Spacer(),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
              letterSpacing: -0.2,
            ),
          ),
          Text(
            units,
            style: GoogleFonts.outfit(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _serviceItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 14.h),
      height: 65.h,
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, size: 18.sp, color: Colors.black),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
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
          SizedBox(width: 8.w),
          Container(
            width: 66.w,
            height: 26.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF24B06A), width: 1.w),
              borderRadius: BorderRadius.circular(21.r),
            ),
            child: Center(
              child: Text(
                'Active',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF24B06A),
                  height: 1.1,
                  letterSpacing: -0.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _documentCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 8.h, bottom: 8.h),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBEA),
        border: Border.all(color: Color(0xFF000000), width: 1.w),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon Box
          Container(
            width: 30.w,
            height: 30.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1.w),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Icon(icon, size: 18.sp, color: Color(0xFF000000)),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              height: 1.1,
              letterSpacing: -0.3,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(42, 41, 51, 0.7),
              height: 1.1,
              letterSpacing: -0.3,
            ),
          ),
          const Spacer(),
          Text(
            'View Document ›',
            style: GoogleFonts.outfit(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              height: 1.1,
              letterSpacing: -0.3,
            ),
          ),
        ],
      ),
    );
  }
}
