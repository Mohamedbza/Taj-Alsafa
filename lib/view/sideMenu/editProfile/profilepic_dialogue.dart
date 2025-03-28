import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart'; 
import 'package:tadjelsafa/utilities/constants.dart';

class ProfilePictureUploadDialog extends StatefulWidget {
  const ProfilePictureUploadDialog({super.key});

  @override
  _ProfilePictureUploadDialogState createState() =>
      _ProfilePictureUploadDialogState();
}

class _ProfilePictureUploadDialogState
    extends State<ProfilePictureUploadDialog> {
  File? _image;
  String _uploadedImageUrl = '';
  String _optimizedImageUrl = '';
  String _autoCroppedImageUrl = '';

Future<void> _pickImage() async {
  try {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image, // Allow only image files
      allowMultiple: false, // Allow only one file to be selected
    );

    if (result != null && result.files.isNotEmpty) {
      // Get the selected file
      PlatformFile file = result.files.first;

      // Check if the file path is valid
      if (file.path != null) {
        setState(() {
          _image = File(file.path!);
        });
        print("Selected file: ${file.name}, Path: ${file.path}");
      } else {
        print("File path is null");
      }
    } else {
      print("No file selected or user canceled the picker");
    }
  } catch (e) {
    print("Error picking file: $e");
  }
}

Future<void> _uploadImage(String freelancerId) async {
  if (_image == null) {
    print("No image selected");
    return;
  }

  final uri = Uri.parse('${Constants.uri}/api/upload-profile-picture');
  final request = http.MultipartRequest('POST', uri)
    ..fields['freelancerId'] = freelancerId
    ..files.add(await http.MultipartFile.fromPath('file', _image!.path));

  request.headers['Content-Type'] = 'multipart/form-data';

  try {
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      final result = jsonDecode(responseBody);

      // Update the UI instantly using Provider
       

      setState(() {
        _uploadedImageUrl = result['imageUrl'];
        _optimizedImageUrl = result['optimizeUrl'];
        _autoCroppedImageUrl = result['autoCropUrl'];
      });
        //final freelancerProvider = Provider.of<FreelancerProvider>(context, listen: false);
     // freelancerProvider.updateProfilePicture( _autoCroppedImageUrl);
      print("Image uploaded successfully");
      Navigator.pop(context);
    } else {
      print("Upload failed: ${response.statusCode} - ${response.reasonPhrase}");
    }
  } catch (e) {
    print("Error uploading image: $e");
  }
}

  @override
  Widget build(BuildContext context) {
    //final freelancerId =  Provider.of<FreelancerProvider>(context).freelancer.id;
    return Container(  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: _image != null
                  ? Image.file(
                      _image!,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    )
                 /* : (Provider.of<FreelancerProvider>(context)
                              .freelancer
                              .profilePictureUrl !=
                          null &&
                      Provider.of<FreelancerProvider>(context)
                          .freelancer
                          .profilePictureUrl!
                          .isNotEmpty)
                      ? Image.network(
                          Provider.of<FreelancerProvider>(context)
                              .freelancer
                              .profilePictureUrl!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/account.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            );
                          },
                        )*/
                      : Image.asset(
                          'assets/account.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {
                  _pickImage();
                },
                label: const Text(
                  "اختر صورة",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Beiruti',
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(
                  Icons.image,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {}/* _uploadImage(freelancerId)*/,
                label: const Text(
                  "حفظ الصورة",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Beiruti',
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.cloud_upload),
              ),
            ),
             
          ],
        ),
      ),
    );
  }
}
