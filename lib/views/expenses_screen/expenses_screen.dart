import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/models/expenses_data_model.dart';
import 'package:tabcash/views/expense_income_screen/expense_income_screen.dart';
import 'package:tabcash/views/expense_outcome_screen/expense_outcome_screen.dart';

import '../../controller/share/style/colors.dart';

class ExpensesScreen extends StatelessWidget {
  ExpensesScreen({Key? key}) : super(key: key);

  List<ExpensesMonthlyDataModel> expensesMonthlyDataIncomeModel = [
    ExpensesMonthlyDataModel(month: 'Jan', money: 90),
    ExpensesMonthlyDataModel(month: 'Feb', money:  10),
    ExpensesMonthlyDataModel(month: 'Mar', money:  34),
    ExpensesMonthlyDataModel(month: 'Apr', money: 65),
    ExpensesMonthlyDataModel(month: 'May', money: 40),
    ExpensesMonthlyDataModel(month: 'June', money: 70),
    ExpensesMonthlyDataModel(month: 'July', money: 60),
  ];
  List<ExpensesMonthlyDataModel> expensesMonthlyDataOutcomeModel = [
    ExpensesMonthlyDataModel(month: 'Jan', money: 10),
    ExpensesMonthlyDataModel(month: 'Feb', money:  60),
    ExpensesMonthlyDataModel(month: 'Mar', money:  54),
    ExpensesMonthlyDataModel(month: 'Apr', money: 90),
    ExpensesMonthlyDataModel(month: 'May', money: 30),
    ExpensesMonthlyDataModel(month: 'June', money: 10),
    ExpensesMonthlyDataModel(month: 'July', money: 90),
  ];

  TooltipBehavior tooltipBehavior = TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    'Expense',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: defaultBlackColor00,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Total balance',
                style: TextStyle(
                  color: defaultBlackColor00.withOpacity(0.36),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'LE 20,000.59',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: defaultBlackColor00,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: defaultBlackColor00,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Month',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: defaultBlackColor00,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                tooltipBehavior: tooltipBehavior,
                  series: <ChartSeries<ExpensesMonthlyDataModel, String>>[
                    ColumnSeries<ExpensesMonthlyDataModel, String>(
                        dataSource: expensesMonthlyDataIncomeModel,
                        xValueMapper: (ExpensesMonthlyDataModel expensesMonthlyDataIncomeModel, _) => expensesMonthlyDataIncomeModel.month,
                        yValueMapper: (ExpensesMonthlyDataModel expensesMonthlyDataIncomeModel, _) => expensesMonthlyDataIncomeModel.money,
                        color: defaultBlueColor0D
                    ),
                    ColumnSeries<ExpensesMonthlyDataModel, String>(
                        dataSource: expensesMonthlyDataOutcomeModel,
                        xValueMapper: (ExpensesMonthlyDataModel expensesMonthlyDataOutcomeModel, _) => expensesMonthlyDataOutcomeModel.month,
                        yValueMapper: (ExpensesMonthlyDataModel expensesMonthlyDataOutcomeModel, _) => expensesMonthlyDataOutcomeModel.money,
                        color: defaultBlueColor0D.withOpacity(0.40),
                    ),
                  ]
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: defaultBlueColor0D,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Income',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: defaultBlackColor00,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: defaultBlueColor0D.withOpacity(0.40),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Outcome',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: defaultBlackColor00,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateto(context, ExpenseIncomeScreen());
                      },
                      child: SvgPicture.asset('assets/images/income_expenses.svg')
                    )
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        navigateto(context, ExpenseOutcomeScreen());
                      },
                      child: SvgPicture.asset(
                        'assets/images/outcome_expenses.svg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
