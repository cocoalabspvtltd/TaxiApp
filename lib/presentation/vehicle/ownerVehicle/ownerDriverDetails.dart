import 'package:intl/intl.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_app/services/image_picker.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/widgets/ww_imagecontainer.dart';
// import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';

class OwnerDriverDetailsScreen extends StatelessWidget {
  final String type;
  const OwnerDriverDetailsScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<VehicleController>();

    return Scaffold(
      appBar: appBars(text: 'Driver Details', centertitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              OwnerDriverDetail(ctr: ctr, type: type),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetBuilder<VehicleController>(
                    id: 'ddLoader',
                    builder: (_) {
                      return Expanded(
                        child: customButton(
                          txt: 'Save',
                          height: true,
                          loading: ctr.ddLoader,
                          color: violetcolor,
                          onpressed: () => ctr.apiVehicleEdit(type),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: customButton(
                        txt: 'Back',
                        height: true,
                        color: violetcolor,
                        onpressed: () => Get.back()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OwnerDriverDetail extends StatelessWidget {
  const OwnerDriverDetail({
    super.key,
    required this.ctr,
    required this.type,
  });

  final VehicleController ctr;
  final String type;

  @override
  Widget build(BuildContext context) {
    Future imagePopup(BuildContext context,
        {Function()? onCamera, Function()? onGallery, Funtion}) async {
      return showModalBottomSheet(
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: Icon(Icons.camera_alt, color: violetcolor),
                title: Text('Camera'),
                onTap: () {
                  if (onCamera != null) onCamera();
                  ;
                  Navigator.of(context).pop();
                }),
            ListTile(
                leading: Icon(Icons.image, color: violetcolor),
                title: Text('Gallery'),
                onTap: () {
                  if (onGallery != null) onGallery();
                  Navigator.of(context).pop();
                })
          ],
        ),
      );
    }

    Future<ImagePickerModel?> pickGallery() async =>
        await getIt<CustomImagePicker>()
            .imagePicker(context, source: ImageSource.gallery);

    Future<ImagePickerModel?> pickCamera() async =>
        await getIt<CustomImagePicker>()
            .imagePicker(context, source: ImageSource.camera);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        profileTexts('License Number', 'License Number',
            controller: ctr.ddLicenseNumber),
        SizedBox(height: 20),
        Text('License Picture', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        GetBuilder<VehicleController>(
          id: 'ddLicencePicture',
          builder: (_) {
            return InkWell(
              onTap: () async {
                imagePopup(context, onCamera: () async {
                  ctr.ddLicencePicture = await pickCamera();
                  ctr.update(['ddLicencePicture']);
                }, onGallery: () async {
                  ctr.ddLicencePicture = await pickGallery();
                  ctr.update(['ddLicencePicture']);
                });
              },
              child: imagecontainer(
                st: 'Upload License image',
                context: context,
                fileImage: ctr.ddLicencePicture,
              ),
            );
          },
        ),
        SizedBox(height: 20),
        Text('Upload Taxi Permit', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        GetBuilder<VehicleController>(
          id: 'ddTaxiPermit',
          builder: (_) {
            return InkWell(
              onTap: () async {
                imagePopup(context, onCamera: () async {
                  ctr.ddTaxiPermit = await pickCamera();
                  ctr.update(['ddTaxiPermit']);
                }, onGallery: () async {
                  ctr.ddTaxiPermit = await pickGallery();
                  ctr.update(['ddTaxiPermit']);
                });
              },
              child: imagecontainer(
                st: 'Upload Taxi Permit',
                context: context,
                fileImage: ctr.ddTaxiPermit,
              ),
            );
          },
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () async {
            DateTime? date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 365)),
            );
            if (date != null) {
              ctr.ddExpireDate.text = DateFormat('dd-MM-yyyy').format(date);
            }
          },
          child: IgnorePointer(
            child: profileTexts('Expity Date', 'Expiry Date',
                controller: ctr.ddExpireDate),
          ),
        ),
        SizedBox(height: 20),
        Text('Upload Documents', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        GetBuilder<VehicleController>(
          id: 'ddUploadDocument',
          builder: (_) {
            return Column(
              children: [
                InkWell(
                  onTap: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles(
                      withData: true,
                      type: FileType.custom,
                      allowedExtensions: ['pdf', 'doc'],
                    );

                    ctr.ddUploadDocument = result;

                    ctr.update(['ddUploadDocument']);
                  },
                  child: imagecontainer(
                    st: 'Upload Documents',
                    context: context,
                    filedoc: ctr.ddUploadDocument,
                    fileUrl: ctr.ownerVehicleDetails?.driver?.documents,
                  ),
                ),
                if (ctr.ddUploadDocument != null ||
                    ctr.ownerVehicleDetails?.driver?.documents != null) ...[
                  SizedBox(height: 10),
                  customButton(
                    txt: "Preview",
                    height: true,
                    color: violetcolor,
                    loading: ctr.pdfViewerLoading,
                    onpressed: () {
                      // if (ctr.ddUploadDocument != null) {
                      //   openPdf(
                      //     context: context,
                      //     url: ctr.ddUploadDocument!.paths.first!,
                      //     isFile: true,
                      //   );
                      // } else {
                      //   openPdf(
                      //     context: context,
                      //     url: ctr.ownerVehicleDetails!.driver!.documents!,
                      //   );
                      // }
                    },
                  ),
                ],
              ],
            );
          },
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

// void openPdf({context, required String url, bool isFile = false}) async {
//   final ctr = Get.find<VehicleController>();
//   ctr.pdfViewerLoading = true;
//   ctr.update(["ddUploadDocument"]);
//   PDFDocument? document;
//   if (isFile) {
//     document = await PDFDocument.fromFile(File(url));
//   } else {
//     // Load from URL
//     document = await PDFDocument.fromURL(url);
//   }
//   ctr.pdfViewerLoading = false;
//   ctr.update(["ddUploadDocument"]);

//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => Scaffold(
//         appBar: appBars(text: "PDF Viewer", centertitle: true),
//         body: PDFViewer(document: document!),
//       ),
//     ),
//   );
// }
