import 'dart:io';

void main() {
  print("Enter the lenght of the list:");
  int lenght_of_list = int.parse(stdin.readLineSync()); 
  var mylist = new List(lenght_of_list);

// for insert element in the list
  for (int i = 0; i <= lenght_of_list; i++) {
    print("enter element:");
    int ele = int.parse(stdin.readLineSync());
    mylist[i] = ele;
    print("list befor sorting");
    print(mylist);
  }

  // for sorting the list 
  int temp;
  int j;
  for (int i = 1; i <= lenght_of_list; i++) {
    temp = mylist[i];
    j = i;
    while (j > 0 && mylist[j - 1] > temp) {
      mylist[j] = mylist[j - 1];
      j = j - 1;
    }
    mylist[j] = temp;
  }
  print("list after sorting");
  print(mylist);
  
  
  //for serching the element in the list
  print("enter element which u want to search:");
  int search = int.parse(stdin.readLineSync());
  
  for (int i = 0; i <= lenght; i++)
  {
    if (mylist[i]==search)
    {
      print(i);
    }
    else 
    {
      print ("the element not in the list");
    }
  }
}