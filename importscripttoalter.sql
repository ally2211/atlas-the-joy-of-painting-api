ALTER TABLE subjectmatter
ADD CONSTRAINT fk_subject_id FOREIGN KEY (IDRow) REFERENCES "colorsused"(IDRow);

ALTER TABLE episodedates
ADD CONSTRAINT fk_episode_id FOREIGN KEY (IDRow) REFERENCES "colorsused"(IDRow);