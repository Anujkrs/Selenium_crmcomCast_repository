package com.genericlib;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Properties;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class Filelib {
	
	/** Get the Key = Value from the commonData.PropertiesFile
    Like URL,USERNAME,PASSWORD
* @ Parameter Key
* @ Return Value of the Key
* @ throws Throwable
*/
public  String getPropertyValue(String Key) throws Throwable {
FileInputStream fobj = new 	FileInputStream(".//src/main/resources/commondata.Properties");
Properties pObj =new Properties();
 pObj.load(fobj);
 String Value = pObj.getProperty(Key);
return Value;	
}
/**
* Get the data From Excell WorkBook based User Argumented
* @ param sheetName
* @ param rowNum
* @ param colNum
* @ return
* @ throws Throwable
*/
public String getExcelData(String sheetName, int rowNum, int colNum) throws Throwable {

	FileInputStream fisobj = new FileInputStream(".//src/test/resources/testData.xlsx");
	Workbook wb =  WorkbookFactory.create(fisobj);
	Sheet sh = wb.getSheet(sheetName);
	Row row = sh.getRow(rowNum);
	 Cell ch = row.getCell(colNum);
	 String data = ch.getStringCellValue();
	 wb.close();	
 return data; 
}
/**
* Set the data into Excell WorkBook based User Argumented
* @ param sheetName
* @ param rowNum
* @ param colNum
* @ param data
* @ throws Throwable
*/
public void setExcelData(String sheetName, int rowNum, int colNum, String data) throws Throwable {
String filepath = ".//src/test/resources/testData.xlsx";
	FileInputStream fisobj = new FileInputStream(filepath);
	Workbook wb =  WorkbookFactory.create(fisobj);
	Sheet sh = wb.getSheet(sheetName);
	Row row = sh.getRow(rowNum);
	@SuppressWarnings("unused")
	Cell cel = row.createCell(colNum);	
	FileOutputStream fos = new FileOutputStream(filepath);
	wb.write(fos);
	 wb.close(); 
}


}
