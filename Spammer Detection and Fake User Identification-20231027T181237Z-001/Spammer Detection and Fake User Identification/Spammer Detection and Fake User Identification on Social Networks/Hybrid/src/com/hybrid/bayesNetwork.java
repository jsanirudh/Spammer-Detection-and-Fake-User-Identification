package com.hybrid;

import java.util.TreeMap;

public class bayesNetwork {
	public static TreeMap<String, String> bayesNetwork = new TreeMap<>();

	public static void adddata(String comment, String type) {
		bayesNetwork.put(comment, type);
	}

	public static String getcount(String word) {
		return bayesNetwork.get(word);
	}
}
