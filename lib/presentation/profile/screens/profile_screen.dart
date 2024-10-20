import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Profile"),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 110, // Adjust to fit the image size and border thickness
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 3.0, // Border width
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WxAubQyY-WaN8W-esXaxi_SfTKpjHYIf9w&s",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit),
                      Text("Edit Profile")
                    ],
                  )
              ),
              Text("Hi there Otthi"),
              TextButton(onPressed: (){}, child: Text("Sign Out")),
              SizedBox(height: 20,),
              CustomTextField(hintText: "Name", controller: _nameController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false),
              SizedBox(height: 10,),
              CustomTextField(hintText: "Email", controller: _nameController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false),
              SizedBox(height: 10,),
              CustomTextField(hintText: "Phone Number", controller: _nameController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false),
              SizedBox(height: 10,),
              CustomTextField(hintText: "Address", controller: _nameController, noOfLines: 3, keyboardType: TextInputType.text, obscure: false),
              SizedBox(height: 20,),
              CustomButton(name: 'Save', onClick: () {})
            ],
          ),
        ),
      ),
    );
  }
}
