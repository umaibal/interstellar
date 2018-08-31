atom_feed do |feed|
    feed.title("Available flights")
    feed.updated(@flights[0].created_at) if @flights.length > 0

    @flights.each do |flight|
        feed.entry(flight) do |entry|
            entry.title(flight.title)
            entry.content(flight.body, type: 'html')
            end
        end
    end
end