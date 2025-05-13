-- Artist indexes
CREATE INDEX idx_artist_participations ON Artist(participations); -- q05/q11
CREATE INDEX idx_artist_birthDate ON Artist(birthDate); -- q05

-- Performer indexes
CREATE INDEX idx_performer_name  ON Performer(performer_name); -- used in q04 for optimization

-- Performance indexes
CREATE INDEX idx_performance_start_end_time ON Performance(start_time, end_time); -- used in triggers

-- Ticket indexes
CREATE INDEX idx_ticket_purchase_date ON Ticket(purchase_date); -- q01
CREATE INDEX idx_ticket_opt ON Ticket(visitor_id, activated, event_id); -- q06 optimization
