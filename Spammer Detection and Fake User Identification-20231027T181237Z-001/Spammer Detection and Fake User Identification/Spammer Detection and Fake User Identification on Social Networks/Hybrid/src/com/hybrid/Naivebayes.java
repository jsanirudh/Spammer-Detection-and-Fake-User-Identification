package com.hybrid;

import java.util.TreeMap;

public class Naivebayes {

public static TreeMap<String,Integer> map=new TreeMap<>();
	
	public static void adddata(String word){
		if (map.containsKey(word)) {
            map.put(word, map.get(word) + 1);
        } else {
            map.put(word,  1);
        }
		
	}
	public static int getcount(String word){
		if (map.containsKey(word)) {
          return  map.get(word);
        }else{
        	return 0;
        }
	}
}
