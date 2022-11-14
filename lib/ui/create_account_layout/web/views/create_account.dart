import 'package:flutter/material.dart';

import '../../../../utils/add_space.dart';

class CreateAccountView extends StatefulWidget {
  
  CreateAccountView({Key? key}) : super(key: key);

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  
  GlobalKey<FormState> formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Scaffold(
      body: Form(
        key: formKey,
        child: Row(
          children: [
            /* Segun lo que vi en pinterest se pone normalemnte una foto al costado del login o el create asi que aca lo vamos a implementar */
            SizedBox(
              height: h,
              width: w * .3,
              child: Image.asset('assets/decoration/ninja_background_loginview.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  addVerticalSpace(70),
                  Text('CASAGRANDE'),
                  addVerticalSpace(50),
                  ContainerForm()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerForm extends StatefulWidget {
  const ContainerForm({
    super.key,
  });

  @override
  State<ContainerForm> createState() => _ContainerFormState();
}

class _ContainerFormState extends State<ContainerForm> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      height: h * .4,
      width: w * .35,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}