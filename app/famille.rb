# Pour lier les deux fichiers
require "json"

class Famille
attr_accessor :name, :age, :title, :e_mail, :téléphone

# le paramètre *args permet de mettre dans un array
    def initialize(*args)
      @name = args[0]
      @age = args [1]
      @title = args [2]
      @e_mail = args [3]
      @téléphone = args [4]
    end

    def save()
        info = {
            name: @name,
            age: @age,
            title: @title,
            e_mail: @e_mail,
            téléphone: @téléphone
        }.to_json
        # a veut dire append, ellle permet d'écrire sur notre fichier. Si le fichier Livret.Json n'existe pas elle sera creer automatiquement.
        open("Livret.json", "a") do |fichiers|
            fichiers.puts info
        end
    end
end

