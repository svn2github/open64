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
 * 
 */
public class Open64CSuiteCompilerErrorParser implements IErrorParser
{
    /**
     * Extracts file, line number, and error information from lines of the form
     * ../test.cpp:5: error: `coout' undeclared (first use this function)
     *
     */
	public boolean processLine(String line, ErrorParserManager eoParser)
    {
        String severitystr, filestr, linestr, message;

        StringTokenizer tokenizer = new StringTokenizer(line, ":");
        if (line.indexOf(" error: ") != -1 || line.indexOf(" warning: ") != -1) {
        try 
        {
        	filestr = tokenizer.nextToken().trim();
        	linestr = tokenizer.nextToken().trim();
        	if (line.indexOf(" warning: ") != -1) {
        		tokenizer.nextToken();
        	}
        	severitystr = tokenizer.nextToken().substring(1).trim();
        	message = tokenizer.nextToken("\r\n").substring(2).trim();
        	
        	int severity = (severitystr.equals("error") ? IMarkerGenerator.SEVERITY_ERROR_RESOURCE
                    : IMarkerGenerator.SEVERITY_WARNING);
        	int lineno = Integer.parseInt(linestr);
        	IFile file = eoParser.findFileName(filestr);
        	eoParser.generateMarker(file, lineno, message, severity, null);
        }
        catch (Throwable x) {;}
        }
        return false;
    }
    
}
