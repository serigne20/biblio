#{{{ Marathon
require_fixture 'default'
#}}} Marathon

description("Verifie si l'app ouvre un fichier XML")
severity("normal")

def test

    with_window("Bibliotheque") {
        select_fx_menu("#menu", "Edit>>Open File")
        select_file_chooser("#filechooser", "[\"#H/IdeaProjects/biblio/Biblio.xml\"]")
    }

end
