import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    setState(() {
      result = double.parse(textEditingController.text) / 1000;                    
    });
  }

  @override
  Widget build(BuildContext context){

    return CupertinoPageScaffold( 
      navigationBar: const CupertinoNavigationBar(
        backgroundColor:  CupertinoColors.activeBlue,
        middle:  Text('Currency Converter'),
      ),

        backgroundColor:  CupertinoColors.activeBlue,

      child: Center(
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
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black
                  ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                keyboardType: const TextInputType.numberWithOptions( decimal: true),
                placeholder: 'Enter an amount in NGN',
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert, 
                color: CupertinoColors.black,
                child: const Text("Convert")
              ),
            ],
          ),
        ),
      ),
    );
  }
}