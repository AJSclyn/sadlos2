/*
* generated by Xtext
*/
package com.ge.research.sadl.validation;
 
import java.util.ArrayList;
import java.util.List;

import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.ComposedChecks;

@ComposedChecks(validators= {com.ge.research.sadl.validation.SadlImportUriValidator.class})
public class AbstractSadlJavaValidator extends org.eclipse.xtext.validation.AbstractDeclarativeValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>();
	    result.add(com.ge.research.sadl.sadl.SadlPackage.eINSTANCE);
		return result;
	}

}
