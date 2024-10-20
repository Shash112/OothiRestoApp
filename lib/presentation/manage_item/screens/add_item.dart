import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final _formKey = GlobalKey<FormState>();
  File? _dishImage;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if(pickedFile != null) {
      setState(() {
        _dishImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Dish"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
              key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomTextField(hintText: "Dish Name", controller: _nameController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,),
                SizedBox(height: 20,),
                CustomTextField(hintText: "Description", controller: _descriptionController, noOfLines: 3, keyboardType: TextInputType.text, obscure: false,),
                SizedBox(height: 20,),
                CustomTextField(hintText: "Price", controller: _priceController, noOfLines: 1, keyboardType: TextInputType.number, obscure: false,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                  },
                  child: _dishImage != null ?
                  Image.file(
                    _dishImage!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: ScreenSize.height * 0.25,
                  ): Image.network(
                    "https://danube-region.eu/wp-content/themes/dfd-nat1ve/assets/images/no_image_resized_675-450.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: ScreenSize.height * 0.25,
                  ),
                ),
                SizedBox(height: 20,),
                CustomButton(name: "Add Dish", onClick: () {})
                // ElevatedButton(onPressed: (){}, child: Text('Add Dish'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
