# Permet de lier les deux fichiers
require_relative "./app/famille.rb"

puts "Voulez_vous ajouter un membre de votre carnet de famille? (Y/N)"
answer = gets.chomp.upcase

while answer == "Y"
    new_membre = Famille.new()
    puts "Veuillez entrer le nom du nouveau membre:"
    new_membre.name = gets.chomp.capitalize

    puts "Entrer son age:"
    new_membre.age = gets.chomp.to_i

    puts "Quel est son titre dans la famille?"
    new_membre.title = gets.chomp.capitalize

    puts "Veuillez noter son adresse e_mail:"
    new_membre.e_mail = gets.chomp

    puts "Entrer son numero de téléphone:"
    new_membre.téléphone = gets.chomp

    
    new_membre.save

    if answer != "Y"
        break
    end

    puts "Desirer_vous ajouter un autre membre? (Y/N)"
    again = gets.chomp.upcase

    if again != "Y"
        break
    end
end