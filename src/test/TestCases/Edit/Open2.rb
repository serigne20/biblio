#{{{ Marathon
require_fixture 'default'
#}}} Marathon

description("Verifi si l'application ouvre un 2e fichier et ecrase les données du premier")
severity("normal")

def test

    with_window("Bibliotheque") {
        select_fx_menu("#menu", "Edit>>Open File")
        select_file_chooser("#filechooser", "[\"#H/IdeaProjects/biblio/Biblio.xml\"]")
        select_fx_menu("#menu", "Edit>>Open File")
        select_file_chooser("#filechooser", "[\"#H/IdeaProjects/biblio/Test Etat.XML\"]")
    }

end
