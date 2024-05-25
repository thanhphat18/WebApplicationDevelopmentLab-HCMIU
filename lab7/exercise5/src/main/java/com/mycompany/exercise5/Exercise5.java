/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.exercise5;

import java.io.*;
import org.xml.sax.*;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.parsers.ParserConfigurationException; import javax.xml.parsers.SAXParser;

/**
 *
 * @author thanhphatchau
 */
public class Exercise5 extends HandlerBase {
    protected static final String XML_FILE_NAME = "/Users/thanhphatchau/Library/CloudStorage/OneDrive-VietNamNationalUniversity-HCMINTERNATIONALUNIVERSITY/Study Docs/recent semester/Web Application Development/lab/lab7/exercise5/WebClass.xml";
    public static void main(String[] args) {
        // Use the default (non-validating) parser 
        SAXParserFactory factory = SAXParserFactory.newInstance();
        try{
            // Set up output stream
            out = new OutputStreamWriter(System.out, "UTF8");
            // Parse the input
            SAXParser saxParser = factory.newSAXParser(); saxParser.parse(new File(XML_FILE_NAME), new Exercise5());
        }catch(Throwable t){
            t.printStackTrace();
        }//end try
        System.exit(0);
    }
    static private Writer out;
    //=========================================================== 
    // Methods in SAX DocumentHandler 
    //=========================================================== 
    
    public void startDocument() throws SAXException {
        showData("<?xml version='1.0' encoding='UTF-8'?>"); newLine();
    }
    
    public void endDocument() throws SAXException {
        try {
            newLine();
            out.flush();
        } catch (IOException e) {
            throw new SAXException("I/O error", e); }
    }
    
    public void startElement(String name, AttributeList attrs) throws SAXException{
        
        showData("<" + name); if (attrs != null) {
            for (int i = 0; i < attrs.getLength(); i++) { 
                showData(" ");
                showData(attrs.getName(i) + "=\"" + attrs.getValue(i) +"\"");
            }
        }
        showData(">");
    }
    
    public void endElement(String name) throws SAXException{
        showData("</" + name + ">");
    }
    
    public void characters(char buf[], int offset, int len) throws SAXException{
        String s = new String(buf, offset, len);
        showData(s);
    }
    
    private void showData(String s) throws SAXException{
        try {
            out.write(s);
            out.flush();
        } catch (IOException e) {
            throw new SAXException("I/O error", e); 
        }
    }
    
    // Start a new line 
    private void newLine() throws SAXException{
        String lineEnd = System.getProperty("line.separator"); 
        try {
            out.write(lineEnd); 
        } catch (IOException e) {
                throw new SAXException("I/O error", e); 
        }
    }
}
