			.ORIG		x3000			
			LD		R1,BD	
			AND		R3,R3,#0		
			AND		R2,R2,#0		
			ADD		R2,R2,#12		
							
		QL	BRz	KT		
						
			LDR		R4,R1,#0		
			ADD		R3,R3,R4		
			ADD		R1,R1,#1	
			ADD		R2,R2,#-1		
	
			BRnzp		QL

	KT
			HALT

	BD		.FILL		x3100
			
			.END