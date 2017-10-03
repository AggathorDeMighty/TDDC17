(define (problem C4_4)
  (:domain logistics)
  (:objects packet1 packet2 packet3 packet4 packet5 
  	    truck1 truck2 truck3 truck4 truck5
	    airplane1 
	    ship1 ;; Our ships 
            office1 office2 office3 office4 office5
	    airport1 airport2 airport3 airport4 
	    bay1 bay2 bay3 ;; Our bays
	    city1 city2 city3 city4 city5)

  (:init (object packet1) (object packet2) (object packet3) (object packet4) (object packet5) 
         
	 (truck truck1) (truck truck2) (truck truck3) (truck truck4) (truck truck5)
         (vehicle truck1) (vehicle truck2) (vehicle truck3) (vehicle truck4) (vehicle truck5)
         
	 (airplane airplane1) (vehicle airplane1)
	 
	 (ship ship1) (vehicle ship1) ;; We got ships bitches
	 
	 (location office1) (location office2) (location office3) (location office4) (location office5)
 
	 (location airport1) (location airport2) (location airport3) (location airport4) 

	 (location bay1) (location bay2) (location bay3) ;; Our bay loc-declaration

	 (bay bay1) (bay bay2) (bay bay3) ;; Our bay declarations
	 
	 (airport airport1) (airport airport2) (airport airport3) (airport airport4)

         (city city1) (city city2) (city city3) (city city4) (city city5)

         (loc office1 city1) (loc airport1 city1) (loc bay1 city1)
	 
	 (loc office2 city2) (loc airport2 city2) (loc bay2 city2) 

	 (loc office3 city3) (loc airport3 city3)
         
	 (loc office4 city4) (loc airport4 city4)
	 
	 (loc office5 city5) (loc bay3 city5)

         (at packet1 office1) (at packet2 office2) (at packet3 office3) (at packet4 office4) (at packet5 office1)

	 (at truck1 airport1) (at truck2 airport2) 

	 (at truck3 office3) (at truck4 office4) (at truck5 office5)

	 (at airplane1 airport2)

	 (at ship1 bay1))

  (:goal (and (at packet1 office2) (at packet2 office3)
	      (at packet3 office4) (at packet4 office1)
	      (at packet5 office5) ))
  )