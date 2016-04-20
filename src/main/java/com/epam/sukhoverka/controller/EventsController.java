package com.epam.sukhoverka.controller;

import com.epam.sukhoverka.service.EventsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;


@Controller
public class EventsController {

    private static final Logger logger = LoggerFactory.getLogger(EventsController.class);

    @Autowired
    EventsService eventsService;


    @RequestMapping(value = {"/", "/events"}, method = RequestMethod.GET)
    public String showAllEvents(Model model) {
        logger.info("Welcome to events page!");
        model.addAttribute("allEvents", eventsService.getEvents());
        return "events";
    }

    @RequestMapping(value = {"/events"}, method = RequestMethod.POST)
    public String saveEvent(
            @RequestParam(value="eventTitle", required=false) String eventTitle,
            @RequestParam(value="eventDescription", required=false) String eventDescription,
            @RequestParam(value="startDate", required=false) String startDate,
            Model model
            ) throws ParseException {
        eventsService.saveEvents(eventTitle, eventDescription,startDate);
        return showAllEvents(model);

    }

}
