package com.sso.config;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;

public class TokenConfig {
	/**
	 * Generate secure random number.
	 * 
	 * @param request
	 *            the request
	 * @return the string
	 */
	public static String GenerateSecureRandomNumber(HttpServletRequest request) {
		String tokenNo = "";
		try {
			// Initialize SecureRandom
			// This is a lengthy operation, to be done only upon
			// initialization of the application
			SecureRandom prng = SecureRandom.getInstance("SHA1PRNG");
			// generate a random number
			String randomNum = new Integer(prng.nextInt()).toString();
			// get its digest
			MessageDigest sha = MessageDigest.getInstance("SHA-1");
			byte[] result = sha.digest(randomNum.getBytes());

			tokenNo = hexEncode(result);
			request.getSession().setAttribute("UNIQUE_ID", tokenNo);
		} catch (NoSuchAlgorithmException ex) {
			System.err.println(ex);
		}
		return tokenNo;
	}

	/**
	 * Generate secure random number.
	 * 
	 * @param request
	 *            the request
	 * @return the string
	 */
	public static String GenerateSecureRandomCaptche() {
		String tokenNo = "";
		try {
			// Initialize SecureRandom
			// This is a lengthy operation, to be done only upon
			// initialization of the application
			SecureRandom prng = SecureRandom.getInstance("SHA1PRNG");
			// generate a random number
			String randomNum = new Integer(prng.nextInt()).toString();
			// get its digest
			MessageDigest sha = MessageDigest.getInstance("SHA-1");
			byte[] result = sha.digest(randomNum.getBytes());

			tokenNo = hexEncode(result);
		 
		} catch (NoSuchAlgorithmException ex) {
			System.err.println(ex);
		}
		return tokenNo;
	}

	/**
	 * Hex encode.
	 * 
	 * @param aInput
	 *            the a input
	 * @return the string
	 */
	private static String hexEncode(byte[] aInput) {
		StringBuilder result = new StringBuilder();
		char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		for (int idx = 0; idx < aInput.length; ++idx) {
			byte b = aInput[idx];
			result.append(digits[(b & 0xf0) >> 4]);
			result.append(digits[b & 0x0f]);
		}
		return result.toString();
	}
}
