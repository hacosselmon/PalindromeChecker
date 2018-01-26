public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = delChar(word);
  if (reverse(word).equals(word))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    str = delChar(str);
    int nLast = str.length()-1;
    for (int i = nLast; i >= 0; i--)
      sNew = sNew + str.substring(i,i+1);
    return sNew;
}
public String delChar(String st)
{
  String sChar = new String();
    for (int i = 0; i < st.length(); i++)
      if (Character.isLetter(st.charAt(i)) == true)
        sChar = sChar + st.charAt(i);
      return sChar.toLowerCase();
}


