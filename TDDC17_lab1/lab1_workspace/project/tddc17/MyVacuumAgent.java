package tddc17;


import aima.core.environment.liuvacuum.*;
import aima.core.agent.Action;
import aima.core.agent.AgentProgram;
import aima.core.agent.Percept;
import aima.core.agent.State;
import aima.core.agent.impl.*;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Random;
import java.util.Stack;

import sun.security.acl.WorldGroupImpl;

class MyAgentState
{
	public int[][] world = new int[30][30];
	public int initialized = 0;
	final int UNKNOWN 	= 0;
	final int WALL 		= 1;
	final int CLEAR 	= 2;
	final int DIRT		= 3;
	final int HOME		= 4;
	final int RETURNDIR = 5;
	final int ACTION_NONE 			= 0;
	final int ACTION_MOVE_FORWARD 	= 1;
	final int ACTION_TURN_RIGHT 	= 2;
	final int ACTION_TURN_LEFT 		= 3;
	final int ACTION_SUCK	 		= 4;
	
	
	public int agent_x_position = 1;
	public int agent_y_position = 1;
	public int agent_last_action = ACTION_NONE;
	
	public static final int NORTH = 0;
	public static final int EAST = 1;
	public static final int SOUTH = 2;
	public static final int WEST = 3;
	public int agent_direction = EAST;
	
	
	//Our variables
	Stack<Integer> dirStack = new Stack<>();
	ArrayList<Integer> dirListHome = new ArrayList<>();
	public boolean hasVisitHome = false;
	final int DONECLEANING = -1;
	
	MyAgentState()
	{
		for (int i=0; i < world.length; i++)
			for (int j=0; j < world[i].length ; j++)
				world[i][j] = UNKNOWN;
		world[1][1] = HOME;
		agent_last_action = ACTION_NONE;
	}
	
	// Based on the last action and the received percept updates the x & y agent position
	public void updatePosition(DynamicPercept p)
	{
		Boolean bump = (Boolean)p.getAttribute("bump");

		if (agent_last_action==ACTION_MOVE_FORWARD && !bump)
	    {
			switch (agent_direction) {
			case MyAgentState.NORTH:
				agent_y_position--;
				break;
			case MyAgentState.EAST:
				agent_x_position++;
				break;
			case MyAgentState.SOUTH:
				agent_y_position++;
				break;
			case MyAgentState.WEST:
				agent_x_position--;
				break;
			}
	    }
		
	}
	
	public void updateWorld(int x_position, int y_position, int info){
		world[x_position][y_position] = info;
	}
	
	public void printWorldDebug()
	{
		for (int i=0; i < world.length; i++)
		{
			for (int j=0; j < world[i].length ; j++)
			{
				if (world[j][i]==UNKNOWN)
					System.out.print(" ? ");
				if (world[j][i]==WALL)
					System.out.print(" # ");
				if (world[j][i]==CLEAR)
					System.out.print(" . ");
				if (world[j][i]==DIRT)
					System.out.print(" D ");
				if (world[j][i]==HOME)
					System.out.print(" H ");
			}
			System.out.println("");
		}
	}
}

class MyAgentProgram implements AgentProgram {

	private int initnialRandomActions = 10;
	private Random random_generator = new Random();
	
	// Here you can define your variables!
	public int iterationCounter = 500;
	public MyAgentState state = new MyAgentState();
	
	// moves the Agent to a random start position
	// uses percepts to update the Agent position - only the position, other percepts are ignored
	// returns a random action
	private Action moveToRandomStartPosition(DynamicPercept percept) {
		int action = random_generator.nextInt(6);
		initnialRandomActions--;
		state.updatePosition(percept);
		if(action==0) {
		    state.agent_direction = ((state.agent_direction-1) % 4);
		    if (state.agent_direction<0) 
		    	state.agent_direction +=4;
		    state.agent_last_action = state.ACTION_TURN_LEFT;
			return LIUVacuumEnvironment.ACTION_TURN_LEFT;
		} else if (action==1) {
			state.agent_direction = ((state.agent_direction+1) % 4);
		    state.agent_last_action = state.ACTION_TURN_RIGHT;
		    return LIUVacuumEnvironment.ACTION_TURN_RIGHT;
		} 
		state.agent_last_action=state.ACTION_MOVE_FORWARD;
		return LIUVacuumEnvironment.ACTION_MOVE_FORWARD;
	}
	
