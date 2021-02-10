public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  
  if((reverse(noCapitals(noSpaces(onlyLetters(word))))).equals(noCapitals(noSpaces(onlyLetters(word))))){
    return true;
  }
   return false;
}
public String reverse(String str)
{
    String s = "";
  if(str.length() != 0){
    for(int i = str.length();i>0;i--){
    s = s + str.charAt(i-1);
    }
  }
  return s;
}
public String noSpaces(String str){
  String ans = "";
  if (str.length() == 0){
    return "";
  }
  for(int i = 0; i<str.length();i++){
    if(str.charAt(i) != ' '){
      ans = ans + str.charAt(i);
    }
  }
  return ans;
}

public String noCapitals(String str){
  return str.toLowerCase();
}

public int numLetters(String str){
  int x = 0;
  for(int i = 0; i <str.length();i++){
    if(Character.isLetter(str.charAt(i)) == true){
      x++;
    }
  }
  return x;
}

public String onlyLetters(String str){
  //boolean x = true
  String g = "";
  for(int i = 0; i < str.length();i++){
    if(Character.isLetter(str.charAt(i))){
      g = g + str.charAt(i);
      }
  }
  return g;
}
