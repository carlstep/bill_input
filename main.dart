import 'dart:io';

void main() {
  double billInput = promptUserInput("Enter the bill value");

  if (billInput > 1000) {
    double convertedBillUsd = convertToUsd(billInput);
    double primaryInputKhr = billInput;
    print('The primaryInputKhr is $primaryInputKhr KHR \n(the convertedBillUsd is $convertedBillUsd USD)');
  } else {
    double convertedBillKhr = convertToKhr(billInput);
    double primaryInputUsd = billInput;
    print('The primaryInputUsd is $primaryInputUsd USD \n(the convertedBillKhr is $convertedBillKhr KHR)');
  }

    
  double paymentInputUsd = promptUserInput('how much USD to pay... ');
  double paymentInputKhr = promptUserInput('how much KHR to pay... ');

  print('You paid $paymentInputUsd and $paymentInputKhr');
}

// function - Takes in the string, parses the input to double
// returns the input
double promptUserInput(String userInputText) {
  print(userInputText);
  double input = double.parse(stdin.readLineSync()!);
  return input;
}

// function - converts input to USD
double convertToUsd(double billInput) {
  double convertedBill = billInput / 4000;
  return convertedBill;
}

// function - converts input to KHR
double convertToKhr(double billInput) {
  double convertedBill = billInput * 4000;
  return convertedBill;
}
