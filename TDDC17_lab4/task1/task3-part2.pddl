;; This is a plain STRIPS formulation of the standard Logistics domain.

;; In this domain, there are six different types of objects: "object"
;; (the packages to be transported), "truck", "airplane" and their
;; common supertype "vehicle", "location" and the subtype "airport",
;; and finally "city". Types are defined by static (in the sense that
;; there are no operators that change their truth value) unary predicates.
;; The types of objects in a problem instance must be defined by including
;; the appropriate typing predicates in the initial state.

;; A binary static predicate called "loc" describes the topology of the
;; problem instance: "(loc ?l ?c)" is true iff the location ?l is in city
;; ?c.

(define (domain logistics)
  (:requirements :strips)
  (:predicates

  ;; Static predicates:
  (object ?o) (smallpackage ?sp) (mediumpackage ?mp) (largepackage ?lp)
  (truck ?t) (airplane ?p) (ship ?s) (vehicle ?v)
  (location ?l) (airport ?a) (city ?c) (loc ?l ?c) (bay ?b)

  ;; Non-static predicates:
  (at ?x ?l) ;; ?x (package or vehicle) is at location ?l
  (in ?p ?v) ;; package ?p is in vehicle ?v
  )

  ;; Actions for loading and unloading packages.
  ;; By declaring all trucks and airplanes to be also "vehicle", we
  ;; can use the same load/unload operator for both (otherwise we
  ;; would need one for each subtype of vehicle).
    
  (:action load
  :parameters (?sp ?v ?l)
  :precondition (and (smallpackage ?sp) (vehicle ?v) (location ?l)
    		(at ?v ?l) (at ?sp ?l))
  :effect (and (in ?sp ?v) (not (at ?sp ?l))))

  (:action unload
  :parameters (?sp ?v ?l)
  :precondition (and (smallpackage ?sp) (vehicle ?v) (location ?l)
	       (at ?v ?l) (in ?sp ?v))
  :effect (and (at ?sp ?l) (not (in ?sp ?v))))

  ;; --- Our load and unload actions for different vehicles whom can take different packages. ---

  (:action loadmediumpackage
  :parameters (?mp ?p ?l)
  :precondition (and (mediumpackage ?mp) (airplane ?p) (location ?l)
 	   	(at ?p ?l) (at ?mp ?l))
  :effect (and (in ?mp ?p) (not (at ?mp ?l))))

  (:action unloadmediumpackage
  :parameters (?mp ?p ?l)
  :precondition (and (mediumpackage ?mp) (airplane ?p) (location ?l)
	       (at ?p ?l) (in ?mp ?p))
  :effect (and (at ?mp ?l) (not (in ?mp ?p))))

  (:action loadlargepackage
  :parameters (?lp ?s ?l)
  :precondition (and (largepackage ?lp) (ship ?s) (location ?l)
 	   	(at ?s ?l) (at ?lp ?l))
  :effect (and (in ?lp ?s) (not (at ?lp ?l))))

  (:action unloadlargepackage
  :parameters (?lp ?s ?l)
  :precondition (and (largepackage ?lp) (ship ?s) (location ?l)
	       (at ?s ?l) (in ?lp ?s))
  :effect (and (at ?lp ?l) (not (in ?lp ?s))))

  ;;-------------------------------------------------------------------
  (:action loadtruck
  :parameters (?o ?v ?l)
  :precondition (and (object ?o) (truck ?v) (location ?l)
    		(at ?v ?l) (at ?o ?l))
  :effect (and (in ?o ?v) (not (at ?o ?l))))

  (:action unloadtruck
  :parameters (?o ?v ?l)
  :precondition (and (object ?o) (truck ?v) (location ?l)
	       (at ?v ?l) (in ?o ?v))
  :effect (and (at ?o ?l) (not (in ?o ?v))))


  ;; -------------------------------- end of loads / unloads ------------------------

  ;; Drive a truck between two locations in the same city.
  ;; By declaring all locations, including airports, to be of type
  ;; "location", we can use only one driving operator (otherwise,
  ;; we would again need one for each case, i.e. one for from-location-
  ;; to-airport, one for from-location-to-location, etc. Very
  ;; unnecessay).
  (:action drive
    :parameters (?t ?l1 ?l2 ?c)
    :precondition (and (truck ?t) (location ?l1) (location ?l2) (city ?c)
		       (at ?t ?l1) (loc ?l1 ?c) (loc ?l2 ?c))
    :effect (and (at ?t ?l2) (not (at ?t ?l1)))) 

  ;; Fly an airplane between two airports.
  (:action fly
    :parameters (?p ?a1 ?a2)
    :precondition (and (airplane ?p) (airport ?a1) (airport ?a2)
		       (at ?p ?a1))
    :effect (and (at ?p ?a2) (not (at ?p ?a1))))

  ;; Sail an ship between two bays
  (:action sail
     :parameters (?s ?b1 ?b2)
     :precondition (and (ship ?s) (bay ?b1) (bay ?b2)  
     		   	(at ?s ?b1))
     :effect (and (at ?s ?b2) (not (at ?s ?b1))))	
  )
