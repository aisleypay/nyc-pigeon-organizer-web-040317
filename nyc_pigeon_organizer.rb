require "pry"
def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  # populate new list with names adn gender attribute
  data.each { |attribute_category, attributes|
    if attribute_category == :gender
      attributes.each { |gender, birds|

        birds.each_with_index {|bird_name, index|
          new_pigeon_list[bird_name] = {attribute_category => [gender.to_s]}
        }
      }
    end
  }
# populate color and lives attributes
  data.each { |attribute_category, attributes|

    if attribute_category != :gender
      attributes.each { |attribute, birds|

        birds.each_with_index {|bird_name, index|
          if new_pigeon_list[bird_name][attribute_category] == nil
            new_pigeon_list[bird_name][attribute_category] = [attribute.to_s]
          else
            new_pigeon_list[bird_name][attribute_category] << attribute.to_s
          end
        }
      }
    end
  }

  new_pigeon_list
end