	@Override
	public Action execute(Percept percept) {
		
		//Our variables
		Action actionToExecute;
		int dir;
		
		// DO NOT REMOVE this if condition!!!
    	if (initnialRandomActions>0) {
    		return moveToRandomStartPosition((DynamicPercept) percept);
    	} else if (initnialRandomActions==0) {
    		// process percept for the last step of the initial random actions
    		initnialRandomActions--;
    		state.updatePosition((DynamicPercept) percept);
			System.out.println("Processing percepts after the last execution of moveToRandomStartPosition()");
			state.agent_last_action=state.ACTION_SUCK;
	    	return LIUVacuumEnvironment.ACTION_SUCK;
    	}
    	// This example agent program will update the internal agent state while only moving forward.
    	// START HERE - code below should be modified!
    	    	
    	System.out.println("x=" + state.agent_x_position);
    	System.out.println("y=" + state.agent_y_position);
    	System.out.println("dir=" + state.agent_direction);
    	
		
	    iterationCounter--;
	    
	    if (iterationCounter==0){
	    	return NoOpAction.NO_OP;
	    	
	    }

	    DynamicPercept p = (DynamicPercept) percept;
	    Boolean bump = (Boolean)p.getAttribute("bump");
	    Boolean dirt = (Boolean)p.getAttribute("dirt");
	    Boolean home = (Boolean)p.getAttribute("home");
	    System.out.println("percept: " + p);
	    
	    // State update based on the percept value and the last action
	    state.updatePosition((DynamicPercept)percept);

	    if (bump) {
	    	//remove the current direction from the dirStack if we go in to a wall
	    	if (!state.dirStack.isEmpty()) {
	    		state.dirStack.pop();
	    	}
			switch (state.agent_direction) {
			case MyAgentState.NORTH:
				state.updateWorld(state.agent_x_position,state.agent_y_position-1,state.WALL);
				break;
			case MyAgentState.EAST:
				state.updateWorld(state.agent_x_position+1,state.agent_y_position,state.WALL);
				break;
			case MyAgentState.SOUTH:
				state.updateWorld(state.agent_x_position,state.agent_y_position+1,state.WALL);
				break;
			case MyAgentState.WEST:
				state.updateWorld(state.agent_x_position-1,state.agent_y_position,state.WALL);
				break;
			}
	    }

	    if (dirt)
	    	state.updateWorld(state.agent_x_position,state.agent_y_position,state.DIRT);
	    else
	    	state.updateWorld(state.agent_x_position,state.agent_y_position,state.CLEAR);
	    
	    state.printWorldDebug();
	     
	    // Next action selection based on the percept value
	    if (dirt) {
	    	System.out.println("DIRT -> choosing SUCK action!");
	    	state.agent_last_action=state.ACTION_SUCK;
	    	return LIUVacuumEnvironment.ACTION_SUCK;
	    }
	    // Copy path from the random start position until we visit the home position for the first time 
	    if (state.world[state.agent_x_position][state.agent_y_position] == state.world[1][1] && 
	    		!state.hasVisitHome) {
			state.dirListHome.addAll(state.dirStack);
			state.hasVisitHome = true;
		}
	    
		//this is where the main desicion loop start for the vacuum cleaner
		if(!bump && !isVisitedDirr()) {
			state.dirStack.push(state.agent_direction);
			actionToExecute = forward();
		}
		else if (!isVistitedLeft()) {
			actionToExecute = left();
		}
		else if (!isVistitedRight()) {
			actionToExecute = right();
		}	
		else {
			//In this part of the loop we decide what the vacuum cleaner should do if we reach 
			//a dead end and need to go back and look for a new path.
			dir = getReversedDirr();
			if(dir == state.DONECLEANING){
				return NoOpAction.NO_OP;
			}
			else if (state.agent_direction != dir) {
				actionToExecute = left();
			}
			else {
				//In this part of the loop we use the stack to navigate backwards
				actionToExecute = forward();
				if (!state.dirStack.isEmpty()) {
					state.dirStack.pop();
				}
				else if (!state.dirListHome.isEmpty() && !bump) {
					state.dirListHome.remove(0);
				}
				else {
					actionToExecute = NoOpAction.NO_OP;
				}
			}	
		}
		return actionToExecute;
	}
	
