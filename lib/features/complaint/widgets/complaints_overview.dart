import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jcc_admin/utils/ui_utils.dart';

import '../../../bloc/login/login_bloc.dart';
import '../../../constants/app_color.dart';

class ComplaintsOverview extends StatelessWidget {
  const ComplaintsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        SizedBox(
          width: size.width - 20,
          child: Image.asset(UIUtils.getThumbnailName((context.read<LoginBloc>().state as LoggedIn).employee.department),fit: BoxFit.cover),
        ),

        Container(

          width: size.width - 20,
          height: 75,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: AppColors.blue),
              BoxShadow(color: Colors.black),
            ],
            color: AppColors.darkMidnightBlue,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTextOfOverview(value: '115', label: "Registered"),
              Container(
                height: 40,
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              _buildTextOfOverview(value: '1758', label: "In Process"),
              Container(
                height: 40,
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              _buildTextOfOverview(value: '123', label: "On Hold"),
              Container(
                height: 40,
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              _buildTextOfOverview(value: '28.8', label: "Solved"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextOfOverview({required String value, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontSize: 12),
        )
      ],
    );
  }
}
