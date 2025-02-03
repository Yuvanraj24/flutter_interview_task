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
            SiajDashboardCard(
              title: 'Sales total',
              subTitle: '\$365.6',
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            SiajDashboardCard(
              title: 'Average order value',
              subTitle: '\$25.6',
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            SiajDashboardCard(
              title: 'Total orders',
              subTitle: '\$37',
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            SiajDashboardCard(
              title: 'Visitors',
              subTitle: '\$25,045',
            ),
          ],
        ),
      ),
    ));
  }
}
