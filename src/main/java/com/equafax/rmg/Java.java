package com.equafax.rmg;

import java.util.*;

public class Java {
	
	public static void main(String[] args)
	{
		String result = get_Name("ABC");
		System.out.println(result);
	}
	
	

	public static String get_Name(String word)
	{	
		String result = "";
		
		for(int i=0;i<word.length();i++)
		{
			char c = word.charAt(i);
			 c += 1;
			 result = result+c;
		}
		
		return result;
	}
	
	
}
