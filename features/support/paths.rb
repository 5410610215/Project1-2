#Parispan Pansiri    5410610215
#Phudis   Saweangsuk 5410610793
module NavigationHelpers

  def path_to(page_name)
    case page_name
    when /^unsolveds page$/
      unsolveds_path
   when /^Add problem page$/
      new_unsolved_path
   when /^the completed Add page for "(.*)"$/i
      unsolveds_path(Unsolved.find_by_topic($1))


    when /^the RottenPotatoes home\s?page$/
      movies_path
    when /^the details page for "(.*)"$/i
      movie_path(Movie.find_by_title($1))
    when /^the edit page for "(.*)"$/i
      edit_movie_url(Movie.find_by_title($1))
    when /^the Similar Movies page for "(.*)"$/i
      movie = Movie.find_by_title($1)
      similar_movies_path

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
