module Instructions
  class Recipe

    def self.learn
      puts "_Recipe_"
      recipe      = gets.chomp

      open("_input/cooking/recipe.txt", "w") { |f|
        f.puts recipe
      }
    end

    def self.instruct
      recipe      = File.readlines("_input/cooking/recipe.txt")

      total_length = recipe.size.to_i
      interval     = 0

      total_length.times do
        puts recipe[interval]

        sleep(0.5)
        
        interval = interval + 1
      end

      puts "Recipe is complete!"
    end

  end
end
