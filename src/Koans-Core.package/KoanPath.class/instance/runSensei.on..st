walking
runSensei: sensei on: steps
	| currentCase |
	
	sensei previousResult: self previousResult.
	[ steps doWithIndex: [ :step :index | 
		currentCase := step.
		sensei observe: [ step testResult ] step: index ] ]
		on: KoanChapterFailedException do: [  ].
	
	^currentCase 