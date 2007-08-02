package org.eclipse.open64.internal.errorparsers;

import java.util.StringTokenizer;

import org.eclipse.cdt.core.ErrorParserManager;
import org.eclipse.cdt.core.IErrorParser;
import org.eclipse.cdt.core.IMarkerGenerator;
import org.eclipse.core.resources.IFile;

/**
 * Open64 3.1 error parser
 * 
 * @author mhauskn
 * much work borrowed from joverbey's Intel 8.1 parser
 */
public class Open64CompilerErrorParser implements IErrorParser
{
    /**
     * Extracts file, line number, and error information from lines of the form
     * f95-724 openf90: ERROR HELLO, File = test1.f, Line = 5, Column = 12
     * 
     * Each line is parsed individually and the error line is above the message 
     * line, so they cannot be parsed as one line. After the error line is parsed, 
     * boolean messageLine is changed to true to parse only the error message.
     */
	boolean messageLine = false;
	String severitystr, filestr, linestr, message;
	
    public boolean processLine(String line, ErrorParserManager eoParser)
    {
    	if (messageLine)
        {
        	message = line;
        	int severity = (severitystr.equals("ERROR") ? IMarkerGenerator.SEVERITY_ERROR_RESOURCE
                    : IMarkerGenerator.SEVERITY_WARNING);
        	int lineno = Integer.parseInt(linestr);
        	IFile file = eoParser.findFilePath(filestr);

        	eoParser.generateMarker(file, lineno, message, severity, null);
        	messageLine = false;
        	return false;
        }
    	StringTokenizer tokenizer = new StringTokenizer(line, ":");
        if (line.indexOf("openf90") != -1)
        {
            try
            {
            	tokenizer.nextToken(); // f95-724 openf90
                String tmp = tokenizer.nextToken(",").trim(); // ERROR HELLO
                String tmp2 = tmp.substring(2,tmp.length());
                severitystr = tmp2.substring(0,tmp2.indexOf(" ")); // ERROR
                tmp = tokenizer.nextToken(",");
                filestr = tmp.substring(8,tmp.length()).trim(); // filename
                tmp = tokenizer.nextToken(",");
                linestr = tmp.substring(8, tmp.length()).trim(); // line number
                messageLine = true;
            }
            catch (Throwable x)
            {
                ;
            }
        }
        return false;
    }
}
