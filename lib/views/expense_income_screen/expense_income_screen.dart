import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tabcash/controller/cubits/expenses_income_cubit.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/states/expenses_income_states.dart';

import '../../controller/share/style/colors.dart';
import '../../models/expenses_data_model.dart';

class ExpenseIncomeScreen extends StatelessWidget {
  ExpenseIncomeScreen({Key? key}) : super(key: key);

  TooltipBehavior tooltipBehavior = TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpensesIncomeCubit(),
      child: BlocConsumer<ExpensesIncomeCubit , ExpensesIncomeStates>(
        listener: (context, state) {

        },
        builder: (context, state) {

          ExpensesIncomeCubit cubit = ExpensesIncomeCubit.get(context);

          return  Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Your Expenses',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: defaultBlackColor00,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 150,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: defaultColorBA_50,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 40,
                              width: 150,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    cubit.isWeekly = true;
                                    cubit.toggleTapedItem(true);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: cubit.isWeekly ? defaultBlueColor0D : null,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: 40,
                                    width: 75,
                                    child: Center(
                                      child: Text(
                                        'Weekly',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: cubit.isWeekly ? defaultWhiteColorFF : defaultBlackColor00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    cubit.isWeekly = false;
                                    cubit.toggleTapedItem(false);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: !cubit.isWeekly? defaultBlueColor0D: null,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: 40,
                                    width: 75,
                                    child: Center(
                                      child: Text(
                                        'Monthly',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: !cubit.isWeekly ?defaultWhiteColorFF : defaultBlackColor00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    if(cubit.isWeekly)
                      SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        tooltipBehavior: tooltipBehavior,
                        series: <ChartSeries<ExpensesWeeklyDataModel, String>>[
                          SplineSeries(
                            dataSource: cubit.expensesWeeklyDataIncomeModel,
                            xValueMapper: (ExpensesWeeklyDataModel expenses, _) => expenses.week,
                            yValueMapper: (ExpensesWeeklyDataModel expenses, _) => expenses.money,
                            color: defaultBlueColor0D,
                            enableTooltip: true,
                          ),
                        ]
                    ),
                    if(!cubit.isWeekly)
                      SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          tooltipBehavior: tooltipBehavior,
                          series: <ChartSeries<ExpensesMonthlyDataModel, String>>[
                            SplineSeries(
                              dataSource: cubit.expensesMonthlyDataIncomeModel,
                              xValueMapper: (ExpensesMonthlyDataModel expenses, _) => expenses.month,
                              yValueMapper: (ExpensesMonthlyDataModel expenses, _) => expenses.money,
                              color: defaultBlueColor0D,
                              enableTooltip: true,
                            ),
                          ]
                      ),
                    SizedBox(
                      height: 25,
                    ),
                    if(cubit.isWeekly)
                      Text(
                        'This week',
                        style: TextStyle(
                          color: defaultBlackColor00,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    if(!cubit.isWeekly)
                      Text(
                        'This month',
                        style: TextStyle(
                          color: defaultBlackColor00,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    if(cubit.isWeekly)
                      Column(
                      children: [
                        ExpensesItemComponent(
                          iconPath: 'assets/svgs/shopping_cart.svg',
                          text: 'Shopping',
                          money: 'EGP1000',
                          percentage: 65,
                        ),
                        ExpensesItemComponent(
                          iconPath: 'assets/svgs/donate.svg',
                          text: 'Donation',
                          money: 'EGP800',
                          percentage: 30,
                        ),
                        ExpensesItemComponent(
                          iconPath: 'assets/svgs/pay_bills_icon.svg',
                          text: 'Pay bills',
                          money: 'EGP1000',
                          percentage: 65,
                        ),
                        ExpensesItemComponent(
                          iconPath: 'assets/svgs/pay_bills_icon.svg',
                          text: 'Shopping',
                          money: 'EGP1000',
                          percentage: 46,
                        ),
                        ExpensesItemComponent(
                          iconPath: 'assets/svgs/donate.svg',
                          text: 'Donation',
                          money: 'EGP700',
                          percentage: 65,
                        ),
                      ],
                    ),
                    if(!cubit.isWeekly)
                      Column(
                        children: [
                          ExpensesItemComponent(
                            iconPath: 'assets/svgs/shopping_cart.svg',
                            text: 'Shopping',
                            money: 'EGP100',
                            percentage: 25,
                          ),
                          ExpensesItemComponent(
                            iconPath: 'assets/svgs/donate.svg',
                            text: 'Donation',
                            money: 'EGP8300',
                            percentage: 80,
                          ),
                          ExpensesItemComponent(
                            iconPath: 'assets/svgs/pay_bills_icon.svg',
                            text: 'Pay bills',
                            money: 'EGP2000',
                            percentage: 5,
                          ),
                          ExpensesItemComponent(
                            iconPath: 'assets/svgs/pay_bills_icon.svg',
                            text: 'Shopping',
                            money: 'EGP5000',
                            percentage: 56,
                          ),
                          ExpensesItemComponent(
                            iconPath: 'assets/svgs/donate.svg',
                            text: 'Donation',
                            money: 'EGP700',
                            percentage: 65,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}