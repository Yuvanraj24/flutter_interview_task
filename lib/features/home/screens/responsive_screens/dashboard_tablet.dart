import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/sizes.dart';
import 'package:flutter_task_project/features/home/screens/widgets/dashboard_card.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

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
            Row(
              children: [
                Expanded(
                    child: SiajDashboardCard(
                  title: 'Number of JSON Data',
                  subTitle: '8',
                )),
                SizedBox(width: AppSizes.spaceBtwItems),
                Expanded(
                  child: SiajDashboardCard(
                    title: 'Number of User Data Loaded',
                    subTitle: '105',
                  ),
                ),
              ],
            ),
          ]),
      ),
    ));
  }
}
