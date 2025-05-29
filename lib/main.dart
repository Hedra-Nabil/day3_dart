import 'package:day3_dart/features/social%20media/social_media.dart';
import 'package:day3_dart/features/transactions/transactions.dart';

void main(List<String> arguments) {
  //BankAccount bankAccount = BankAccount();
  // bankAccount.getBalance;
  // bankAccount.deposit = 5000;
  // bankAccount.getBalance;
  // bankAccount.withdraw = 200;
  // bankAccount.getBalance;
  UiRendering uiRendering = UiRendering(SocialMediaImplementation());
  uiRendering.showPostsButton();
  uiRendering.deletePostsButton(0);
  uiRendering.showPostsButton();
  uiRendering.addPostsButton('hedra');
  uiRendering.showPostsButton();
}

