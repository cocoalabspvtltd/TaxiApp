import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/utils/exports.dart';

class OwnerAddVehicleScreen extends StatelessWidget {
  const OwnerAddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var ctr = Get.find<VehicleController>();
    return Scaffold(
        appBar: appBars(
          text: 'Add Vehicle',
          centertitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    profileTexts('Register No', 'Register No.',
                        controller: ctr.avRegisterNoCtr),
                    const SizedBox(height: 25),
                    profileTexts('Car Model', 'Car Model',
                        controller: ctr.avCarModelCtr),
                    const SizedBox(height: 25),
                    profileTexts('Seats', 'No.of Seats',
                        controller: ctr.avSeatsCtr),
                    const SizedBox(height: 25),
                    profileTexts('Category', 'Category.',
                        controller: ctr.avCategoryCtr),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              GetBuilder<VehicleController>(
                  id: 'addVehicleloader',
                  builder: (_) {
                    return customButton(
                        txt: 'Submit',
                        context: context,
                        height: true,
                        color: violetcolor,
                        loading: _.addVehicleloader,
                        onpressed: () => ctr.apiAddVehicle(context));
                  })
            ],
          ),
        ));
  }
}
