import 'package:flutter/material.dart';

class CurrrencyConverterMaterialPage extends StatefulWidget{
  const CurrrencyConverterMaterialPage({super.key});

  @override
  State<CurrrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();

}

class _CurrencyConverterMaterialPageState extends State<CurrrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    setState(() {
      result = double.parse(textEditingController.text) / 1000;                    
    });
  }

  @override
  void initState() {
    super.initState();
  }
  
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    final border =  OutlineInputBorder(
                  borderSide: BorderSide(
                  width: 2,
                  style: BorderStyle.none,
                  ),
                  borderRadius:BorderRadius.all(Radius.circular(5)),
                );

    return Scaffold( 
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),

      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                  '\$${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black
                  ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in NGN',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.account_balance_wallet_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert, 
              style: ElevatedButton.styleFrom(
                elevation: 15,
                backgroundColor:Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child: const Text("Convert")
              ),
            ],
          ),
        ),
      ),
    );
  }

}