	/*
	 * This function gives us the right direction to move when moving back from a dead end
	 * or if we are done cleaning and should go back to its home position. 
	 */
	private int getReversedDirr() {
		int dir = -1;
		int homeDir = -1;
		if (!state.dirStack.isEmpty()) {
			dir = state.dirStack.peek();
		}
		else if (!state.dirListHome.isEmpty()) {
			homeDir = state.dirListHome.get(0);
		}

		switch(dir) {			
		case MyAgentState.NORTH:
			return state.SOUTH;
		case MyAgentState.EAST:
			return state.WEST;
		case MyAgentState.SOUTH:
			return state.NORTH;
		case MyAgentState.WEST:
			return state.EAST;
		}
		return homeDir;
	}
	
	/*
	 * This function return true if the block in front of the vacuum cleaner is visited else false  
	 */
	private boolean isVisitedDirr(){
		switch (state.agent_direction) {
		case MyAgentState.NORTH:
			return isVisited(state.agent_x_position,state.agent_y_position-1);
		case MyAgentState.EAST:
			return isVisited(state.agent_x_position+1,state.agent_y_position);
		case MyAgentState.SOUTH:
			return isVisited(state.agent_x_position,state.agent_y_position+1);
		case MyAgentState.WEST:
			return isVisited(state.agent_x_position-1,state.agent_y_position);
		}
		return false;
	}
	
	/*
	 * This function return true if the block to the left of the vacuum cleaner is visited else false
	 */
	private boolean isVistitedLeft(){
		switch (state.agent_direction) {
		case MyAgentState.NORTH:
			return isVisited(state.agent_x_position-1,state.agent_y_position);
		case MyAgentState.EAST:
			return isVisited(state.agent_x_position,state.agent_y_position-1);
		case MyAgentState.SOUTH:
			return isVisited(state.agent_x_position+1,state.agent_y_position);
		case MyAgentState.WEST:
			return isVisited(state.agent_x_position,state.agent_y_position+1);
		}
		return false;
	}
	
	/*
	 * This function return true if the block to the right of the vacuum cleaner is visited else false
	 */
	private boolean isVistitedRight(){
		switch (state.agent_direction) {
		case MyAgentState.NORTH:
			return isVisited(state.agent_x_position+1,state.agent_y_position);
		case MyAgentState.EAST:
			return isVisited(state.agent_x_position,state.agent_y_position+1);
		case MyAgentState.SOUTH:
			return isVisited(state.agent_x_position-1,state.agent_y_position);
		case MyAgentState.WEST:
			return isVisited(state.agent_x_position,state.agent_y_position-1);
		}
		return false;
	}
	
	/*
	 * This function look if a block is visited
	 */
	private boolean isVisited(int x, int y) {
		if (state.world[x][y] != state.UNKNOWN && state.world[x][y] != state.HOME) {
			return true;
		}
		else {
			return false;
		}
	}
	
	/*
	 * This function make the vacuum cleaner turn left and update its direction
	 */
	private Action left() {
	    state.agent_direction = ((state.agent_direction-1) % 4);
	    if (state.agent_direction<0) 
	    	state.agent_direction +=4;
	    state.agent_last_action = state.ACTION_TURN_LEFT;
		return LIUVacuumEnvironment.ACTION_TURN_LEFT;
	}
	/*
	 * This function make the vacuum cleaner turn right and update its direction
	 */
	private Action right() {
		state.agent_direction = ((state.agent_direction+1) % 4);
	    state.agent_last_action = state.ACTION_TURN_RIGHT;
	    return LIUVacuumEnvironment.ACTION_TURN_RIGHT;
	}
	/*
	 * This function make the vacuum cleaner go forward one step
	 */
	private Action forward() {
    	state.agent_last_action=state.ACTION_MOVE_FORWARD;
    	return LIUVacuumEnvironment.ACTION_MOVE_FORWARD;
	}
}

public class MyVacuumAgent extends AbstractAgent {
    public MyVacuumAgent() {
    	super(new MyAgentProgram());
	}
}
