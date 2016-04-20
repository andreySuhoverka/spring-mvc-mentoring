package com.epam.sukhoverka.dao;

import com.epam.sukhoverka.model.Event;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class EventsMockDao {

    private List<Event> allEvents;

    public EventsMockDao() {
        allEvents = new ArrayList<Event>();
    }

    public List<Event> getEvents() {
        return allEvents;
    }

    public void saveEvent(Event event) {
        allEvents.add(event);
    }
}
