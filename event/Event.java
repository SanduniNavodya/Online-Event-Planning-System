package com.event;

public class Event {

	private int eventId;
	private String eventName;
	private String category;
	private int avgQuotation;
	private String ratings;
	private String offers;

	public Event(int eventId, String eventName, String category, int avgQuotation, String ratings, String offers) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.category = category;
		this.avgQuotation = avgQuotation;
		this.ratings = ratings;
		this.offers = offers;
	}

	public int getEventId() {
		return eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public String getCategory() {
		return category;
	}

	public int getAvgQuotation() {
		return avgQuotation;
	}

	public String getRatings() {
		return ratings;
	}

	public String getOffers() {
		return offers;
	}

}
