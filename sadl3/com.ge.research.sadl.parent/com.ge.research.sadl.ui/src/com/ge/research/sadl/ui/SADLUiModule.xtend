/*
 * generated by Xtext 2.9.0-SNAPSHOT
 */
package com.ge.research.sadl.ui

import com.ge.research.sadl.processing.SadlModelProcessorProvider
import com.ge.research.sadl.ui.processing.ExtensionPointBasedSadlModelProcessorProvider
import com.ge.research.sadl.ui.syntaxcoloring.SadlHighlightingConfiguration
import com.ge.research.sadl.ui.syntaxcoloring.SadlSemanticHighlightingCalculator
import com.ge.research.sadl.ui.syntaxcoloring.SadlTokenToAttributeIdMapper
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor
import org.eclipse.xtext.ide.editor.syntaxcoloring.AbstractAntlrTokenToAttributeIdMapper
import org.eclipse.xtext.ide.editor.syntaxcoloring.ISemanticHighlightingCalculator
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfiguration

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
@FinalFieldsConstructor class SADLUiModule extends AbstractSADLUiModule {

	def Class<? extends SadlModelProcessorProvider> bindSadlModelProcessorProvider() {
		return ExtensionPointBasedSadlModelProcessorProvider
	}

	// Registers our own syntax coloring styles.
	def Class<? extends IHighlightingConfiguration> bindILexicalHighlightingConfiguration() {
		return SadlHighlightingConfiguration
	}

	// Maps our Ecore nodes to our syntax coloring styles.
	def Class<? extends ISemanticHighlightingCalculator> bindISemanticHighlightingCalculator() {
		return SadlSemanticHighlightingCalculator
	}

	// Maps our token names to our syntax coloring styles.
	def Class<? extends AbstractAntlrTokenToAttributeIdMapper> bindTokenToAttributeIdMapper() {
		return SadlTokenToAttributeIdMapper
	}

}
