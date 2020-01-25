# Build Rails App that provides search API to Mobile client.
> SRS
- Rails app Stores data of Authors, Books, and Reviews.
- Authors model consists of Name, Author Bio (Long 50-100 lines), Profile Pic, Academics(Text), Awards(text).
- Books model consists of Name of Book, Short Description, Long Description, Books Chapter Index, Date of Publication, Genre(Multiple).
- Review Model consists of Name of Reviewer, Star rating(Out of 5), Review title, Review Description(Text).
- Reviews are written for Books.
- Use the faker gem to populate each of these models. Authors with 100 Records. Books with 500 Records. Reviews model with 250 records.
- For Genre - Populate from the list ( Science fiction.Satire.Drama.Action and Adventure.Romance.Mystery.Horror.Self help. Fantasy)
- Write an API endpoint that can accept text such as “fantasy books” or “Mark Angelo” and returns the JSON results from all three models that match with text.
- The API needs to be authenticated using token-based authentication. You could use JWT based authentication.
- Use Postgresql for Database.
