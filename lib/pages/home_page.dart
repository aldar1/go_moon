import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceWidth,
          height: deviceHeight,
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
          // color: Colors.red,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(deviceHeight,deviceWidth),
                  
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(deviceHeight,deviceWidth),
              )
            ],
          )
        )
      ),
    );
  }

  Widget _pageTitle (){
    return Container(
      color: Colors.green,
      child: const Text(
        '#GoMoon',
        style: TextStyle(
          fontSize: 70,
          color: Colors.white,
          fontWeight: FontWeight.w800
        ),
      ),
    );
  }
  Widget _astroImageWidget(final deviceHeight,final deviceWidth){
    return Container(
      width: deviceWidth * 0.65,
      height: deviceHeight * 0.60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/astro_moon.png'),
          fit: BoxFit.fill
        )
      ),
    );
  }

  Widget _bookRideWidget(final deviceHeight,final deviceWidth){
    return SizedBox(
      height: deviceHeight*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(deviceWidth),
          _travellersInformationWidge(deviceWidth,),
          _rideButton(deviceWidth,deviceHeight),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget(final deviceWidth){
    return CustomDropDownButton(
      values: const [
        'James Webb Station',
        'Preneure Station'
      ],
      width: deviceWidth,
    );
  }
  Widget _travellersInformationWidge(deviceWidth){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
          values: const ['1','2','3',],
          width: deviceWidth * 0.45,
        ),
        CustomDropDownButton(
          values: const ['Economy','Business','First','Private'],
          width: deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton(final deviceWidth,final deviceHeight){
    return Container(
      margin: EdgeInsets.only(bottom: deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      width: deviceWidth,
      height: 50,
      child: MaterialButton(
        onPressed: (){},
        child: const Text(
          'Book Ride!',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}