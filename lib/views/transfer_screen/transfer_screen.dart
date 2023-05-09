import 'package:flutter/material.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/share/style/colors.dart';
import 'package:tabcash/views/request_screen/request_screen.dart';
import 'package:tabcash/views/send_screen/send_screen.dart';
import 'package:tabcash/views/transfer_screen/num_pad.dart';

class TransferScreen extends StatelessWidget {
  TransferScreen({Key? key}) : super(key: key);

  // text controller
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultWhiteColorFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: defaultWhiteColorFF,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the entered numbers
            const Text(
              'Transfer',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: defaultColorB8_30,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: defaultTextFormField(
                        controll: _myController,
                        type: TextInputType.none,
                        textAlign: TextAlign.center,
                        hintText: 'EGP 0',
                        colorBorder: defaultColorB8_30,
                        colorBorderFocuse: defaultColorB8_30,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: defaultColorGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // implement the custom NumPad
            NumPad(
              buttonSize: 60,
              iconSize: 30,
              buttonColor: defaultWhiteColorFF,
              iconColor: Colors.black,
              controller: _myController,
              delete: () {
                _myController.text = _myController.text
                    .substring(0, _myController.text.length - 1);
              },
              // do something with the input numbers
              dotFunction: () {
                _myController.text += '.';
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                defaultButton(
                  function: () {
                    navigateto(context, RequestScreen());
                  },
                  color: defaultBlueColor0D,
                  text: 'Request',
                  colorText: Colors.white,
                  width: 140.0,
                ),
                const SizedBox(
                  width: 40.0,
                ),
                defaultButton(
                  function: () {
                    navigateto(context, SendScreen());
                  },
                  color: defaultBlueColor0D,
                  text: 'Send',
                  colorText: Colors.white,
                  width: 140.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
