/*
 * generated by Xtext 2.9.0-SNAPSHOT
 */
package com.ge.research.sadl.validation

import com.ge.research.sadl.sADL.SadlModel

import org.eclipse.xtext.validation.Check
import com.ge.research.sadl.sADL.SADLPackage

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class SADLValidator extends AbstractSADLValidator {
	
//  public static val INVALID_NAME = 'invalidName'
//
//	@Check
//	def checkGreetingStartsWithCapital(Greeting greeting) {
//		if (!Character.isUpperCase(greeting.name.charAt(0))) {
//			warning('Name should start with a capital', 
//					MyDslPackage.Literals.GREETING__NAME,
//					INVALID_NAME)
//		}
//	}

	public static String INVALID_MODEL_URI = "INVALID_MODEL_URI";
	
	@Check
	def checkSadlModelNameValidUri(SadlModel model) {
		val errMsg = SadlUtils.validateUri(model.baseUri);
		if (errMsg != null) {
			error(errMsg, SADLPackage.Literals.SADL_MODEL__BASE_URI, INVALID_MODEL_URI);
		}
	}
	
}
