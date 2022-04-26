import 'package:care_connect/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String pageRout = 'sign_up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color? selectedColor = Colors.black;
  bool isMalePressed = false;
  bool isFemalePressed = false;
  bool isDoctor = false;
  bool isPatient = false;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/logo2.png',
              width: 350,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Sign Up as new patient :',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /*     Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isPatient = false;
                      isDoctor = !isDoctor;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE5E5E5),
                        boxShadow: [
                          BoxShadow(
                            color: isDoctor ? Colors.blue : Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(4, 4),
                          )
                        ]),
                    height: 90,
                    width: 90,
                    child: const Icon(
                      Icons.person,
                      size: 60,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isDoctor = false;
                      isPatient = !isPatient;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE5E5E5),
                        boxShadow: [
                          BoxShadow(
                            color: isPatient ? Colors.blue : Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(4, 4),
                          )
                        ]),
                    height: 90,
                    width: 90,
                    child: const Icon(
                      Icons.person,
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Doctor',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Patient',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ), */
            const MyTextField(hintText: ' Full Name'),
            const MyTextField(hintText: ' Email'),
            const MyTextField(hintText: ' Password'),
            const MyTextField(
              hintText: ' Speciality',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Data of birth:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Text(
                  'Gender:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      onPressed: () async {
                        _selectDate(context);
                      },
                      child: Text(
                        '${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      ),
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isMalePressed = false;
                      isFemalePressed = !isFemalePressed;
                    });
                  },
                  icon: Icon(
                    Icons.male,
                    color: (isFemalePressed) ? Colors.blue : Colors.black45,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isMalePressed = !isMalePressed;
                      isFemalePressed = false;
                    });
                  },
                  icon: Icon(
                    Icons.female,
                    color: (isMalePressed) ? Colors.pink : Colors.black45,
                    size: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    )
                  ]),
              height: 54,
              width: 294,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF39729A),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.pageRout);
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF39729A),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
