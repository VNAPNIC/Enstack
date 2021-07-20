String mLogoImg = 'logo.png'.fromAssets;
String mLogoSplash = 'splash_logo.png'.fromAssets;
String mShowPasswordImg = 'show_password.png'.fromAssets;

extension AssetsImage on String{
  get fromAssets => 'assets/images/${this}';
}