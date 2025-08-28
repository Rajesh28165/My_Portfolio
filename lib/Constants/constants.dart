// ignore_for_file: constant_identifier_names

const String baseName = "Self";

class AppConstants {
  static const String appName = 'Portfolio';
  static const String version = "1.0.0";
  static const String buildNumber = "1";
}

class Constants {
  static const String pswdError = "Password must be 8+ characters\nwith uppercase, lowercase,\nnumber, and special character.";  
}



class RegexConstants {
  // Generic
  static const ANY_CHARACTER = r'[\s\S]';
  static const ALPHA_NUMERIC = r'[a-zA-Z0-9 ]';

  // Alphabets & Name-related
  static const ONLY_ALPHABETS = r'^[a-zA-Z]+$';
  static const NAME_VALIDATOR = r'^[a-zA-Z .-]+$';
  static const NAME_PATTERN = r'[a-zA-Z .-]';
  static const CITY_PATTERN = r'[a-zA-Z ]';

  // Numbers
  static const DIGIT = r'\d';
  static const ONLY_NUMBERS = r'^[0-9]+$';
  static const NON_NUMERIC = r'[^0-9]';
  static const DECIMAL_NUMBER = r'^-?\d+(\.\d+)?$';
  static const PHONE_NUMBER = r'^[0-9]{10}$'; 
  static const PHONE_NUMBER_PATTERN = r'^[0-9+\s]+$';

  // Password / Validation
  static const ATLEAST_ONE_NUMBER = r'(.*[0-9].*)';
  static const ATLEAST_ONE_LOWERCASE = r'(.*[a-z].*)';
  static const ATLEAST_ONE_UPPERCASE = r'(.*[A-Z].*)';
  static const ATLEAST_ONE_SPECIAL_CHARACTER = r"(.*[~`!@#\$%^&*()\-+={}" r'"' r"|\\/:;<>,.?\[\]'_].*)";
  static const PASSWORD_PATTERN = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  // Email
  static const EMAIL_ADDRESS_PATTERN = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";

  // Special
  static const REGEX_NO_SPECIAL_CHARACTERS = r'[0-9a-zA-Z]';
  static const FORWARD_BACKWARD_SLASH = r'[/\\]';
}

class ImagePathConstants {
  static const String name = baseName;
  static const String basePath = 'lib/asset/images/$name';

  static const String image1 = '$basePath/1.jpeg';
  static const String image2 = '$basePath/2.jpeg';
  static const String image3 = '$basePath/3.jpeg';
  // static const String image4 = '$basePath/4.jpeg';
}

class MyConstants {
  static const String name = baseName;
  static const String CORRECT_PASSWORD = "$name@987";
  static const String MY_DETAIL = "My Personal Details";
  static const String EDUCATION_DETAIL = "My Educational Details";
  static const String PROFESSIONAL_CAREER = "My Proffessional Career";
  static const String PROFESSIONAL_SUMMARY = "I am Rajesh Yadav, a results-driven Software Engineer specializing in Flutter mobile application development for Android and iOS. I have strong problem-solving skills, backed by solid knowledge of Mathematics and a good grasp of Data Structures and Algorithms. I am passionate about building high-quality, scalable, and user-friendly applications, with expertise in UI/UX design, API integration, performance optimization, and component-based development.";
  static const String FULL_NAME = "Rajesh Yadav";
  static const String PHONE = "+91 8097728165";
  static const String EMAIL = "rj993030@gmail.com";
  static const String LINKEDIN = "https://www.linkedin.com/in/rajesh-yadav-03279b1b1/";
  static const String GITHUB = "https://github.com/Rajesh28165";
  static const String PORTFOLIO = "https://pooja-portfolio-1.vercel.app/";
  static const String LEETCODE  = "https://leetcode.com/u/rajeshyadav8143/";
}
