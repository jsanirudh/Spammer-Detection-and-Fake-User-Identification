package com.hybrid;

import java.util.TreeMap;

public class decision_tree {

public static TreeMap<String,String> map=new TreeMap<>();
	
	public static void adddata(String comment,String type){
		map.put(comment,type);
	}
	public static String getcount(String word){
		return map.get(word);
	}
}
