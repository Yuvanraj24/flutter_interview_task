import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/sizes.dart';
import 'package:flutter_task_project/features/home/screens/widgets/dashboard_card.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: AppSizes.spaceBtwSections),

            /// CARDS
            SizedBox(
              width: double.infinity,
              child: SiajDashboardCard(
                title: 'Number of JSON Data',
                subTitle: '8',
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: SiajDashboardCard(
                title: 'Number of User Data Loaded',
                subTitle: '105',
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
