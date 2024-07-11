import 'package:flutter/material.dart';
import 'package:learn_flutter/01_widget_rule/data/model/pop_up.dart';

class PopUpDialog extends StatelessWidget {
  final PopUp popUp;

  const PopUpDialog({super.key, required this.popUp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(
                      -4.0,
                      -4.0,
                    ),
                    blurRadius: 1.0,
                    spreadRadius: 1.0)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Text(
                      'Recipe Link',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Copy recipe link and share your recipe link with',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'friends and fammily',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 31,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Colors.grey.shade300),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  popUp.url,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 9,
                            child: SizedBox(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Copy Link',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
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
          const Positioned(
            right: 10,
            child: Icon(
              Icons.close,
            ),
          ),
        ],
      ),
    );
  }
}
