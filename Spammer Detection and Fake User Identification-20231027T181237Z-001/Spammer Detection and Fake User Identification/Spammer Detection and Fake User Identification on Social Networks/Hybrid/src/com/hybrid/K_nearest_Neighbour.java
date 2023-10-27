package com.hybrid;

import java.util.ArrayList;
import java.util.Arrays;

import org.apache.commons.lang3.StringUtils;

public class K_nearest_Neighbour {
	public static ArrayList<String> spamdata;
	public static void adddata(){
		String  spam[]={"#1","$$$","100% free","100% Satisfied","50% off","Acceptance","Access","Accordingly","Act Now!","Ad","Affordable","All new","Amazing","Apply now","Apply Online","Auto email removal","Avoid","Bargain","Beneficiary","Best price","Beverage","Big bucks","Billing address","Billion","Billion dollars","Bonus","Brand new pager","Buy","Cable converter","Call","Call free","Call now","Cancel at any time","Cannot be combined with any other offer","Cards accepted","Cash","Cash bonus","Casino","Celebrity","Cents on the dollar","Certified","Chance","Cheap","Check","Check or money order","Claims","Clearance","Click","Click here","Click to remove","Collect","Compare","Confidentially on all orders","Congratulations","Consolidate debt and credit","Consolidate your debt","Copy accurately","Copy DVDs","Cost","Credit","Credit bureaus","Credit card offers","Cures baldness","Deal","Dear [email/friend/somebody]","Diagnostics","Dig up dirt on friends","Direct email","Direct marketing","Discount","Do it today","Don&#8217;t delete","Don&#8217;t hesitate","Dormant","Double your","Drastically reduced","Earn","Earn $","Earn extra cash","Earn per week","Easy terms","Eliminate bad credit","Eliminate debt","Email harvest","Email marketing","Expect to earn","Explode your business","Extra income","F r e e","Fantastic deal","Fast cash","Financial freedom","Financially independent","For free","For instant access","For just $XXX","For Only","For you","Form","Free","Free access","Free cell phone","Free consultation","Free DVD","Free gift","Free installation","Free Instant","Free investment","Free leads","Free membership","Free money","Free offer","Free preview","Free priority mail","Free quote","Free sample","Free trial","Free website","Freedom","Friend","Full refund","Get","Get it now","Get out of debt","Get paid","Get started now","Give it away","Giving away","Great offer","Guarantee","Guaranteed","Have you been turned down?","Hello","Here","Hidden","Hidden assets","Hidden charges","Home","Home based","Homebased business","Important information regarding","Income","Income from home","Increase sales","Increase traffic","Increase your sales","Incredible deal","Info you requested","Information you requested","Instant","Insurance","Internet market","Internet marketing","Investment","Investment decision","It&#8217;s effective","Join millions","Join millions of Americans","Laser printer","Leave","Legal","Life","Insurance","Lifetime","Limited time","Loans","Lose","Lose weight","Lose weight spam","Lower interest rate","Lower monthly payment","Lower your mortgage rate","Lowest insurance rates","Lowest price","Luxury car","Mail in order form","Maintained","Make $","Make money","Marketing","Marketing solutions","Mass email","Medicine","Medium","Meet singles","Member","Message contains","Million","Million dollars","Miracle","Money","Mortgage","Mortgage rates","Name brand","Never","New customers only","New domain extensions","Nigerian","No age restrictions","No catch","No claim forms","No credit check","No disappointment","No experience","No fees","No gimmick","No hidden","Costs","No inventory","No-obligation","Not intended","Notspam","Now","Now only","Obligation","Offer","Offer expires","Once in lifetime","One hundred percent free","One hundred percent guaranteed","One time","One time mailing","Online degree","Online marketing","Online pharmacy","Only","Only $","Open","Opportunity","Order","Order today","Orders shipped by","Outstanding values","Passwords","Pennies a day","Per day","Per week","Performance","Phone","Please read","Potential earnings","Pre-approved","Price","Print out and fax","Priority mail","Prize","Prizes","Problem","Produced and sent out","Profits","Promise you","Quote","Refinance","Refinance home","Remove","Reverses","Rolex","Sale","Sales","Sample","Satisfaction","Satisfaction guaranteed","Search engines","Shopper","Shopping spree","Sign up free today","Social security number","Solution","Special promotion","Stainless steel","Stock alert","Stock disclaimer statement","Stock pick","Stop","Stop snoring","Subscribe","Success","Teen","Terms and conditions","The best rates","The following form","They keep your money &#8212; no refund!","They&#8217;re just giving it away","This isn&#8217;t junk","This isn&#8217;t spam","Thousands","Time limited","Trial","Undisclosed recipient","University diplomas","Unlimited","Unsecured credit","Unsecured debt","Unsolicited","Unsubscribe","Urgent","US dollars","Vacation","Vacation offers","Valium","Viagra","Vicodin","Visit our website","Warranty","We hate spam","We honor all","Web traffic","Weekend getaway","Weight loss","What are you waiting for?","While supplies last","While you sleep","Who really wins?","Why pay more?","Wife","Will not believe your eyes","Win","Winner","Winning","Won","Work at home","Work from home","Xanax","You are a winner!"};
		spamdata=new ArrayList<String>(Arrays.asList(spam));
	}
	
	
	public static double test_stringDistance(String input1,String input2) throws Exception {
	    return  StringUtils.getJaroWinklerDistance(input1, input2);
	}
	
	public static double nagitive(String input) throws Exception{
		double total = 0;
		for(int i=0;i<spamdata.size();i++){
		total+= test_stringDistance(input, spamdata.get(i));
			 
		}
		return total;
	}

}
