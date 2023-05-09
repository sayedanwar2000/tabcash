// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/share/style/colors.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);
  TextEditingController from = TextEditingController();
  TextEditingController For = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    right: 20,
                    left: 20,
                  ),
                  child: Card(
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.close,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              const Text(
                                'EGP 2000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'To',
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: defaultTextFormField(
                                        controll: from,
                                        type: TextInputType.text,
                                        border: InputBorder.none,
                                        hintText:
                                        'Name , @username or mobile number',
                                        hintStyle: TextStyle(
                                          color: defaultColorGrey,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                myDivider(
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'For',
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: defaultTextFormField(
                                        controll: For,
                                        type: TextInputType.text,
                                        border: InputBorder.none,
                                        hintText: 'dinner, rest, etc...',
                                        hintStyle: TextStyle(
                                          color: defaultColorGrey,
                                          fontWeight: FontWeight.w300,
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    top: 12,
                    bottom: 12,
                  ),
                  child: Text(
                    'Friends on Tab Cash (7)',
                    style: TextStyle(
                        fontSize: 16,
                        color: defaultColorGrey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Card(
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: defaultColorD9,
                                child: Icon(
                                  Icons.person_outline,
                                  size: 40,
                                  color: defaultColor44,
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Rose William',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '@rosy_willam',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: defaultColor15_76,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                        itemCount: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: defaultButton(
              function: () {},
              color: defaultBlueColor0D,
              text: 'Request',
              colorText: Colors.white,
              width: 140.0,
            ),
          ),
        ],
      ),
    );
  }
}
