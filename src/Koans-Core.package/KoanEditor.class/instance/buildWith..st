toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildShoutboxWith: aBuilder.
			self buildBrowserWith: aBuilder.
			self buildNextButtonWith: aBuilder.
			self buildTestButtonWith: aBuilder.
			self buildPreviousButtonWith: aBuilder.
			self buildResetKoanButtonWith: aBuilder.
			self buildBackToSelectionViewButtonWith: aBuilder})