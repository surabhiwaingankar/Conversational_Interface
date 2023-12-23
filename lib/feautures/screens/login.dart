
import 'package:conversational_interface/feautures/screens/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Placeholder(fallbackHeight: 150,),
             Text('Welcome Back',style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              ),),
             Text('Get The feel of Offline ,\nShopping  online',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),],
              ),

                SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:32 ),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Enter Your Email'
                          ),
                      ),
                      const SizedBox(height: 10,),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            labelText: 'Enter Your Password',
                          ),
                      ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Forgot Password ?',style: TextStyle(color: Colors.purple),))
                          ],
                        ),
                        const SizedBox(height: 10,),
                
                        //sign in
                        SizedBox(
                         width:double.infinity ,
                          child: ElevatedButton(onPressed: (){},
                          style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.purple),
                          fixedSize: MaterialStatePropertyAll(Size(100, 50))
                          ),
                           child: const Text('Sign in',style: TextStyle(color: Colors.white),),)
                          ),
                          const SizedBox(height: 20,),
                          // Create Account
                           SizedBox(
                         width:double.infinity ,
                          child: OutlinedButton(
                           
                            onPressed: (){},
                            style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.purple),
                          fixedSize: MaterialStatePropertyAll(Size(100, 50)),
                          ),
                             child: const Text('Create Account',style: TextStyle(color: Colors.white),)),
                          ),
                    ],
                  )
                  ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text('Or sign in with',style: TextStyle(color: Colors.grey.shade700), ),
                   const Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(100),
                
                  ),
                  child: IconButton(
                    // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 232, 179, 241))),
                    color: Colors.blueAccent,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  icon:const Image(
                    image: AssetImage("assets/google.png"),
                    width: 40,
                    height: 40,
                   ),
                  ),
                )
              ],
            )


            ],
          ),
        )
      ),
    );
  }
}