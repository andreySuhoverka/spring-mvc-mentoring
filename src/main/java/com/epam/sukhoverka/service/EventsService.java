package com.epam.sukhoverka.service;

import com.epam.sukhoverka.dao.EventsMockDao;
import com.epam.sukhoverka.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class EventsService {

    @Autowired
    private EventsMockDao eventsMockDao;

    public List<Event> getEvents() {
        return eventsMockDao.getEvents();
    }

    public void saveEvents(String eventTitle, String eventDescription, String startDate) throws ParseException {
        Event event = new Event(eventTitle, eventDescription);
        SimpleDateFormat df = new SimpleDateFormat("dd.mm.yyyy hh:mm");
        Date date = df.parse(startDate);
        event.setStartDate(date);
        eventsMockDao.saveEvent(event);
    }
}
