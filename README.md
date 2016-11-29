# README

This IVR application is developed using Ruby on Rails. VoiceXML tags are used to traverse the call through the page. 

This is simple event registration application you can make test call @ 720-334-8902.

Aspect prophecy voice platform is used to run this application. This application is using MVC.

EventsController:
class EventsController < ApplicationController
	def index
		@events = Event.all
	end
	def show
		@event = Event.find(params[:id])
	end
end

Ruby embedded voiceXML tags are used as follows:

<form id="suc">
	<field name="e2">
		<prompt>
			Thank you! you have registered for the event. 
			If you like to register for another event press 1 if not press 2.
		</prompt>
		<option dtmf="1" value="yes"/>
		<option dtmf="2" value="no"/>
		<filled>
			<if cond="e2=='yes'">
				<submit next="<%= root_path %>"/>
			<elseif cond="e2=='no'"/>
				<disconnect/>
			</if>
		</filled>
		<noinput>
			<reprompt/>
		</noinput>
		<nomatch>
			<reprompt/>
		</nomatch>
	</field>
</form>

