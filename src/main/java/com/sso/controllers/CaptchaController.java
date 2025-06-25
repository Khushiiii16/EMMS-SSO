package com.sso.controllers;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.util.Base64;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CaptchaController {
	
	private static final int CAPTCHA_WIDTH = 150;
    private static final int CAPTCHA_HEIGHT = 50;
    private static final int CAPTCHA_LENGTH = 2;
    
    
//    @PostMapping("/login")
//    public void processLogin(
//            @RequestParam(value = "username", required = false) String username,
//            @RequestParam(value = "password", required = false) String password,
//            @RequestParam(value = "captcha", required = false) String captchaInput
//  ) {
//        // Print username and password to console
//        System.out.println("Username: " + username);
//        System.out.println("Password: " + password);
//        
//    }

    @GetMapping("/captcha")
    @ResponseBody
    public String generateCaptcha(HttpSession session) throws Exception {
        // Generate random CAPTCHA text
        String captchaText = generateRandomCaptchaText(CAPTCHA_LENGTH);
        
        // Store CAPTCHA text in session using the key "captcha" to match LoginACT
        session.setAttribute("captcha", captchaText);

        // Create CAPTCHA image
        BufferedImage image = new BufferedImage(CAPTCHA_WIDTH, CAPTCHA_HEIGHT, BufferedImage.TYPE_INT_RGB);
        Graphics2D g2d = image.createGraphics();

        // Set background color
        g2d.setColor(Color.WHITE);
        g2d.fillRect(0, 0, CAPTCHA_WIDTH, CAPTCHA_HEIGHT);

        // Add noise (random lines)
        Random random = new Random();
        g2d.setColor(Color.LIGHT_GRAY);
        for (int i = 0; i < 10; i++) {
            int x1 = random.nextInt(CAPTCHA_WIDTH);
            int y1 = random.nextInt(CAPTCHA_HEIGHT);
            int x2 = random.nextInt(CAPTCHA_WIDTH);
            int y2 = random.nextInt(CAPTCHA_HEIGHT);
            g2d.drawLine(x1, y1, x2, y2);
        }

        // Draw CAPTCHA text with slight distortion
        g2d.setColor(Color.BLACK);
        g2d.setFont(new Font("Arial", Font.BOLD, 24));
        for (int i = 0; i < captchaText.length(); i++) {
            int x = 10 + i * 20;
            int y = 35 + random.nextInt(5) - 2;
            g2d.drawString(String.valueOf(captchaText.charAt(i)), x, y);
        }

        g2d.dispose();

        // Convert image to Base64
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "png", baos);
        String base64Image = Base64.getEncoder().encodeToString(baos.toByteArray());

        return base64Image;
    }

    @PostMapping("/validateCaptcha")
    @ResponseBody
    public String validateCaptcha(@RequestParam("captchaInput") String captchaInput, HttpSession session) {
        String storedCaptcha = (String) session.getAttribute("captcha");
        if (captchaInput != null && captchaInput.equalsIgnoreCase(storedCaptcha)) {
            return "valid";
        }
        return "invalid";
    }

    private String generateRandomCaptchaText(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuilder captchaText = new StringBuilder();
        for (int i = 0; i < length; i++) {
            captchaText.append(chars.charAt(random.nextInt(chars.length())));
        }
        return captchaText.toString();
    }

}
