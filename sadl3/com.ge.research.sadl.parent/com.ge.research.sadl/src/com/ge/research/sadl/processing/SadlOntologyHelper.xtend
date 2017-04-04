/************************************************************************
 * Copyright © 2007-2017 - General Electric Company, All Rights Reserved
 * 
 * Project: SADL
 * 
 * Description: The Semantic Application Design Language (SADL) is a
 * language for building semantic models and expressing rules that
 * capture additional domain knowledge. The SADL-IDE (integrated
 * development environment) is a set of Eclipse plug-ins that
 * support the editing and testing of semantic models using the
 * SADL language.
 * 
 * This software is distributed "AS-IS" without ANY WARRANTIES
 * and licensed under the Eclipse Public License - v 1.0
 * which is available at http://www.eclipse.org/org/documents/epl-v10.php
 * 
 ***********************************************************************/
package com.ge.research.sadl.processing

import com.ge.research.sadl.model.DeclarationExtensions
import com.ge.research.sadl.sADL.SadlResource
import com.google.inject.Inject
import com.google.inject.Singleton

/**
 * Default, singleton ontology helper service for SADL.
 * 
 * @author akos.kitta
 */
@Singleton
class SadlOntologyHelper implements ISadlOntologyHelper {

	@Inject
	extension DeclarationExtensions;

	@Override
	override validate(Context context, SadlResource candidate) {
		val key = context.grammarContextId.orNull
		if (key == ISadlOntologyHelper.GrammarContextIds.SADLPROPERTYINITIALIZER_VALUE)	{
			
		}
		val subj = context.subject
		val subjUri = subj.conceptUri
		val subjType = subj.ontConceptType
		val itr = context.restrictions
		for (i : 0 ..< itr.size) {
			val element = itr.get(i)
			val ruri = element.conceptUri
			val rtype = element.ontConceptType
			val j = 0
		}
		val name = candidate.concreteName
		if (name !== 'myFoo') {
			context.acceptor.addError('', candidate);
		}
	}

}