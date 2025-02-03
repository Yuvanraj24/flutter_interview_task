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
            Row(children: [
              Expanded(
                  child: SiajDashboardCard(
                title: 'Sales total',
                subTitle: '\$365.6',
              )),
              SizedBox(width: AppSizes.spaceBtwItems),
              Expanded(
                child: SiajDashboardCard(
                  title: 'Average order value',
                  subTitle: '\$25.6',
                ),
              ),
            ]),
            SizedBox(height: AppSizes.spaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: SiajDashboardCard(
                    title: 'Total orders',
                    subTitle: '\$37',
                  ),
                ),
                SizedBox(width: AppSizes.spaceBtwItems),
                Expanded(
                  child: SiajDashboardCard(
                    title: 'Visitors',
                    subTitle: '\$25,045',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
