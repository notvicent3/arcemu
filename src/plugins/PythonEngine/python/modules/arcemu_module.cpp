/*
 * ArcEmu MMORPG Server
 * Copyright (C) 2008-2022 <http://www.ArcEmu.org/>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include "StdAfx.h"

#include <Python.h>
#include "serverhooks/ServerHookRegistry.hpp"
#include "engine/FunctionRegistry.hpp"


/// These are all in their own files
extern void registerArcemuConstants( PyObject *module );
extern int registerArcPyAura( PyObject *module );
extern int registerArcPyCreature( PyObject *module );
extern int registerArcPyGameObject( PyObject *module );
extern int registerArcPyGossipMenu( PyObject *module );
extern int registerArcPyGuild( PyObject *module );
extern int registerArcPyItem( PyObject *module );
extern int registerArcPyUnit( PyObject *module );
extern int registerArcPyPlayer( PyObject *module );
extern int registerArcPyQuest( PyObject *module );
extern int registerArcPySpell( PyObject *module );
extern int registerArcPyWorldSession( PyObject *module );


/// RegisterServerHook
///   Registers a server event handler
///
/// Parameters:
///   eventType  -  The server event we're registering handler for
///   function   -  The Python function's name that will handle the event
///
/// Example:
///  RegisterServerHook( arcemu.SERVER_HOOK_EVENT_ON_PRE_DIE, onPreDie )
///
static PyObject* arcemu_RegisterServerHook( PyObject *self, PyObject *args )
{
	unsigned long serverEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IO", &serverEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Second argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	ServerHookRegistry::addHook( serverEvent, callback );
	
	//sLog.Debug( "APE", "Registered handler for server hook event %u", serverEvent );

	Py_RETURN_NONE;
}


/// RegisterUnitGossipEvent
///   Registers a Unit (Creature) gossip event handler
///
/// Parameters:
///   goId         - The numerical identifier of the Unit (Creature)
///   eventType    - The type of the gossip event handler we're registering
///   function     - The Python function's name that will handle this event
///
/// Example:
///   RegisterUnitGossipEvent( 31111, arcemu.GOSSIP_EVENT_SELECT, mohawk_onSelectOption )
///
static PyObject* arcemu_RegisterUnitGossipEvent( PyObject *self, PyObject *args )
{
	unsigned long creatureId = 0;
	unsigned long gossipEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IIO", &creatureId, &gossipEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerCreatureGossipFunction( creatureId, gossipEvent, callback );

	Py_RETURN_NONE;
}


/// RegisterItemGossipEvent
///   Registers an Item gossip event handler
///
/// Parameters:
///   goId         - The numerical identifier of the item
///   eventType    - The type of the gossip event handler we're registering
///   function     - The Python function's name that will handle this event
///
/// Example:
///   RegisterItemGossipEvent( 8051, arcemu.GOSSIP_EVENT_HELLO, item_onHello )
///
static PyObject* arcemu_RegisterItemGossipEvent( PyObject *self, PyObject *args )
{
	unsigned long itemId = 0;
	unsigned long gossipEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IIO", &itemId, &gossipEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerItemGossipFunction( itemId, gossipEvent, callback );

	Py_RETURN_NONE;
}

/// RegisterGOGossipEvent
///   Registers a GameObject gossip event handler
///
/// Parameters:
///   goId         - The numerical identifier of the gameobject
///   eventType    - The type of the gossip event handler we're registering
///   function     - The Python function's name that will handle this event
///
/// Example:
///   RegisterGOGossipEvent( 202242, arcemu.GOSSIP_EVENT_SELECT, go_onSelectOption )
///
static PyObject* arcemu_RegisterGOGossipEvent( PyObject *self, PyObject *args )
{
	unsigned long goId = 0;
	unsigned long gossipEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IIO", &goId, &gossipEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerGOGossipFunction( goId, gossipEvent, callback );

	Py_RETURN_NONE;
}


/// RegisterGameObjectEvent
///   Registers a GameObject event handler
///
/// Parameters:
///   goId         - The numerical identifier of the gameobject
///   eventType    - The type of the event handler we're registering
///   function     - The Python function's name that will handle this event
///
/// Example:
///   RegisterGameObjectEvent( 190375, arcemu.GO_EVENT_ON_DAMAGED, fortressDoor_onDamaged )
///
static PyObject* arcemu_RegisterGameObjectEvent( PyObject *self, PyObject *args )
{
	unsigned long goId = 0;
	unsigned long goEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IIO", &goId, &goEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerGOEventFunction( goId, goEvent, callback );

	Py_RETURN_NONE;
}


/// RegisterUnitEvent
///   Registers a Unit (Creature) event handler
///
/// Parameters:
///   creatureId   - The numerical identifier of the creature
///   eventType    - The type of the event handler we're registering
///   function     - The Python function's name that will handle this event
///
/// Example:
///   RegisterUnitEvent( 113, arcemu.CREATURE_EVENT_ON_CALL_FOR_HELP, npc_onCallForHelp )
///
static PyObject* arcemu_RegisterUnitEvent( PyObject *self, PyObject *args )
{
	unsigned long creatureId = 0;
	unsigned long creatureEvent = 0;
	PyObject *callback = NULL;

	if( !PyArg_ParseTuple( args, "IIO", &creatureId, &creatureEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerCreatureEventFunction( creatureId, creatureEvent, callback );

	Py_RETURN_NONE;
}

/// RegisterQuestEvent function.
///   Registers a Quest event handler
///
/// Parameters:
///   questId   - The numerical identifier of the quest
///   eventType - The type of the event handler we're registering
///   function  - The Python function's name that will handle this event
///
/// Example:
///  RegisterQuestEvent( 7, arcemu.QUEST_EVENT_ON_CREATURE_KILL, quest_onCreatureKill )
///
static PyObject* arcemu_RegisterQuestEvent( PyObject *self, PyObject *args )
{
	unsigned long questId = 0;
	unsigned long questEvent = 0;
	PyObject *callback = NULL;


	if( !PyArg_ParseTuple( args, "IIO", &questId, &questEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerQuestEventFunction( questId, questEvent, callback );

	Py_RETURN_NONE;
}

/// RegisterInstanceEvent
///   Registers an Instance event handler
///
/// Parameters:
///   mapId     - The numerical identifier of the map
///   eventType - The type of the event handler we're registering
///   function  - The Python function's name that will handle this event
///
/// Example:
///   RegisterInstanceEvent( 34, arcemu.INSTANCE_EVENT_ON_GO_ACTIVATE, instance_onGOActivated ) 
///
static PyObject* arcemu_RegisterInstanceEvent( PyObject *self, PyObject *args )
{
	unsigned long mapId = 0;
	unsigned long instanceEvent = 0;
	PyObject *callback = NULL;


	if( !PyArg_ParseTuple( args, "IIO", &mapId, &instanceEvent, &callback ) )
	{
		return NULL;
	}

	if( strcmp( Py_TYPE( callback )->tp_name, "function" ) != 0 )
	{
		PyErr_SetString( PyExc_TypeError, "Third argument should be a function!" );
		return NULL;
	}

	Py_IncRef( callback );
	FunctionRegistry::registerInstanceEventFunction( mapId, instanceEvent, callback );

	Py_RETURN_NONE;
}

/// This is where we assign the Arcemu Python module's function names to functions, and properties
static PyMethodDef ArcemuMethods[] = {
	{ "RegisterServerHook", arcemu_RegisterServerHook, METH_VARARGS, "Registers a server hook function" },
	{ "RegisterUnitGossipEvent", arcemu_RegisterUnitGossipEvent, METH_VARARGS, "Registers a Unit gossip event" },
	{ "RegisterItemGossipEvent", arcemu_RegisterItemGossipEvent, METH_VARARGS, "Registers an Item gossip event" },
	{ "RegisterGOGossipEvent", arcemu_RegisterGOGossipEvent, METH_VARARGS, "Registers a GO gossip event" },
	{ "RegisterGameObjectEvent", arcemu_RegisterGameObjectEvent, METH_VARARGS, "Registers a GameObject event" },
	{ "RegisterUnitEvent", arcemu_RegisterUnitEvent, METH_VARARGS, "Registers a Unit event" },
	{ "RegisterQuestEvent", arcemu_RegisterQuestEvent, METH_VARARGS, "Registers a Quest event" },
	{ "RegisterInstanceEvent", arcemu_RegisterInstanceEvent, METH_VARARGS, "Registers an Instance script event" },
	{NULL, NULL, 0, NULL }
};

static PyModuleDef ArcemuModule = {
	PyModuleDef_HEAD_INIT, "arcemu", NULL, -1, ArcemuMethods,
	NULL, NULL, NULL, NULL
};

/// Initializes the Arcemu Python module
PyObject* PyInit_Arcemu(void)
{
	PyObject *module = PyModule_Create(&ArcemuModule);

	/// Register Arcemu constants in Python
	registerArcemuConstants( module );

	/// Register Arcemu objects in Python
	registerArcPyAura( module );
	registerArcPyCreature( module );
	registerArcPyGameObject( module );
	registerArcPyGossipMenu( module );
	registerArcPyGuild( module );
	registerArcPyItem( module );
	registerArcPyUnit( module );
	registerArcPyPlayer( module );
	registerArcPyQuest( module );
	registerArcPySpell( module );
	registerArcPyWorldSession( module );

	return module;
}
