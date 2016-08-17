    =============================================================================
    
            halloc 1.2.3
    
    ===
          
    	Hierarchical memory allocation interface - an extension 
    	to standard malloc/free interface that simplifies tasks 
    	of memory disposal in cases when allocated structures 
    	exhibit hierarchical properties.
    
    	http://swapped.cc/halloc
    
    ===
    
	Distributed under terms of the BSD license. 
    
    ===
    
    	To build libhalloc.a with GNU tools run
    		make
    
    	To install in /usr/include and /usr/lib
    		make install
    
    	To cleanup the build files 
    		make clean
    
    ===

	halloc-1.2.3

		* added an integer overflow checks to halloc() as per
		  derrek's comment

		* added a multiplication overflow check to h_calloc()
		  while at it

		* pruned unused, commented out code

	halloc-1.2.2

	        * fixed an issue with hlist_relink in halloc when
	          realloc'ed block is not on a sibling list, as per
		  github/abergeron comments

	        * changed 'make install' from /usr/ to /usr/local/ as per 
		  github/ttilley comment
    
    	halloc-1.2.1
    
    		* fixed a double-free bug in _set_allocator() as per
    		  Matthew Gregan comments
    
    		* switched to using NULL instead of 0 where applicable
    
    	halloc-1.2.0
    
    		* added missing <string.h> include to halloc.c
    		
    		* improved standard compliance thanks to the feedback
    		  received from Stan Tobias. Two things were fixed -
    		  
    		- hblock_t structure no longer uses zero-sized 'data'
    		  array, which happened to be common, but non-standard
    		  extension; 
    		  
    		- secondly, added the code to test the behaviour of 
    		  realloc(ptr, 0). Standard allows it NOT to act as
    		  free(), in which case halloc will use its own version
    		  of allocator calling free() when neccessary.
    
    	halloc-1.1.0
    
    		* initial public release (rewrite of hhmalloc library)
    
    =============================================================================
    Copyright (c) 2004-2011, Alex Pankratov (ap@swapped.cc). All rights reserved.
