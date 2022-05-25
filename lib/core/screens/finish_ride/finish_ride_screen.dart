import 'package:beltareeq/core/constants/color_constants.dart';
import 'package:beltareeq/core/screens/home_page/home_page_bloc.dart';
import 'package:beltareeq/core/services/mock_services.dart';
import 'package:beltareeq/core/shared_widgets/location_container.dart';
import 'package:beltareeq/core/shared_widgets/ride_options_widget.dart';
import 'package:beltareeq/core/utils/view_observer.dart';
import 'package:beltareeq/locator.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/custom_text.dart';

class FinishRideScreen extends StatefulWidget {
  const FinishRideScreen({Key? key}) : super(key: key);

  @override
  State<FinishRideScreen> createState() => _FinishRideScreenState();
}

class _FinishRideScreenState extends State<FinishRideScreen> {
  HomePageBloc bloc = HomePageBloc();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(alignment: Alignment.topCenter, child: LocationContianer()),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                            width: 80,
                            height: 3,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "You saved ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}