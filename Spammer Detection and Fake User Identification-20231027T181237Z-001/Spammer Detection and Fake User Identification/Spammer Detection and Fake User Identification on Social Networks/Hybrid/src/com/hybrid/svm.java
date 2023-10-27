package com.hybrid;

import java.util.TreeMap;

public class svm {
	
public static TreeMap<String,Integer> spam=new TreeMap<>();
public static TreeMap<String,Integer> ham=new TreeMap<>();	
	public static void adddataspam(String word){
		if (spam.containsKey(word)) {
			spam.put(word, spam.get(word) + 1);
        } else {
        	spam.put(word,  1);
        }
		
		
	}
	public static void adddataham(String word){
		if (spam.containsKey(word)) {
			spam.put(word, spam.get(word) + 1);
        } else {
        	spam.put(word,  1);
        }
		
		
	}
	public static int getcountspam(String word){
		if (ham.containsKey(word)) {
          return  ham.get(word);
        }else{
        	return 0;
        }
	}
	public static int getcountham(String word){
		if (ham.containsKey(word)) {
          return  ham.get(word);
        }else{
        	return 0;
        }
	}

}
