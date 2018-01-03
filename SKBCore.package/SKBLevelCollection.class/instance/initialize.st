initialization
initialize
	levels := OrderedCollection new.
	levels
		add:
			(SKBLevel
				fromString:
					'#########
#P C S  #
#########').
	levels
		add:
			(SKBLevel
				fromString:
					'############  
#SS  #     ###
#SS  # C  C  #
#SS  #C####  #
#SS    P ##  #
#SS  # #  C ##
###### ##C C #
  # C  C C C #
  #    #     #
  ############').
	levels
		add:
			(SKBLevel
				fromString:
					'        ######## 
        #     P# 
        # C#C ## 
        # C  C#  
        ##C C #  
######### C # ###
#SSSS  ## C  C  #
##SSS    C  C   #
#SSSS  ##########
########         ').
	levels
		add:
			(SKBLevel
				fromString:
					'           ########
           #  SSSS#
#    #  C C   SSSS#
# CCC#C  C #  SSSS#
#  C     C #  SSSS#
# CC #C C C########
#  C #     #       
## #########       
#    #    ##       
#     C   ##       
#  CC#CC  P#       
#    #    ##       
###########        ').
	levels
		add:
			(SKBLevel
				fromString:
					'        #####    
        #   #####
        # #C##  #
        #     C #
######### ###   #
#SSSS  ## C  C###
#SSSS    C CC ## 
#SSSS  ##C  C P# 
#########  C  ## 
        # C C  # 
        ### ## # 
          #    # 
          ######').
	levels
		add:
			(SKBLevel
				fromString:
					'######  ### 
#SS  # ##P##
#SS  ###   #
#SS     CC #
#SS  # # C #
#SS### # C #
#### C #C  #
   #  C# C #
   # C  C  #
   #  ##   #
   #########').
	levels
		add:
			(SKBLevel
				fromString:
					'       ##### 
 #######   ##
## # P## CC #
#    C      #
#  C  ###   #
### #####C###
# C  ### SS# 
# C C C SSS# 
#    ###SSS# 
# CC # #SSS# 
#  ### ##### 
####         ').
	levels
		add:
			(SKBLevel
				fromString:
					'  ####          
  #  ###########
  #    C   C C #
  # C# C #  C  #
  #  C C  #    #
### C# #  #### #
#P#C C C  ##   #
#    C #C#   # #
#   C    C C C #
#####  #########
  #      #      
  #      #      
  #SSSSSS#      
  #SSSSSS#      
  #SSSSSS#      
  ########      ').
	levels
		add:
			(SKBLevel
				fromString:
					'          #######
          #  SSS#
      #####  SSS#
      #      S S#
      #  ##  SSS#
      ## ##  SSS#
     ### ########
     # CCC ##    
 #####  C C #####
##   #C C   #   #
#P C  C    C  C #
###### CC C #####
     #      #    
     ########    ').
	levels
		add:
			(SKBLevel
				fromString:
					' ###  #############
##P####       #   #
# CC   CC  C C SSS#
#  CCC#    C  #SSS#
# C   # CC CC #SSS#
###   #  C    #SSS#
#     # C C C #SSS#
#    ###### ###SSS#
## #  #  C C  #SSS#
#  ## # CC C C##SS#
# SS# #  C      #S#
# SS# # CCC CCC #S#
##### #       # #S#
    # ######### #S#
    ###############')