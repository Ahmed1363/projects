import 'package:flutter/material.dart';

import '../widget/iconandtext.dart';
import '../widget/widgetrow.dart';
import '../widget/wigetcontainer.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 230, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 69, 190),
        title: Center(child: Text('تقارير')),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 58, 2, 95),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'حصالة ارباحي',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 167, 167, 167),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 5),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 58, 2, 95),
                                // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(
                                child: Text(
                                  '0.0%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'رصيدي ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 167, 167, 167),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 5),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 58, 2, 95),
                                // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(
                                child: Text(
                                  '0.0%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 247, 241, 246),
              ),
              margin: EdgeInsets.all(15),

              // width: 300,
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconandtext(
                            text: 'الارصدة', icon: Icons.assessment_outlined),
                        iconandtext(text: 'الحوالات المالية', icon: Icons.paid),
                        iconandtext(text: 'اخرى', icon: Icons.filter_list),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconandtext(text: 'سجل', icon: Icons.article),
                        iconandtext(text: 'تسديدات الفروع', icon: Icons.dns),
                        iconandtext(
                            text: 'مشتريات المتجر',
                            icon: Icons.account_balance),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconandtext(text: 'كشف حسابات', icon: Icons.fact_check),
                        iconandtext(
                            text: 'التسديدات', icon: Icons.receipt_long),
                        iconandtext(text: 'كروت الواي فاي', icon: Icons.wifi),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 247, 241, 246),
              ),
              margin: EdgeInsets.all(15),

              // width: 300,
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      iconandtext(text: 'كمية', icon: Icons.filter_2),
                      iconandtext(text: 'مبلغ', icon: Icons.paid),
                    ],
                  ),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'التسدسدات'),
                  Divider(),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'الشرائح'),
                  Divider(),
                  widgetrow(
                      icon: Icons.arrow_back_ios, text: 'الحوالات المرسالة'),
                  Divider(),
                  widgetrow(
                      icon: Icons.arrow_back_ios, text: 'الحوالات المستلمة'),
                  Divider(),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'كروت واي فاي'),
                  Divider(),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'مشتريات المتجر'),
                  Divider(),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'بنك الارقام'),
                  Divider(),
                  widgetrow(icon: Icons.arrow_back_ios, text: 'اخرى'),
                  Divider(),
                ],
              ),
            ),
            Row(
              children: [
                wigetcontainer(
                  text: 'سندات صرف',
                  width: 165,
                ),
                wigetcontainer(
                  text: 'سندات قبض',
                  width: 165,
                ),
              ],
            ),
            Row(
              children: [
                wigetcontainer(
                  text: 'عليكم تحويلات',
                  width: 165,
                ),
                wigetcontainer(
                  text: 'لكم تحويلات',
                  width: 165,
                ),
              ],
            ),
            wigetcontainer(text: 'عمولاتي'),
          ],
        ),
      ),
    );
  }
}
